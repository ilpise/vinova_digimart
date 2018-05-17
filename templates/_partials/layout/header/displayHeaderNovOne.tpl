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
<header id="header" class="header-1">

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

  {block name='header_top'}
    <div class="header-top hidden-sm-down">
        <div class="d-flex align-items-center">
          <div id="_desktop_logo" class="col-lg-2 col-md-4 col-sm-3">
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
          <div class="col-lg-6 col-md-5 col-sm-3 col-xs-3 widget-header hidden-md-down">
              {hook h="displayHeaderNovOne"}
          </div>
          <div class="col-lg-4 col-md-8 col-sm-3 ml-auto">
            <div class="top-content d-flex align-items-end justify-content-end">
              {block name='header_menu'}
                <div id="_desktop_top_menu">
                    {hook h="displayMegamenu" menu_type=""}
                </div>
              {/block}
            </div>
          </div>
        </div>
    </div>
  {/block}

  {block name='header_center'}
    <div class="header-center hidden-sm-down">
        <div class="d-flex justify-content-first align-items-center">
            <div class="infostore-inline">
              <ul class="list-inline mb-0">
                {if $novconfig.contact_email }
                <li class="list-inline-item"><i class="novicon novicon-email"></i>{l s='Email'} : <a href="mailto:{$novconfig.contact_email}">{$novconfig.contact_email}</a></li>
                {/if}
                {if $novconfig.contact_phone }
                <li class="list-inline-item"><i class="novicon novicon-phone"></i>{l s='Hotline'} : <a href="tel:{$novconfig.contact_phone}">{$novconfig.contact_phone}</a></li>
                {/if}
              </ul>
            </div>
            {if isset($novconfig.social_in_footer) && $novconfig.social_in_footer == 1}
            <div id="social_block" class="text-lg-left text-md-left text-sm-center ml-auto">
                <div class="d-flex align-items-center social">
                  <ul class="list-inline mb-0">
                    {if isset($novconfig.social_facebook) && $novconfig.social_facebook}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_facebook}"><i class="fa fa-facebook"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_twitter) && $novconfig.social_twitter}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_twitter}"><i class="fa fa-twitter"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_google) && $novconfig.social_google}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_google}"><i class="fa fa-google"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_instagram) && $novconfig.social_instagram}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_instagram}"><i class="fa fa-instagram"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_dribbble) && $novconfig.social_dribbble}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_dribbble}"><i class="fa fa-dribbble"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_flickr) && $novconfig.social_flickr}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_flickr}"><i class="fa fa-flickr"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_pinterest) && $novconfig.social_pinterest}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_pinterest}"><i class="fa fa-pinterest"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_linkedIn) && $novconfig.social_linkedIn}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_linkedIn}"><i class="fa fa-linkedin"></i></a></li>
                    {/if}
                    {if isset($novconfig.social_skype) && $novconfig.social_skype}
                    <li class="list-inline-item mb-0"><a href="{$novconfig.social_skype}"><i class="fa fa-skype"></i></a></li>
                    {/if}
                  </ul>
                </div>
            </div>
            {/if}
        </div>
    </div>
  {/block}

  {block name='header_bottom'}
  <div class="header-bottom hidden-sm-down">
      <div class="header-bottom-inner">
        <div class="d-flex align-items-center justify-content-start">
          <div class="verticalmenu col-lg-3-16 col-md-3 col-sm-3 col-xs-12">
            <div class="toggle-nav d-flex align-items-center justify-content-start">
              <span class="btnov-lines"></span>
              <span>{l s='Shop By Categories'}</span>
            </div>
            <div class="verticalmenu-content{if isset($novconfig.novthemeconfig_home_style) && $novconfig.novthemeconfig_home_style == "displayHomeNovOne" && $page.page_name == 'index'} active{/if}" data-count_showmore="13" data-count_showmore_tablet="9" data-textshowmore="{l s='Show more'}" data-textless="{l s='Close more'}">
              {hook h='displayVerticalmenu'}
            </div>
          </div>
          <div id="block_advancedsearch" class="col-lg-9-16 col-md-6 hidden-sm-down">
            {hook h='displayAdvanceSearch'}
          </div>
          <div class="col-lg-4-16 col-md-3 d-flex align-items-center justify-content-end hidden-sm-down no-padding">
            {hook h='displayNav2'}
            <div id="block_myaccount_infos" class="links wrapper hidden-sm-down">
              <div class="toggle-group-account"> <span class="btnov-lines"></span></div>
              <div class="account-list" id="_desktop_account_list">
                <div class="account-list-content">
                  {hook h='displayMyAccountBlock'}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
  {/block}

</header>