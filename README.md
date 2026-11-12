# VIVA Watches — szablon dla PrestaShop 9.1+ (Hummingbird)

Motyw potomny (**child theme**) oficjalnego motywu Hummingbird, zaprojektowany na
podstawie podglądu strony **vivab2b.pl** (hurtownia zegarków B2B): ciemny pasek
menu, czerwony akcent `#d40808`, kafelki produktów w stylu B2B z przyciskiem
„Zapytaj o produkt”, pasek zaufania i rozbudowana stopka.

> Wymaga zainstalowanego motywu **hummingbird** (domyślny w PrestaShop 9.1+).

## Struktura

```
vivawatches/
├── config/
│   └── theme.yml                  # konfiguracja motywu (parent: hummingbird)
├── assets/
│   ├── css/theme.css              # całość stylu (paleta vivab2b)
│   ├── js/theme.js                # sticky header, przycisk „powrót na górę”
│   └── img/logo.svg               # przykładowe logo (podmień na własne)
├── templates/
│   ├── _partials/header.tpl       # topbar + logo + szukajka + ciemny pasek menu
│   ├── _partials/footer.tpl       # pasek zaufania + kontakt + kolumny + copyright
│   ├── catalog/product.tpl        # strona produktu (+ blok „Zapytaj o produkt” bez cen)
│   ├── catalog/listing/product-list.tpl  # listing kategorii (tytuł z czerwonym akcentem)
│   ├── checkout/cart.tpl          # koszyk (podsumowanie w ramce VIVA)
│   └── catalog/_partials/miniatures/product.tpl  # kafelka produktu B2B
├── preview.html                   # podgląd strony głównej (otwórz w przeglądarce)
├── preview-product.html           # podgląd strony produktu
└── README.md
```

## Instalacja

1. Spakuj katalog `vivawatches` do pliku ZIP (na najwyższym poziomie ZIP-a ma być katalog `vivawatches/`).
2. W panelu administracyjnym: **Design → Theme & Logo → Add a new theme** i wgraj ZIP.
3. Kliknij **Use this theme** (motyw dziedziczy po Hummingbird — nie usuwaj go).
4. Podmień `assets/img/logo.svg` / wgraj własne logo przez **Design → Theme & Logo**.

## Konfiguracja pod sklep B2B z zegarkami

- **Ceny tylko dla zalogowanych (tryb hurtowy):** Klienci → Grupy → Gość/Oddolny
  → wyłącz „Pokaż ceny”. Wtedy kafelka produktu automatycznie pokaże przycisk
  **„Zapytaj o produkt”** zamiast ceny i koszyka — tak jak na vivab2b.pl.
- **Menu kategorii:** moduł `ps_mainmenu` (Start, Zegarki Męskie, Zegarki Damskie,
  Smartwatche, marki, Wyprzedaż…).
- **Slider na stronie głównej:** moduł `ps_imageslider` (banery 1920×650 px,
  jak na stronie wzorcowej).
- **Nowości / Bestsellery:** moduły `ps_newproducts` i `ps_bestsellers`
  (liczba produktów ustawiona na 8 w `config/theme.yml`).
- **Wyszukiwarka** została przeniesiona z paska menu do nagłówka (obok logo),
  zgodnie z układem vivab2b.pl.

## Wymagania

- PrestaShop 9.1 lub nowszy (testowane na gałęzi 9.x, Bootstrap 5.3).
- Motyw nadrzędny: `hummingbird`.
