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
{if isset($image_gallery)}
<div class="nov-gallery{if isset($class) && $class} {$class}{/if} col-lg-{$columns} col-xs-12">
 <div class="block">
  {if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
   <h4 class="title_block">
    {$title nofilter}
   </h4>
  {/if}
  <div class="block_content row">
   {if $image_gallery}
		{foreach from=$image_gallery item=image name=mypLoop}
			<div class="image-gallery col-lg-{$ipage}  col-sm-6 col-xs-12">
				<a class="gallery-fancybox" data-link="group" href="{$novpagemanage_img}gallery/{$image}"><img src="{$novpagemanage_img}gallery/{$image}" alt="photo" title=""></a>
			</div>
		{/foreach}
   {/if}
  </div>
 </div>
</div>
{/if}