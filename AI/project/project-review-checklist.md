# project-review-checklist.md — Inside TuP

Checklist específico del proyecto. Complementa `system/system-review-checklist.md`, no lo reemplaza.

---

## Diseño responsivo

- El diseño funciona correctamente en los breakpoints definidos en `project/project-coding-rules.md`:
  320px, 360px, 414px, 768px, 1280px, 1440px, 1920px.
- El contenido no supera `1920px` de ancho.
- Las columnas de texto no superan `780px`.

---

## Consistencia visual

- Se respetan los colores definidos en `project/project-coding-rules.md`.
- Las fuentes usadas son DM Sans, DM Mono y/o Material Symbols Outlined.
- El estilo visual es consistente con el resto del sitio.
- Las cards de materias mantienen `aspect-ratio: 3 / 4` y fondo `#16201A`.

---

## Consistencia de código

- Se respetan las reglas de `system/system-coding-rules.md`.
- Se respetan las reglas de `project/project-coding-rules.md`.
- La nomenclatura de archivos académicos sigue el patrón `[sigla]-[tipo]-[descripcion].[ext]`.

---

## Rutas

- Todas las rutas son relativas.
- Las páginas en `materias/` usan `../` para subir al raíz.
- Los archivos académicos están en `assets/academic-files/`.

---

## Archivos académicos

Para cada `.archivo-item` verificar:

### Ruta y nombre

- el nombre mostrado en `.archivo-nombre` coincide exactamente con el nombre del archivo indicado en `href`
- la extensión obtenida desde `href` coincide con la extensión mostrada en `.archivo-nombre`

---

### Ícono del archivo

Verificar que `.archivo-icon` utiliza el ícono correcto según la extensión del archivo indicada en `href`.

---

### Comportamiento del enlace

Si la extensión es `.pdf`:

- existe `target="_blank"`
- existe `rel="noopener noreferrer"`

Si la extensión no es `.pdf`:

- existe el atributo `download`

---

### aria-label

Si la extensión es `.pdf`:

- el `aria-label` comienza con `Ver`
- el nombre indicado en el `aria-label` coincide con `.archivo-nombre`

Si la extensión no es `.pdf`:

- el `aria-label` comienza con `Descargar`
- el nombre indicado en el `aria-label` coincide con `.archivo-nombre`

---

### Acción visible

Si la extensión es `.pdf`:

- el ícono de acción es `visibility`
- el texto visible es `Ver`

Si la extensión no es `.pdf`:

- el ícono de acción es `download`
- el texto visible es `Descargar`

---

### Descripción

Fuera de elementos `.extras`, verificar que `.archivo-desc` contiene únicamente uno de los siguientes valores:

- Lectura
- Práctica
- Práctica resuelta
- Complemento
- Anotaciones en clase

---

## Navegación

- El link activo en el nav tiene `aria-current="page"`.
- El logo del nav apunta a `index.html` en páginas internas y a `#top` en el index.
- El menú mobile funciona correctamente y se cierra al navegar.
