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
<div class="product-add-to-cart in_border">
  {$configuration}
  {if !$configuration.is_catalog}
    <span class="control-label">{l s='QTY' d='Shop.Theme.Catalog'}: </span>
    {block name='product_quantity'}
      <div class="product-quantity">
        <div class="qty">
          <input
            type="text"
            name="qty"
            id="quantity_wanted"
            value="{$product.quantity_wanted}"
            class="input-group"
            min="{$product.minimal_quantity}"
          />
        </div>
        <div class="add">
          <button class="btn btn-primary add-to-cart" data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url || $product.quantity_wanted > $product.quantity}disabled{/if}>
            <i class="shopping-cart"></i>
            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
          </button>
          
        </div>
        {hook h='displayProductListFunctionalButtons' product=$product}
      </div>
      <div class="clearfix"></div>
    {/block}

    {block name='product_minimal_quantity'}
      <p class="product-minimal-quantity">
        {if $product.minimal_quantity > 1}
          {l
          s='The minimum purchase order quantity for the product is %quantity%.'
          d='Shop.Theme.Checkout'
          sprintf=['%quantity%' => $product.minimal_quantity]
          }
        {/if}
      </p>
    {/block}
  {/if}
</div>
