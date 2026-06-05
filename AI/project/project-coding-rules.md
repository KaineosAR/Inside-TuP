# coding-rules.md — Inside TuP

Reglas específicas de este proyecto. Complementan `system/coding-rules.md`, no lo reemplazan.

---

## Layout

- `max-width` del contenido: **1920px**, centrado con `margin-inline: auto`.
- Ancho de columna de texto (secciones info, FAQ, materia): **780px**.
- Padding lateral del contenedor: `var(--container-pad)` → `1.5rem`.

---

## Breakpoints

```
320px  → Extra small phones
360px  → Standard phones
414px  → Large phones / phablets
768px  → Tablets
1280px → Laptops / small monitors
1440px → Large laptops / HD monitors
1920px → Full HD — máximo ancho de contenido
```

---

## Estructura de archivos

```
/
├── index.html
├── materias.html
├── materias/
│   └── [nombre-materia].html
└── assets/
    ├── css/
    │   ├── index.css
    │   ├── materias.css
    │   └── materia.css
    ├── js/
    │   ├── index.js
    │   ├── materias.js
    │   └── materia.js
    ├── img/
    └── academic-files/
```

- Las páginas en `materias/` usan rutas con `../` para subir al raíz.
- Sin rutas absolutas.

---

## CSS — variables del proyecto

```css
--color-bg:             #141417;
--color-surface:        #1E1E22;
--color-border:         rgba(255, 255, 255, 0.08);
--color-border-hover:   rgba(255, 255, 255, 0.15);
--color-text-primary:   rgba(255, 255, 255, 0.92);
--color-text-secondary: rgba(255, 255, 255, 0.55);
--color-text-muted:     rgba(255, 255, 255, 0.30);
--color-accent:         #7DD3B0;
--color-accent-dim:     rgba(125, 211, 176, 0.12);
--font-body:            'DM Sans', sans-serif;
--font-mono:            'DM Mono', monospace;
--navbar-height:        56px;
```

---

## Fuentes

Cargadas vía Google Fonts CDN:
- **DM Sans** — cuerpo, UI
- **DM Mono** — labels, tags, logo, detalles técnicos
- **Material Symbols Outlined** — iconos (solo en páginas que los usan)

---

## Cards de materias

- Fondo: `#16201A` (tinte verde — 1° cuatrimestre)
- `aspect-ratio: 3 / 4`
- Estructura: logo `UTN.BA` → nombre → ícono → footer
- Futuros cuatrimestres pueden tener fondos distintos — documentar acá cuando se agreguen

---

## Clasificación de material

- Lectura: Para material teórico.
- Práctica: Para guías de ejercicios.
- Complemento: Para enlaces o PDFs extra.
- Anotaciones en clase: Para notas tomadas durante la clase, como resúmenes o puntos clave.
- Práctica resuelta: Para guías de ejercicios que ya tienen la solución, o para ejemplos resueltos.

---

## Notas pendientes

- Los CSS individuales tienen variables y reset duplicados. Cuando el proyecto esté estable, unificar en `global.css`.
