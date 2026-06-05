# coding-rules.md

Convenciones universales de código. Aplican a todo proyecto web salvo que
`project/coding-rules.md` indique lo contrario.

---

## Formato

Use Prettier formatting. Ver configuración en `system/dev-environment.md`.

- Fin de línea: **CRLF**.
- Comentarios en **inglés**.
- Sin código muerto — no dejes `console.log`, estilos sin usar ni funciones que no se llaman.
- Si algo se copia de otro archivo del proyecto, se adapta al contexto. No se pega sin revisar.

---

## HTML

- DOCTYPE, `lang`, `charset="utf-8"` y `viewport` en todo archivo.
- **Un solo `<h1>` por página.** Jerarquía de headings sin saltar niveles.
- Elementos semánticos donde corresponda: `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<footer>`. No uses `<div>` si hay un elemento semántico que aplica.
- `<header>` dentro de `<article>` o `<section>` es válido — no es exclusivo del header de la página.
- Todo `<img>` con `alt`. Si es decorativa, `alt=""` y `aria-hidden="true"`.
- Todo elemento interactivo navegable con teclado y con `:focus-visible`.
- `<button>` para acciones, `<a>` para navegación. Nunca al revés.
- Sin estilos inline salvo casos justificados y documentados.
- Sin event handlers inline (`onclick=""`, `onchange=""`, etc.).
- `aria-label`, `aria-expanded`, `aria-controls`, `aria-current` donde corresponda.
- `<section>` con `aria-labelledby` apuntando al heading interno.
- `<time>` con atributo `datetime` para fechas.
- Meta robots en una sola línea consolidada.

---

## CSS

- **Mobile-first.** Estilos base para móvil, overrides con `min-width`.
- Variables CSS en `:root` para colores, tipografía, espaciado y layout. Sin valores hardcodeados en reglas de componentes.
- Una variable se justifica si: se usa en 3+ lugares, o representa un valor que podría cambiar globalmente, o le da nombre semántico a algo que de otro modo sería un número mágico.
- Nomenclatura **BEM-inspired** cuando la complejidad del componente lo justifica. Evitar sobre-ingeniería en estructuras simples.
- Sin `!important` salvo en el bloque de `prefers-reduced-motion`.
- Preferir `gap` sobre `margin` para espaciado dentro de flex/grid.
- `rem` para font-sizes, nunca `px`. Espaciado en `rem` o variables.
- `clamp()` para tipografía fluida en headings.
- Animaciones y transiciones en CSS siempre que sea posible. JS solo cuando CSS no alcanza.
- Siempre incluir el bloque `prefers-reduced-motion`.
- El separador visual entre secciones va en CSS (`border-top` o `border-bottom`), no con `<hr>` salvo que haya un cambio de tema semántico real.

**Media Query Range Syntax** (sintaxis moderna):
```css
/* Correcto */
@media (width >= 768px) { }
@media (768px <= width < 1280px) { }

/* Incorrecto */
@media (min-width: 768px) { }
```

---

## JavaScript

- **Vanilla ES6+** salvo que el proyecto requiera otra cosa.
- `const` por defecto. `let` solo cuando hay reasignación. Nunca `var`.
- `addEventListener` siempre. Sin handlers inline en HTML.
- Verificar que el elemento existe antes de usarlo:
  ```js
  const el = document.querySelector(".algo");
  if (el) { /* ... */ }
  ```
- `querySelector` / `querySelectorAll` sobre `getElementById` / `getElementsByClassName`.
- Funciones pequeñas, nombradas, con una sola responsabilidad.
- Comentá el *por qué*, no el *qué*.
- El `<script>` siempre al final del `<body>`, nunca en el `<head>` sin `defer`.

---

## Accesibilidad

- Contraste mínimo **4.5:1** para texto normal, **3:1** para texto grande (WCAG AA).
- `:focus-visible` siempre definido. Nunca `outline: none` sin reemplazo.
- Orden de tabulación lógico — no uses `tabindex` positivo.
- Elementos decorativos con `aria-hidden="true"`.
- Iconos sin texto visible con `aria-label` en el elemento padre o en el propio elemento.
