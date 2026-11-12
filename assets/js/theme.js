/* VIVA Watches — drobne ulepszenia interfejsu */
(function () {
  'use strict';

  function onReady(fn) {
    if (document.readyState !== 'loading') {
      fn();
    } else {
      document.addEventListener('DOMContentLoaded', fn);
    }
  }

  onReady(function () {
    var header = document.getElementById('header');

    if (header) {
      var headerMain = header.querySelector('.viva-header-main');
      var offset = headerMain ? headerMain.offsetTop + 60 : 200;

      window.addEventListener('scroll', function () {
        if (window.scrollY > offset) {
          header.classList.add('is-sticky');
        } else {
          header.classList.remove('is-sticky');
        }
      }, { passive: true });
    }

    var backToTop = document.createElement('button');
    backToTop.type = 'button';
    backToTop.className = 'viva-back-to-top';
    backToTop.setAttribute('aria-label', 'Powrót na górę');
    backToTop.innerHTML = '&#8593;';
    document.body.appendChild(backToTop);

    backToTop.addEventListener('click', function () {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });

    window.addEventListener('scroll', function () {
      if (window.scrollY > 400) {
        backToTop.classList.add('is-visible');
      } else {
        backToTop.classList.remove('is-visible');
      }
    }, { passive: true });
  });
})();
