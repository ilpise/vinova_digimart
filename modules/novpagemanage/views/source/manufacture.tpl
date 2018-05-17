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
{if isset($manufacturers) && $manufacturers}
<div class="nov-manufacture {if isset($class) && $class}{$class}{/if} col-lg-{$columns} col-md-{$columns} col-sm-{$columns} col-xs-12 ">
	<div class="block" >
		{if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
			<div class="title_block">
				{$title nofilter}
			</div>
		{/if}
		<div class="block_content">
			<div id="{$name_tab}" class="owl-carousel owl-theme owl-loaded owl-drag" data-autoplay="true" data-autoplaytimeout="6000" data-loop="true" data-dots="false" data-nav="false" data-margin="{$spacing_item nofilter}" data-items="{$colspage nofilter}" data-items_tablet="{$column_tablet nofilter}" data-items_mobile="{$column_mobile nofilter}">
				{$novmanufacturers=array_chunk($manufacturers,$number_row)}
				{foreach from=$novmanufacturers item=manufacturers name=mypLoop}
					<div class="item">
					{foreach from=$manufacturers item=manufacturer name=manufacturers}
						<div class="logo-manu">
							<a href="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{l s='view products' mod='novpagemanage'}">
							<img class="img-fluid" src="{$manufacturer.image|escape:'htmlall':'UTF-8'}" alt=""/></a>
						</div>
					{/foreach}
					</div>
				{/foreach}
			</div>
		</div>
	</div>
</div>
{/if}
