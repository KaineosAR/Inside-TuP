# dev-environment.md

Entorno de desarrollo para este proyecto.

---

## Editor

**VSCode**

### Extensiones

| Extensión                                    | Autor        |
| -------------------------------------------- | ------------ |
| Spanish Language Pack for Visual Studio Code | Microsoft    |
| C/C++                                        | Microsoft    |
| ESLint                                       | Microsoft    |
| Prettier - Code formatter                    | Prettier     |
| Live Server                                  | Ritwick Dey  |
| Image preview                                | Kiss Tamás   |
| Material Icon Theme                          | Philipp Kief |
| Gemini Code Assist                           | Google       |

---

## Formatter

**Prettier** — configuración en `.prettierrc`:

```json
{
  "semi": true,
  "singleQuote": false,
  "tabWidth": 2,
  "useTabs": false,
  "trailingComma": "es5"
}
```

---

## Asistentes de código

- ChatGPT
- Claude
- Gemini Code Assist (extensión VSCode) — no el de navegador
- GitHub Copilot (extensión VSCode)

---

## Infraestructura y Control

- **Control de versiones:** Git + GitHub.
- **Hosting y Deploy:** GitHub Pages.

---

## Testing en navegadores

No es obligatorio en cada cambio, pero sí antes de cada actualización
importante. Mínimo recomendado:

- **Chrome** — navegador principal de desarrollo
- **Firefox** — segundo más usado, diferencias ocasionales en CSS
- **Edge** — viene con Windows, comportamiento similar a Chrome

Para Safari: usar **BrowserStack** (plan gratuito disponible) si se quiere
cubrir usuarios de iPhone/Mac. No es prioritario para este proyecto.
