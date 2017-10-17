<div id="page" style="margin: 0 200px;">

		<!-- planetselect start -->
<div id="mobil">
	<div style="width:100%; height:60px; ">
	<script>document.head.innerHTML += '<meta name="viewport"  content="width=582,   user-scalable = no">';</script>
		
		<div id="mmenu" press="up" onmousedown="mmenu(this, 1); requestFullScreen();">
			<div>
			</div>
			
		</div>
		<div style="border-radius:15px; margin-top:5px; border: 1px solid #666; overflow:hidden; float:left;">   	
			<img style="height:50px; width:50px;" src="{$dpath}planeten/small/s_{$image}.jpg" alt="">
			<select id="planetSelector">
				{foreach from=$PlanetSelect key=key item=Planet}
					<option {if $current_pid == $key}selected{/if} value="{$key}">
						{$Planet.name}
					</option>
				{/foreach}
			</select>
		</div>
		<div id="mobmenu">
			<div onclick="mmenu(this); menusel(this,'menut3');"  id="menut3m" class="mright">
				<img src="{$dpath}img/set.svg" alt="">
			</div>
			<div onclick="mmenu(this); menusel(this,'menut2');"  id="menut2m" class="mright">
				<img src="{$dpath}img/com.svg" alt="">
			</div>
			<div onclick="mmenu(this); menusel(this,'menut1');" id="menut1m"  class="mright">
			<img src="{$dpath}img/globe.svg?v=2" alt="">
			</div>
		</div>
						
	</div>
</div>
<div id="header">
		<!-- ressbar -->			
	<div id="headerTable">
		{foreach $resourceTable as $resourceID => $resourceData}

			{if isset($resourceData.current) && isset($resourceData.max)}
			<!-- 	ressbar metal deut cryst foreach start-->
				<div class="resbar1 tooltip" data-tooltip-content=' 
				<div style="display:inline-block; text-align:right; {if $resourceData.max <= $resourceData.current} color:red;">	MAX! <br>{else}color:green;">{/if}					
				<span class="res_max" id="max_{$resourceData.name}" data-real="{$resourceData.current}">
				{if $shortlyNumber} {shortly_number($resourceData.max)}{else} {$resourceData.max|number}{/if} 
				</span><br>
				<span >
				{if $shortlyNumber} {shortly_number(($resourceData.max - $resourceData.current))}{else} {($resourceData.max - $resourceData.current)|number}{/if} 
				</span><br>
				<span>
				{if $shortlyNumber} {shortly_number($resourceData.production)}{else} {$resourceData.production|number}{/if} 
				</span><br>					
				<span class="countdown" data-time="{if $resourceData.production > 0}{(floor(($resourceData.max - $resourceData.current) / ($resourceData.production / 3600)))}{else}0{/if}">
				0
				</span>
				</div>
				<div style="display:inline-block; text-align:left;">
				max<br>
				free<br>
				{$resourceData.name}/h<br>
				@max</div>
				'>
					<div class="resbar2" style="width:{if $resourceData.max > 0 && $resourceData.current > 0}{(($resourceData.current/$resourceData.max)*100)|ceil}{else}100{/if}%; background:rgba({if $resourceData.max > 0}{(($resourceData.current/$resourceData.max)*200)|ceil},{(200 - (($resourceData.current/$resourceData.max)*200))}{else}200,0{/if},0,0.4); ">
						<span class="rbpercent">
							{if $resourceData.max > 0}{(($resourceData.current/$resourceData.max)*100)|ceil}{else}100{/if}%
						</span>
						<div class="ressbarc res_current" id="current_{$resourceData.name}" data-real="{$resourceData.current}">
							{if $shortlyNumber} {shortly_number($resourceData.current)}{else} {$resourceData.current|number}{/if} 
						</div>
					</div>
				</div>
				<div class="rbimgdiv">
					<img width="30" height="25" src="{$dpath}images/{$resourceData.name}.gif" alt="{$LNG.tech.$resourceID}">
				</div>
				<!--ressbar metal deut cryst end
					resbar2 energy start-->		
			{elseif !isset($resourceData.current)}
			{$resourceData.current = $resourceData.max + $resourceData.used}
				<div class="resbar1 tooltip" style="background:rgba(0,200,0,0.4);" data-tooltip-content=' 
				<div style=" display:inline-block; text-align:right; {if $resourceData.max <= $resourceData.current} color:red;">	MAX! <br>{else}color:green;">{/if}
				<span >
				{if $shortlyNumber} {shortly_number($resourceData.max)}{else} {$resourceData.max|number}{/if} 
				</span>
				<br>
				<span style="border-bottom:1px solid #666; color:red;">
				{if $shortlyNumber} {shortly_number($resourceData.used)}{else} {$resourceData.used|number}{/if} 
				</span><br>
				<span class="res_max" id="max_{$resourceData.name}" data-real="{$resourceData.current}">
				{if $shortlyNumber} {shortly_number($resourceData.current)}{else} {$resourceData.current|number}{/if}
				</span>
				</div>
				<div style="display:inline-block; text-align:left;">
				max {$resourceData.name}<br>
				used {$resourceData.name}<br>
				free {$resourceData.name}
				</div>
				'>
					<div class="resbar2" style=" width:{if $resourceData.max > 0 && - $resourceData.used > 0}{((- $resourceData.used/$resourceData.max)*100)|ceil}{else}100{/if}%; background:rgba(200,0,0.4); ">
						<span class="rbpercent">
							{if $resourceData.max > 0}{((-$resourceData.used/$resourceData.max)*100)|ceil|number}{else}0{/if}%
						</span>
						<div class="ressbarc">
						{if $shortlyNumber} {shortly_number($resourceData.current)}{else} {$resourceData.current|number}{/if}
						</div>
					</div>
				</div>
				<div class="rbimgdiv"  style="width:25px;">
					<img style="width:30px;" height="25" src="{$dpath}images/{$resourceData.name}.gif" alt="{$LNG.tech.$resourceID}">
				</div>
				<!-- 	ressbar energy end
					darkmatter  start-->	
			{else}
								
			{/if}	
			<!-- 	darkmatter end 
					ressbar end -->
	{/foreach}
	</div>
