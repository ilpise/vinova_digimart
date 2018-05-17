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
<div class="col-lg-{$columns} col-md-{$columns} col-xs-12{if isset($class) && $class} {$class}{/if}">
	<div class="block" id="{$tab}">
		{if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
		<h4 class="title_block">
			{$title nofilter}
		</h4>
		{/if}
		{if $show_image && $show_image == 1 && $image}	
		<div class="block-image">
			<img src="{$novpagemanage_img}{$image}" alt="" title="">
		</div>
		{/if}
		<div class="block_content">	
			<ul  class="list-inline text-center nov-tab">
			  {if isset($categories) && $categories }	
				{foreach from=$categories item=category key=k}
					<li><a href="#{$tab}category{$k}" data-toggle="tab"><span></span>{$category.name}</a></li>
				{/foreach}	
			  {/if}				
            </ul>
			
            <div id="product_tab_content">
				<div class="product_tab_content tab-content">
				{if isset($categories) && $categories }	
					{foreach from=$categories item=category key=k}
					  <div class="tab-pane" id="{$tab}category{$k}">
							{$products=$category.products} {$name_tab="{$tab}-category-{$k}"}
							{if isset($NOVTHEMECONFIG_TOUCH) && ($NOVTHEMECONFIG_TOUCH != 'default')}			
								{include file='./products-touch.tpl'}
							{else}
								{include file='./products.tpl'}
							{/if}
					  </div>
					{/foreach}	
				{/if}	
				
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function() {
    $('#{$tab} .carousel').carousel({
            pause: 'hover',
            interval: {$interval}
    });
	$("#{$tab} ul.nov-tab li", this).first().addClass("active");
	$("#{$tab} .tab-content .tab-pane", this).first().addClass("active");
 
});
</script>
