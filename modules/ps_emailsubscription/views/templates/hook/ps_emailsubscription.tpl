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
<div class="block_newsletter">
  <form action="{$urls.pages.index}#footer" method="post">
    {if $conditions}
      <p>{$conditions}</p>
    {/if}
    {if $msg}
      <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
        {$msg}
      </p>
    {/if}
    <div class="input-group">
      <input type="text" class="form-control" name="email" value="{$value}" placeholder="{l s='Enter Your Email' d='Shop.Forms.Labels'}...">
      <span class="input-group-btn">
        <button class="btn btn-secondary" name="submitNewsletter" type="submit">{l s='Subscribe' d='Shop.Theme.Actions'}</button>
      </span>
    </div>
    <input type="hidden" name="action" value="0">
  </form>
  {if isset($novconfig.social_in_footer) && $novconfig.social_in_footer == 1 && $novconfig.novthemeconfig_footer_style == 'displayFooterNovThree'}
    <div class="d-flex align-items-center social mt-30">
      <div class="title_block mr-4">{l s='Follow us on' d='Shop.Theme.Actions'}:</div>
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
  {/if}
</div>

<!-- Popup newsletter -->
{if isset($novconfig.novpopup_newsletter) && $novconfig.novpopup_newsletter == 1}
<div id="popup-subscribe" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="zmdi zmdi-hc-fw zmdi-close"></i></button>
            </div>
            <div class="modal-body">
                <form action="{$link->getPageLink('index')|escape:'html':'UTF-8'}" method="post">
                    <div class="subscribe_form text-center{if isset($msg) && $msg }{if $nw_error} form-error{else} form-ok{/if}{/if}">
                        <div class="inner">
                            <div class="title_block">{l s='Newsletter' d='Shop.Theme.Actions'}</div>
                            <p>{l s='Sign up to our newsletter to get the latest articles, lookbooks, street style & fashion voucher codes direct to your inbox:' d='Shop.Theme.Actions'}</p>
                            <div class="input-subscribe-wrap input-group">
                                <input class="inputNew form-control grey newsletter-input" placeholder="{l s="Enter Your Email..." d="Shop.Theme.Actions"}" type="text" name="email" size="18" value="" />
                                <span class="input-group-btn">
                                    <button type="submit" name="submitNewsletter" class="btn btn-primary">{l s='Subscribe' d='Shop.Theme.Actions'}</button>
                                </span>
                                <input type="hidden" name="action" value="0" />
                            </div>
                            {*
                            <div class="checkbox">
                                <span class="custom-checkbox">
                                    <input name="no-view" class="no-view" type="checkbox">
                                    <span class="ps-shown-by-js"><i class="material-icons checkbox-checked">check</i></span>
                                </span>
                                <span>{l s="Don't show this popup again" d="Shop.Theme.Actions"}</span>
                            </div>
                            *}
                        </div>
                    </div>
                </form>
                {if isset($novconfig.contact_fanpage) && $novconfig.contact_fanpage}
                <div class="fb-page" data-href="{$novconfig.contact_fanpage}" data-width="500" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="{$novconfig.contact_fanpage}" class="fb-xfbml-parse-ignore"><a href="{$novconfig.contact_fanpage}">{$novconfig.contact_fanpage}</a></blockquote></div>
                {/if}
                {if isset($novconfig.social_twitter) && $novconfig.social_twitter}
                    <div class="twitter d-flex justify-content-center text-center">
                        <a class="twitter-follow-button" href="{$novconfig.social_twitter}" data-show-count="false" data-size="large">Follow @{$novconfig.social_twitter|substr:24}</a>
                    </div>
                {/if}
            </div>
        </div>
    </div>
    
</div>
{/if}
