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
{if isset($html)}
<div class="nov-html col-lg-{$columns} col-md-{$columns}{if isset($class) && $class} {$class}{/if}">
 <div class="block">
  {if isset($show_title) && $show_title == 1 && isset($title) && !empty($title)}
   <div class="title_block">
    	{$title nofilter}
   </div>
  {/if}
  <div class="block_content">
   {$html nofilter}
  </div>
 </div>
</div>
{/if}