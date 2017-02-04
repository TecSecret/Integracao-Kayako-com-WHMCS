<link rel="stylesheet" type="text/css" href="{$_jscssURL}/css/kayako.css" />
<script type="text/javascript" src="{$_jscssURL}/js/kayako.js"></script>

<div class="boxcontainer">
	<div class="boxcontainerlabel">{if $_settings.nw_enablerss == '1'}<div style="float: right;"><a href="{$_swiftPath}>rss/index.php?/News/Feed/Index/{$_newsCategoryID}>" title="RSS Feed" target="_blank"><img src="{$_themePath}>images/icon_rss.png" align="absmiddle" alt="{$_language.rssfeed}" border="0" /></a></div>{/if}{$LANG.integrakayakoannouncements}</div>

	<div class="boxcontainercontent">
		<table cellpadding="0" cellspacing="0" border="0">
		{foreach key=newsitemid item=_newsItem from=$_newsContainer}
			{if $_newsItem.expiry==0 or $_newsItem.expiry>=($smarty.now)}
			<tr>
				<td width="60" align="left" valign="top">
					<div class="datecontainerparent">
					<div class="monthholder"><div class="monthsub">{$_newsItem.parsedmonth}</div></div>
					<div class="dateholder"><div class="datecontainer">{$_newsItem.parseddate}</div></div>
					</div>
				</td>

				<td width="100%" valign="top">
					{$_baseName}
					<div class="newsavatar"><img src="{$_baseName}>{$_templateGroupPrefix}>/Base/StaffProfile/DisplayAvatar/{$_newsItem.staffid}/{$_newsItem.emailhash}/60" align="absmiddle" border="0" /></div>
					<div class="newstitle"><a class="newstitlelink" href="{$_baseURL}announcements.php?itemid={$_newsItem.id}" title="{$_newsItem.subject}">{$_newsItem.subject}</a>
					<div class="newsinfo">{$LANG.integrakayakopostedby} {$_newsItem.author} {$LANG.integrakayakoon} {$_newsItem.date}</div>
				</td>
			</tr>
			<tr><td colspan="2" class="newscontents">
				{$_newsItem.contents}
				<br />
				<a class="newsreadmorelink" href="{$_baseURL}announcements.php?itemid={$_newsItem.id}" title="{$_newsItem.subject}">{$LANG.integrakayakoreadmore} &raquo;</a>
			</td></tr>
			<tr>
			<td colspan="2"><hr class="newshr" /><br /><br /></td>
			</tr>
			{/if}
		{/foreach}
		</table>
		{if $_newsCount > 0}
		<br />
		<div class="newsfooter">
		{if $_showOlderPosts == true}<a class="newsreadmorelink" href="{$_baseURL}announcements.php?offset={$_olderOffset}">&laquo; {$LANG.integrakayakoolderposts}</a>{/if}
		{if $_showNewerPosts == true}&nbsp;&nbsp;&nbsp;<a class="newsreadmorelink" href="{$_baseURL}announcements.php?offset={$_newerOffset}">{$LANG.integrakayakonewer} &raquo;</a>{/if}
		</div>
		{/if}
		{if $_newsCount == 0}
		<div class="infotextcontainer">
		{$LANG.integrakayakonoinformation}
		</div>
		{/if}
	</div>
</div>