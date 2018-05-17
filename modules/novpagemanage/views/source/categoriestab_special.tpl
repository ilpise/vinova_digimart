<div class="product-tabs-categories cattabs_special col-md-{$columns} col-sm-{$columns} col-xs-{$columns} {if isset($class) && $class}{$class}{/if}">
	<div id="{$tab}" class="block-product clearfix">
		
		<div class="block_content">
			<div class="group-title d-flex align-items-center justify-content-end mb-25">
				{if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
				<h2 class="title_block mr-auto">
					{$title nofilter}
					{if isset($sub_title) && !empty($sub_title)}
						<span class="sub_title">{$sub_title}</span>
					{/if}
				</h2>
				{/if}
				<ul class="nav nav-tabs justify-content-end hidden-md-down" role="tablist">
				  {if isset($categories) && $categories }
					{foreach from=$categories item=category key=k name=categories}
						<li class="nav-item">
							<a class="nav-link{if $smarty.foreach.categories.first } active{/if}" href="#{$tab}category{$k}" role="tab" data-toggle="tab">{$category.name}</a>
						</li>
					{/foreach}
				  {/if}				
	            </ul>
	            <ul class="nav nav-tabs hidden-md-up" role="tablist">
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
						{$products=$category.products}
					  	{if !empty($products)}
					  		<div class="product_list grid row no-gutters">
					  			{foreach from=$products item=product name=products}
					  				{if $smarty.foreach.products.first}
						  				<div class="col-md-5 big-item d-flex align-items-end">
											{include file='_partials/layout/items/item_default.tpl' class_item='no-border w-100' hidden_countdown=0}
										</div>
									{else}
										{if $smarty.foreach.products.index == 1}
											<div class="col-md-7 small-item">
												<div class="row no-gutters">
										{/if}
										{if ($smarty.foreach.products.index - 1) % $colspage == 0 && $smarty.foreach.products.index != 1}
											<div class="w-100 hidden-xs-down"></div>
										{/if}
										{if $smarty.foreach.products.index % $colspage == 0}
											{include file='_partials/layout/items/item_default.tpl' class_item='col-md-4 col-xs-6 no-border' hidden_countdown=1}
										{else}
											{include file='_partials/layout/items/item_default.tpl' class_item='col-md-4 col-xs-6' hidden_countdown=1}
										{/if}
										{if $smarty.foreach.products.last}
												</div>
											</div>
										{/if}
									{/if}
								{/foreach}
							</div>

						{else}
							<p class="alert alert-info">{l s='No products at this time.'}</p>	
						{/if}
			  		</div>
				{/foreach}
			{/if}
			</div>
		</div>
	</div>
</div>