{*/******************
 * Vinova Themes  Framework for Prestashop 1.7.x 
 * @package    novpagemanage
 * @version    1.0
 * @author    http://vinovathemes.com/
 * @copyright  Copyright (C) May 2017 vinovathemes.com <@emai:vinovathemes@gmail.com>
 * <info@vinovathemes.com>.All rights reserved.
 * @license   GNU General Public License version 1
 * *****************/
*}
<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=true&amp;amp;region={$iso_code}"></script>
<div class="{if isset($class) && $class}{$class}{/if} col-md-{$columns} col-sm-{$columns} col-xs-12 ">
 <div class="block">
  {if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
   <h4 class="title_block">
    {$title nofilter}
   </h4>
  {/if}
	<div id="nov-map" style="width:{$width}; height:{$height};"></div>
 </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
{literal} 
	var latitude = {/literal}{$latitude}{literal};
	var longitude = {/literal}{$longitude}{literal};
	var zoom = {/literal}{$zoom}{literal}
	map = new google.maps.Map(document.getElementById('nov-map'), {
		center: new google.maps.LatLng(latitude,longitude),
		zoom: zoom,
		mapTypeId: 'roadmap'
	});
	{/literal}{if isset($show_market) && $show_market == 1}{literal}
	var myLatlng = new google.maps.LatLng(latitude,longitude);
				var marker = new google.maps.Marker({
				            position: myLatlng,
      map: map,
				           });
	{/literal}{/if}{literal}
});
{/literal} 
</script>