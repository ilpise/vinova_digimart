{**
 * 2007-2016 PrestaShop
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
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<footer class="footer footer-one">
  <div class="nov-footer-center">
    {hook h='displayFooterNovOne'}
  </div>
  <div id="nov-copyright">
    <div class="row align-items-center">
      <div class="col-lg-6 col-md-6 text-lg-left text-md-left text-sm-center">
    		{if isset($novconfig.novthemeconfig_copyright) && $novconfig.novthemeconfig_copyright }
    			<span>
    			  {$novconfig.novthemeconfig_copyright nofilter}
    			</span>
    			{else}
    			<span>
    			  {l s='Copyright %copyright% %year% - Vinovathemes. All rights reserved.' sprintf=['%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme'}
    			</span>
    		{/if}
      </div>
      <div class="col-lg-6 col-md-6 text-lg-right text-md-right text-sm-center">
          <img class="img-fluid" src="{$img_dir}/Secured-Icon.png" alt="Secured-Icon" title="Secured Icon" />
      </div>
    </div>
  </div>
</footer>

{*
<div class="nov-canvas-menu">
  <div class="casvas-content">
    <div id="_desktop_currency_selector" class="currency-selector groups-selector hidden-sm-down">
      <ul class="clearfix d-flex">
        {foreach from=$nov_currency.currencies item=currency}
          <li {if $currency.current}class="current"{/if}>
            <a title="{$currency.name}" rel="nofollow" href="{$currency.url}">{$currency.iso_code}</a>
          </li>
        {/foreach}
      </ul>
    </div>
    <div id="_desktop_language_selector" class="language-selector groups-selector hidden-sm-down">
      <ul class="clearfix d-flex">
        {foreach from=$nov_languages.languages item=language}
          <li {if $language.id_lang == $nov_languages.current_language.id_lang}class="current"{/if}>
            <a href="{url entity='language' id=$language.id_lang}"><img class="img-fluid" src="{$img_lang nofilter}{$language.id_lang}.jpg" alt="{$language.name}" width="16" height="11" /></a>
          </li>
        {/foreach}
      </ul>
    </div>
    {hook h='displayVerticalmenu'}

  </div>
</div>
*}

<div class="canvas-overlay"></div>
<div id="back-top">
  <span>
    <i class="fa fa-long-arrow-up"></i>{* {l s='Back to top' d='Shop.Theme'}*}
  </span>
</div>