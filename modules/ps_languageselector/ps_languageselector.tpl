{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if $novconfig.novthemeconfig_header_style && $novconfig.novthemeconfig_header_style == 'displayHeaderNovOne'}
<div id="_desktop_language_selector" class="language-selector groups-selector hidden-sm-down">
  <ul class="clearfix d-flex">
    {foreach from=$languages item=language}
      <li {if $language.id_lang == $current_language.id_lang} class="current" {/if}>
        <a href="{url entity='language' id=$language.id_lang}"><img class="img-fluid" src="{$img_lang nofilter}{$language.id_lang}.jpg" alt="{$language.name_simple}" width="16" height="11"/></a>
      </li>
    {/foreach}
  </ul>
</div>
{else}
<div id="_desktop_currency_selector" class="language-selector groups-selector hidden-sm-down">
  <div class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      {foreach from=$languages item=language}
        {if $language.id_lang == $current_language.id_lang}
            <span class="expand-more"><img class="img-fluid" src="{$img_lang nofilter}{$language.id_lang}.jpg" alt="{$language.name_simple}" width="16" height="11"/></span>
        {/if}
      {/foreach}
  </div>
  <div class="language-list dropdown-menu">
    <div class="language-list-content text-left">
        {foreach from=$languages item=language}
          <div class="language-item{if $language.id_lang == $current_language.id_lang} current flex-first{/if}">
            <div {if $language.id_lang == $current_language.id_lang} class="current" {/if}>
              <a href="{url entity='language' id=$language.id_lang}">
                <img class="img-fluid" src="{$img_lang nofilter}{$language.id_lang}.jpg" alt="{$language.name_simple}" width="16" height="11"/>
                <span>{$language.name_simple}</span>
              </a>
            </div>
          </div>
        {/foreach}
      </ul>
    </div>
  </div>
</div>

{/if}
