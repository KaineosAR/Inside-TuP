# project-map.md

Mapa estructural del proyecto. Describe la organización de carpetas y archivos relevantes para el desarrollo, mantenimiento y comprensión del proyecto.

---

## Estructura general

```
/
│
├── .ai/
│   │
│   ├── system/
│   ├── project/
│   ├── workflows/
│   └── learning/
│
├── assets/
│   │
│   ├── css/
│   │   ├── index.css
│   │   ├── materias.css
│   │   └── materia.css
│   │
│   ├── js/
│   │   ├── index.js
│   │   ├── materias.js
│   │   └── materia.js
│   │
│   ├── img/
│   │
│   └── academic-files/
│
├── materias/
│
├── index.html
├── materias.html
│
└── README.md
```

---

## Descripción

### /assets

Recursos utilizados por el sitio.

---

### /assets/css

Hojas de estilo del proyecto.

Responsables de:

* diseño visual
* layout
* responsive design
* animaciones
* accesibilidad visual

---

### /assets/js

Lógica de interacción del sitio.

Responsable de:

* comportamiento dinámico
* navegación interactiva
* componentes desplegables
* mejoras de experiencia de usuario

---

### /assets/img

Imágenes utilizadas por el proyecto.

No es necesario documentar archivos individuales salvo que tengan relevancia arquitectónica.

---

### /assets/academic-files

Material académico descargable.

Los archivos individuales no se documentan en este mapa.

---

### /materias

Páginas individuales de cada materia.

Cada archivo representa una materia específica.

---

### Archivos raíz

#### index.html

Página principal del proyecto.

#### materias.html

Catálogo general de materias.

#### README.md

Presentación pública del proyecto y del repositorio.

---

## Regla de actualización

Actualizar este archivo cuando ocurra alguna de las siguientes situaciones:

* creación de carpetas principales
* eliminación de carpetas principales
* reorganización de la estructura del proyecto
* incorporación de nuevas áreas funcionales
* cambios arquitectónicos relevantes

No actualizar por cambios menores de contenido.

---

## Alcance

Este archivo documenta la estructura del proyecto.

No documenta:

* diseño visual detallado
* decisiones de UX/UI
* contenido académico
* código específico
* reglas de programación

Esa información pertenece a otros archivos del sistema.
