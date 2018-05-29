{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<!-- <nav class="pagination row justify-content-around"> -->

    {block name='pagination_page_list'}
    {if $actpage eq 0}
      {assign var=actpage value=$actpage+1}
    {/if}


    {foreach from=$pagination.pages item="page"}
      <!-- Start a new line -->
      {if $page.page eq 1 || $nl}
        <div class="page-list">
        {$nl = false}
      {/if}
          {if $actpage eq $page.page}
              <button class="btn button-not-current btn-min-size pisebtn">
                {$page.page}
              </button>
          {else}
              <button class="btn btn-secondary btn-min-size pisebtn">
                {$page.page}
              </button>
          {/if}
      {if not ($page.page mod 10)}
        </div>
        {$nl = true}
      {/if}
     {/foreach}
    {/block}

<!-- </nav> -->
