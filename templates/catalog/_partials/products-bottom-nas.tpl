{*
 * Classic theme doesn't use this subtemplate, feel free to do whatever you need here.
 * This template is generated at each ajax calls.
 * See ProductListingFrontController::getAjaxProductSearchVariables()
 *}
<!-- <div id="js-product-list-bottom"> -->
<div>
	{block name='pagination'}
	    {include file='_partials/pagination-nas.tpl' pagination=$listing.pagination actpage=$actpage}
	{/block}

</div>
