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
<div class="product-tabs-categories{if isset($type_tabs) && $type_tabs == 'tabs'} tabslider{/if}{if isset($type_tabs) && $type_tabs == 'accordion'} tabaccordion{/if} col-md-{$columns} col-sm-{$columns} col-xs-{$columns} {if isset($class) && $class}{$class}{/if}">
	<div id="{$tab}" class="block-product clearfix">
		<div class="block_content">
			{if isset($type_tabs) && $type_tabs == 'tabs'}
				<div class="group-title d-flex align-items-center justify-content-end mb-25">
					{if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
						<h2 class="title_block">
							{if isset($image_icon) && !empty($image_icon)}
								<img src="{$novpagemanage_img nofilter}{$image_icon nofilter}" alt="icon title">
							{/if}
							{$title nofilter}
							{if isset($sub_title) && !empty($sub_title)}
								<span class="sub_title">{$sub_title}</span>
							{/if}
						</h2>
					{/if}

					<ul class="nav nav-tabs ml-auto" role="tablist">
					  {if isset($categories) && $categories }
						{foreach from=$categories item=category key=k name=categories}
							<li class="nav-item">
								<a class="nav-link{if $smarty.foreach.categories.first } active{/if}" href="#{$tab}category{$k}" role="tab" data-toggle="tab">{$category.name}</a>
							</li>
						{/foreach}
					  {/if}				
		            </ul>
				</div>
				<!-- Tab panes -->
				<div class="product_tab_content tab-content">
				{if isset($categories) && $categories }
					{foreach from=$categories item=category key=k name=categories}
					  	<div class="tab-pane fade {if $smarty.foreach.categories.first }in active{/if}" id="{$tab}category{$k}" role="tabpanel">
							{$products=$category.products} {$name_tab="{$tab}-category-{$k}"}
						  	{if !empty($products)}
						  		<div id="{$name_tab nofilter}" class="product_list grid owl-carousel owl-theme" data-autoplay="false" data-autoplayTimeout="6000" data-loop="true" data-margin="0" data-dots="false" data-nav="true" data-items="{$colspage nofilter}" data-items_mobile="2">
									{if $list_style == 'item_one'}
										{include file='_partials/layout/items/item_one.tpl' class_item='' number_row=$number_row}
									{elseif $list_style == 'item_two'}
										{include file='_partials/layout/items/item_two.tpl' class_item='' number_row=$number_row}
									{else}
										{include file='_partials/layout/items/item_three.tpl' class_item='' number_row=$number_row}
									{/if}
								</div>
							{else}
								<p class="alert alert-info">{l s='No products at this time.'}</p>
							{/if}
				  		</div>
					{/foreach}
				{/if}
				</div>
			{else}
				{if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
					<h2 class="title_block">
						{if isset($image_icon) && !empty($image_icon)}
							<img src="{$novpagemanage_img nofilter}{$image_icon nofilter}" alt="icon title">
						{/if}
						{$title nofilter}
						{if isset($sub_title) && !empty($sub_title)}
							<span class="sub_title">{$sub_title}</span>
						{/if}
					</h2>
				{/if}
				<div id="{$tab}accordion">
					{if isset($categories) && $categories }
					{foreach from=$categories item=category key=k name=categories}
					<div class="accordion-box panel{if $smarty.foreach.categories.last} last{/if}">
						<div class="accordion-header" id="{$tab}headercategory{$k}">
							<a {if $smarty.foreach.categories.first }class="d-flex nov-header-link-ac"{else}class="nov-header-link-ac d-flex collapsed"{/if} data-toggle="collapse" data-parent="#{$tab}accordion" href="#{$tab}category{$k}">
								<span class="mr-auto">{$category.name}</span>
								<i class="fa fa-caret-down" aria-hidden="true"></i>
							</a>
						</div>
						<div id="{$tab}category{$k}" class="panel-collapse collapse nov-collapse{if $smarty.foreach.categories.first } in{/if}" role="tabpanel" aria-labelledby="{$tab}headercategory{$k}">
							{$products=$category.products}
							{$name_tab="{$tab}-category-{$k}"}
							{if !empty($products)}
								<div id="{$name_tab nofilter}" class="product_list grid owl-carousel owl-theme" data-autoplay="false" data-autoplayTimeout="6000" data-loop="true" data-margin="0" data-dots="false" data-nav="true" data-items="{$colspage nofilter}" data-items_tablets="{$colspage nofilter}" data-items_mobile="2">
									{if $list_style == 'item_one'}
										{include file='_partials/layout/items/item_one.tpl' class_item='' class_item="" number_row=$number_row show_countdown=0}
									{/if}
								</div>
							{else}
								<p class="alert alert-info">{l s='No products at this time.'}</p>
							{/if}
						</div>
					</div>
					{/foreach}
					{/if}
				</div>

			{/if}
		</div>
	</div>
</div>
