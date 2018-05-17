<footer class="footer footer-two">
  <div class="nov-footer-center">
    {hook h='displayFooterNovTwo'}
  </div>

  <div id="nov-copyright">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-12 col-md-12">
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