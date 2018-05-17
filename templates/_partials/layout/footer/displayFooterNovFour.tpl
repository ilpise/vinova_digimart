<footer class="footer footer-four">
  <div class="nov-footer-center">
    {hook h='displayFooterNovFour'}
  </div>

  <div id="nov-copyright">
    <div class="container">
      <div class="row align-items-center">
        {if isset($novconfig.social_in_footer) && $novconfig.social_in_footer == 1}
        <div class="col-lg-4 col-md-4 text-lg-left text-md-left text-sm-center">
            <div class="d-flex align-items-center social">
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
              </ul>
            </div>
        </div>
        {/if}

        <div class="col-lg-4 col-md-4 text-sm-center mt-xs-15">
          {if isset($novconfig.novthemeconfig_copyright) && $novconfig.novthemeconfig_copyright }
            <div class="content-copyright text-center">
              {$novconfig.novthemeconfig_copyright nofilter}
              {hook h='displayCopyright'}
            </div>
            {else}
            <div class="content-copyright text-center">
              {l s='Copyright %copyright% %year% - Vinovathemes. All rights reserved.' sprintf=['%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme'}
            </div>
          {/if}
        </div>

        <div class="col-lg-4 col-md-4 text-lg-right text-md-right text-sm-center mt-xs-15">
          {if isset($novconfig.novthemeconfig_payment_image) && $novconfig.novthemeconfig_payment_image }
          <img class="img-fluid" src="{$img_dir_themeconfig}{$novconfig.novthemeconfig_payment_image nofilter}" alt="payment" title="Payment" />
          {else}
            <img class="img-fluid" src="{$img_dir}/payment.png" alt="payment" title="Payment" />
          {/if}
        </div>

      </div>
    </div>
  </div>

</footer>

<div class="canvas-overlay"></div>
<div id="back-top">
  <span>
    <i class="fa fa-long-arrow-up"></i>{* {l s='Back to top' d='Shop.Theme'}*}
  </span>
</div>