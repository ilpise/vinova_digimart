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
<header id="header" class="header-3">

  {block name="header-mobile"}
  <div class="header-mobile hidden-md-up">
    <div class="hidden-md-up text-xs-center mobile d-flex align-items-center justify-content-end">
      <div id="_mobile_mainmenu" class="item-mobile-top"><i class="material-icons d-inline">menu</i></div>
      {if isset($novconfig.novthemeconfig_logo_mobile) && $novconfig.novthemeconfig_logo_mobile}
      <div class="mobile_logo">
        <a href="{$urls.base_url}">
          <img class="logo-mobile img-fluid" src="{$img_dir_themeconfig}{$novconfig.novthemeconfig_logo_mobile nofilter}" alt="{$shop.name}">
        </a>
      </div>
      {else}
      <div id="_mobile_logo" class="mobile_logo item-mobile-top"></div>
      {/if}
      <div id="_mobile_menutop" class="item-mobile-top nov-toggle-page d-flex align-items-center justify-content-center ml-auto" data-target="#mobile-pagemenu"><i class="material-icons">more_horiz</i></div>
    </div>
    
    <div class="_mobile_search">
      <div id="_mobile_search_content"></div>
    </div>
  </div>
  {/block}

  <div class="topbar hidden-sm-down">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-6">
          <div class="welcome-inline hidden-sm-down">
              Default Welcome Msg! <a href="{$link->getPageLink('my-account', true)}">Login</a> or <a href="{$link->getPageLink('my-account', true)}" rel="nofollow" title="{l s='Register Account' d='Modules.Customeraccount'}">Register</a>
          </div>
        </div>
        <div class="col-md-6 d-flex justify-content-end">
          {hook h='displayNav1'}
        </div>
      </div>
    </div>
  </div>
  {block name='header_top'}
    <div class="header-top hidden-sm-down">
      <div class="container">
         <div class="row no-gutters align-items-center row-eq-height justify-content-stretch">
          <div class="col-md-4">
            <div class="infomation d-flex align-items-end">
                <i class="novicon-info"></i>
                <div>
                  <h3 class="title-info">{l s='Free call us'}</h3>
                  <a href="tel:{$novconfig.contact_phone}">{$novconfig.contact_phone}</a></li>
                </div>
            </div>
          </div>
          <div id="_desktop_logo" class="col-md-4 text-center">
            {if isset($novconfig.novthemeconfig_customlogo) && $novconfig.novthemeconfig_customlogo && isset($novconfig.novthemeconfig_customlogo_enable) && $novconfig.novthemeconfig_customlogo_enable == 1}
              <a href="{$urls.base_url}">
                <img class="logo img-fluid" src="{$img_dir_themeconfig}logos/{$novconfig.novthemeconfig_customlogo}.png" alt="{$shop.name}">
              </a>
            {else}
              <a href="{$urls.base_url}">
                <img class="logo img-fluid" src="{$shop.logo}" alt="{$shop.name}">
              </a>
            {/if}
          </div>
          
          <div class="top-content d-flex align-items-center justify-content-end col-md-4">
              {hook h='displayNav2'}
          </div>
        </div>
      </div>
    </div>
  {/block}

  {block name='header_bottom'}
  <div class="header-bottom hidden-sm-down">
    <div class="container">
      <div class="header-bottom-inner">
        <div class="row align-items-center justify-content-start">
          <div class="verticalmenu col-lg-2 col-md-3">
            <div class="toggle-nav d-flex align-items-center justify-content-start">
              <span class="btnov-lines"></span>
              <span>{l s='Categories'}</span>
            </div>
            <div class="verticalmenu-content" data-count_showmore="13" data-count_showmore_tablet="13" data-textshowmore="{l s='Show more'}" data-textless="{l s='Close more'}">
              {hook h='displayVerticalmenu'}
            </div>

          </div>
          {block name='header_menu'}
          <div id="_desktop_top_menu" class="col-lg-5 col-md-8 align-self-stretch d-flex align-items-center justify-content-start">
              {hook h="displayMegamenu" menu_type=""}
          </div>
          {/block}
          <div id="block_advancedsearch" class="col-lg-5 col-md-1">
            <span class="toggle-search hidden-lg-up"><i class="zmdi zmdi-search"></i></span>
            {hook h='displayAdvanceSearch'}
          </div>
        </div>
      </div>
    </div>
  </div>
  {/block}
</header>