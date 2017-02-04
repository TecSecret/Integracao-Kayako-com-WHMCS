<link rel="stylesheet" type="text/css" href="{$_jscssURL}/css/kayako.css"/>
<script type="text/javascript" src="{$_jscssURL}/js/kayako.js"></script>

<div class="boxcontainer">
	<div class="boxcontainerlabel">{$LANG.integrakayakoyourequestreceiver}</div>

	<div class="boxcontainercontent">
		{$LANG.integrakayakoyourequestreceiver2}<br><br>
		<table class="hlineheader">
			<tbody>
			<tr>
				<th nowrap="" rowspan="2">{$LANG.integrakayakogeneralinfo}</th>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="hlinelower">&nbsp;</td>
			</tr>
			</tbody>
		</table>
		<table width="100%" cellspacing="1" cellpadding="4" border="0">
			<tbody>
			<tr>
				<td width="125" valign="middle" align="left" class="zebraodd">{$LANG.integrakayakoticketid}</td>
				<td>#{$_ticketDisplayID}</td>
			</tr>
			<tr>
				<td valign="middle" align="left" class="zebraodd">{$LANG.integrakayakofullname2}</td>
				<td>{$clientsdetails.firstname} {$clientsdetails.lastname}</td>
			</tr>
			<tr>
				<td valign="middle" align="left" class="zebraodd">{$LANG.integrakayakoemail2}</td>
				<td>{$clientsdetails.email}</td>
			</tr>


			</tbody>
		</table>
		<br>

		<table class="hlineheader">
			<tbody>
			<tr>
				<th nowrap="" rowspan="2">{$LANG.integrakayakosubject} {$_ticketSubject}</th>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="hlinelower">&nbsp;</td>
			</tr>
			</tbody>
		</table>
		<table width="100%" cellspacing="1" cellpadding="4" border="0">
			<tbody>
			<tr>
				<td valign="top" align="left">{$_ticketMessage}</td>
			</tr>
			</tbody>
		</table>
		<br>
	</div>
</div>