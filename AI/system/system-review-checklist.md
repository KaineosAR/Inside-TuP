# system-review-checklist.md

Checklist universal de validación antes de considerar una tarea terminada. Aplica a todo proyecto web.

---

## Alcance de la revisión

- La revisión debe cubrir todo el alcance solicitado antes de emitir conclusiones.
- No detener el análisis al encontrar los primeros errores.
- Continuar revisando y registrar todos los problemas detectados dentro del alcance definido.
- Si el volumen del proyecto impide una revisión completa, indicar explícitamente qué partes fueron revisadas y cuáles no.

---

## Alcance

- Se realizó únicamente lo solicitado.
- No se modificaron archivos fuera del alcance.
- No quedaron cambios incompletos o temporales.
- Se respetaron las restricciones definidas en `system/do-not.md`.

---

## Estructura

- La solución respeta la estructura actual del proyecto.
- No se introdujeron archivos innecesarios.
- Los nombres de archivos y carpetas son consistentes.
- No se rompieron rutas existentes.

---

## HTML

- La estructura es semántica.
- Existe un único `<h1>` por página.
- Las imágenes tienen atributos `alt` adecuados.
- Los elementos interactivos usan la etiqueta correcta.
- No hay estilos o scripts inline innecesarios.
- Los atributos ARIA están donde corresponde.
- `<section>` tiene `aria-labelledby` apuntando al heading interno.
- `<time>` tiene atributo `datetime`.

---

## CSS

- No hay reglas duplicadas innecesarias.
- Se reutilizan variables cuando corresponde.
- No se usan valores mágicos sin justificación.
- No hay uso innecesario de `!important`.
- Se usa Media Query Range Syntax (`width >= X`), no `min-width`/`max-width`.
- Está incluido el bloque `prefers-reduced-motion`.

---

## JavaScript

- No hay errores en consola.
- No quedó código muerto.
- No quedaron `console.log` de depuración.
- Las funciones tienen una responsabilidad clara.
- Se verifica la existencia de elementos antes de utilizarlos.
- No hay handlers inline en HTML.

---

## Accesibilidad

- El sitio puede recorrerse con teclado.
- Los estados de foco son visibles (`focus-visible` definido).
- El contraste cumple WCAG AA (4.5:1 texto normal, 3:1 texto grande).
- Los elementos decorativos tienen `aria-hidden="true"`.

---

## Rendimiento

- No se cargan recursos innecesarios.
- No se agregaron dependencias sin justificación.

---

## Código sin uso y duplicación

- No hay selectores CSS que no apunten a ningún elemento del HTML.
- No hay variables CSS declaradas que no se usen.
- No hay funciones JS declaradas que no se llamen.
- No hay bloques de código comentados que deberían haberse borrado.
- Si el mismo bloque CSS aparece en más de un archivo, evaluar si corresponde moverlo a un archivo compartido.
- Si la misma función JS aparece en más de un archivo, evaluar si corresponde extraerla a un módulo o archivo global.
- La duplicación es aceptable solo cuando existe una razón técnica o de contexto que la justifique.

---

## Entrega

- El resultado cumple el objetivo solicitado.
- Los cambios importantes fueron explicados.
- No quedan dudas técnicas sin mencionar.
