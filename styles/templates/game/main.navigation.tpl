<div id="leftmenu">
	<div id="menu">
		<div class="menu-head"><a href="game.php?page=Bugtrack">{$LNG.lm_changelog}</a></div>
		<table>
		<tr><td class="transparent">
		<div><div id="alarm"></div><div onclick="menusel(this,'menut1');" id="menut1p"  class="mright"><img src="{$dpath}img/globe.svg?v=2" alt=""></div><div onclick="menusel(this,'menut2');"  id="menut2p" class="mright"><img src="{$dpath}img/com.svg" alt=""></div><div onclick="menusel(this,'menut3');"  id="menut3p" class="mright"><img src="{$dpath}img/set.svg" alt=""></div></div>
		</td></tr>
		
		<tr id="menut1" style="display:none;"><td>
		<div class="menucat1-head"></div>
		<div><a href="game.php?page=overview">{$LNG.lm_overview}</a></div>
		{if isModuleAvailable($smarty.const.MODULE_IMPERIUM)}<div><a href="game.php?page=imperium">{$LNG.lm_empire}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_RESEARCH)}<div><a href="game.php?page=research">{$LNG.lm_research}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_BUILDING)}<div><a href="game.php?page=buildings">{$LNG.lm_buildings}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_SHIPYARD_FLEET)}<div><a href="game.php?page=shipyard&amp;mode=fleet">{$LNG.lm_shipshard}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_SHIPYARD_DEFENSIVE)}<div><a href="game.php?page=shipyard&amp;mode=defense">{$LNG.lm_defenses}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_OFFICIER) || isModuleAvailable($smarty.const.MODULE_DMEXTRAS)}<div><a href="game.php?page=officier">{$LNG.lm_officiers}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_TRADER)}<div><a href="game.php?page=trader">{$LNG.lm_trader}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_FLEET_TRADER)}<div><a href="game.php?page=fleetDealer">{$LNG.lm_fleettrader}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_TRADER)}<div><a href="game.php?page=fleetTable">{$LNG.lm_fleet}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_TECHTREE)}<div><a href="game.php?page=techtree">{$LNG.lm_technology}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_RESSOURCE_LIST)}<div><a href="game.php?page=resources">{$LNG.lm_resources}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_GALAXY)}<div><a href="game.php?page=galaxy">{$LNG.lm_galaxy}</a></div>{/if}
				{if isModuleAvailable($smarty.const.MODULE_MESSAGES)}<div><a href="game.php?page=messages">{$LNG.lm_messages}{nocache}{if $new_message > 0}<span id="newmes"> (<span id="newmesnum">{$new_message}</span>)</span>{/if}{/nocache}</a></div>{/if}
		</td></tr>
		
		<tr style="display:none;" id="menut2"><td>
		<div class="menucat2-head"></div>
		
		{if isModuleAvailable($smarty.const.MODULE_ALLIANCE)}<div><a href="game.php?page=alliance&menu=2">{$LNG.lm_alliance}</a></div>{/if}
        {if !empty($hasBoard)}<div><a href="game.php?page=board&menu=2" target="forum">{$LNG.lm_forums}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_STATISTICS)}<div><a href="game.php?page=statistics&menu=2">{$LNG.lm_statistics}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_RECORDS)}<div><a href="game.php?page=records&menu=2">{$LNG.lm_records}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_BATTLEHALL)}<div><a href="game.php?page=battleHall&menu=2">{$LNG.lm_topkb}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_SEARCH)}<div><a href="game.php?page=search&menu=2">{$LNG.lm_search}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_CHAT)}<div><a href="game.php?page=chat&menu=2">{$LNG.lm_chat}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_SUPPORT)}<div><a href="game.php?page=ticket&menu=2">{$LNG.lm_support}</a></div>{/if}
		<div><a href="game.php?page=questions&menu=2">{$LNG.lm_faq}</a></div>
		{if isModuleAvailable($smarty.const.MODULE_BANLIST)}<div><a href="game.php?page=banList&menu=2">{$LNG.lm_banned}</a></div>{/if}
		<div><a href="index.php?page=rules&menu=2" target="rules">{$LNG.lm_rules}</a></div>
		{if isModuleAvailable($smarty.const.MODULE_SIMULATOR)}<div><a href="game.php?page=battleSimulator&menu=2">{$LNG.lm_battlesim}</a></div>{/if}
		</td></tr>
		
		<tr style="display:none;" id="menut3"><td>
		<div class="menucat3-head"></div>
		

		{if isModuleAvailable($smarty.const.MODULE_NOTICE)}<div><a href="javascript:OpenPopup('?page=notes', 'notes', 720, 300);">{$LNG.lm_notes}</a></div>{/if}
		{if isModuleAvailable($smarty.const.MODULE_BUDDYLIST)}<div><a href="game.php?page=buddyList&menu=3">{$LNG.lm_buddylist}</a></div>{/if}
		
		<div><a href="game.php?page=settings&menu=3">{$LNG.lm_options}</a></div>
		<div><a href="game.php?page=logout&menu=3">{$LNG.lm_logout}</a></div>
		{if $authlevel > 0}<div><a href="./admin.php" style="color:lime">{$LNG.lm_administration} ({$VERSION})</a></div>{/if}
		</td></tr></table>
		<div class="menu-footer"></div>
	</div>
	<div id="disclamer"><a href="index.php?page=disclamer" target="_blank">{$LNG.lm_disclamer}</a></div>
</div>
<script>
{nocache}
{if isset($smarty.get.menu)}
var menulast = 'menut' + {$smarty.get.menu};
var obutt = document.getElementById('menut' + {$smarty.get.menu} + 'p');
{else}
var menulast = 'menut1';
var obutt = document.getElementById('menut1p');
{/if} 
{/nocache}
menusel(obutt,menulast);
attacken();
setInterval(attacken, 10000);
</script>