{**
 * For the full copyright and license information, please view the
 * LICENSE.md file that was distributed with this source code.
 *}

{capture name="footer_before"}{hook h='displayFooterBefore'}{/capture}
{if $smarty.capture.footer_before}
  {block name='hook_footer_before'}
    <div class="footer footer__before">
      {$smarty.capture.footer_before nofilter}
    </div>
  {/block}
{/if}

{block name='footer_main'}
  <div class="footer footer__main viva-footer">

    {block name='viva_trust'}
      <div class="viva-footer-trust">
        <div class="container">
          <ul class="viva-trust-list">
            <li><span class="viva-trust-icon">&#10003;</span>{l s='Autoryzowany sprzedawca' d='Shop.Theme.Global'}</li>
            <li><span class="viva-trust-icon">&#8634;</span>{l s='Łatwe zwroty' d='Shop.Theme.Global'}</li>
            <li><span class="viva-trust-icon">&#9889;</span>{l s='Szybka wysyłka' d='Shop.Theme.Global'}</li>
            <li><span class="viva-trust-icon">&#9679;</span>{l s='Produkty oryginalne' d='Shop.Theme.Global'}</li>
          </ul>
        </div>
      </div>
    {/block}

    <div class="container">
      <div class="row viva-footer-contact-row">
        <div class="col-lg-4 col-md-6">
          <div class="viva-footer-box">
            <p class="viva-footer-title">{l s='Kontakt' d='Shop.Theme.Global'}</p>
            <address class="viva-footer-contact">
              <strong>{$shop.name}</strong><br>
              {l s='Zapraszamy do kontaktu od poniedziałku do piątku.' d='Shop.Theme.Global'}<br>
              <a href="{$urls.pages.contact}">{l s='Formularz kontaktowy' d='Shop.Theme.Global'}</a>
            </address>
          </div>
        </div>

        <div class="col-lg-8 col-md-6">
          {capture name="footer_main_top"}{hook h='displayFooter'}{/capture}
          {if $smarty.capture.footer_main_top}
            {block name='hook_footer_main'}
              <div class="footer__main-top row">
                {$smarty.capture.footer_main_top nofilter}
              </div>
            {/block}
          {/if}
        </div>
      </div>

      {capture name="footer_main_bottom"}{hook h='displayFooterAfter'}{/capture}
      {if isset($smarty.capture.footer_main_bottom) && $smarty.capture.footer_main_bottom}
        {block name='hook_footer_after'}
          <div class="footer__main-bottom row">
            {$smarty.capture.footer_main_bottom nofilter}
          </div>
        {/block}
      {/if}
    </div>

    {block name='viva_copyright'}
      <div class="viva-footer-bottom">
        <div class="container">
          <p>&copy; {$smarty.now|date_format:'%Y'} {$shop.name}. {l s='Wszelkie prawa zastrzeżone.' d='Shop.Theme.Global'}</p>
        </div>
      </div>
    {/block}

  </div>
{/block}