</div>
<div class="mpbox">
<!-- planetselect planet activ start -->
	<div id="pbox" onmouseout="dorpit(this)" onmouseover="this.style.height='unset'">
		<div class="pbox2">
			<div class="pbox3" style="background:url('{$dpath}planeten/small/s_{$image}.jpg');">
	
			</div>
			<div class="pboxtext">
				{$PlanetSelect[$current_pid]['name']}<br>
				{if $PlanetSelect[$current_pid]['build'] !== '0'}{$LNG.tech[$PlanetSelect[$current_pid]['buildi'][0][0]]}<br>({$LNG.bd_lvl} {$PlanetSelect[$current_pid]['buildi'][0][1]})<br>
				<span class="countdown" data-time="{$PlanetSelect[$current_pid]['build'] - $smarty.now}">0</span>{else}{$LNG.ov_free}{/if}
			</div>
		</div>
		<!-- planetselect planet activ end 
			 planet list start -->
		{foreach name=lol from=$PlanetSelect key=key item=Planet}
		{if $current_pid != $key}
			<div onclick="location.href = 'game.php?page={if isset($smarty.get.page)}{$smarty.get.page}{else}overview{/if}&cp={$key}{if isset($smarty.get.menu)}&menu={$smarty.get.menu}{/if}'"  class="pbox" style="{if ! $smarty.foreach.lol.last}border-bottom:1px solid #000;{/if} ">
				<div class="pboxpic" style="background-image:url('{$dpath}planeten/small/s_{$Planet.pic}.jpg');">
				</div>
				<div class="pboxname">{$Planet.name}
				<br>
				{if $Planet.build !== '0'}{$LNG.tech[$Planet['buildi'][0][0]]}
				<br>
				({$LNG.bd_lvl} {$Planet['buildi'][0][1]})
				<br>
				<span class="countdown" data-time="{$Planet.build - $smarty.now}">0</span>{else}{$LNG.ov_free}{/if}
				</div>
			</div>
		{/if}
	{/foreach}
	</div>
</div>


		
		{if !$vmode}
		<script type="text/javascript">
		
	
		
		
		
		
var menut1m = document.getElementById('menut1m');
var menut2m = document.getElementById('menut2m');
var menut3m = document.getElementById('menut3m');
var viewShortlyNumber	= {$shortlyNumber|json};
		var vacation			= {$vmode};
        $(function() {
		{foreach $resourceTable as $resourceID => $resourceData}
		{if isset($resourceData.production)}
            resourceTicker({
                available: {$resourceData.current|json},
                limit: [0, {$resourceData.max|json}],
                production: {$resourceData.production|json},
                valueElem: "current_{$resourceData.name}"
            }, true);
		{/if}
		{/foreach}
        });
		</script>
        <script src="scripts/game/topnav.js"></script>
        {if $hasGate}<script src="scripts/game/gate.js"></script>{/if}
		{/if}
	</div>
	{if $closed}
	<div class="infobox">{$LNG.ov_closed}</div>
	{elseif $delete}
	<div class="infobox">{$delete}</div>
	{elseif $vacation}
	<div class="infobox">{$LNG.tn_vacation_mode} {$vacation}</div>
	{/if}