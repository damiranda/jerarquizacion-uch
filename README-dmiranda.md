# CV Normalizado Universidad de Chile - Daniel Miranda

Currículo normalizado (Carrera Académica Ordinaria) del Prof. Daniel Miranda Fuenzalida, Departamento de Psicología, FACSO, para la solicitud de re-jerarquización a Profesor Asociado. Sigue el modelo de [jerarquizacion-uch](https://github.com/juancarloscastillo/jerarquizacion-uch) (J. C. Castillo): CV escrito en Markdown/Quarto, con salida en html y pdf, y con links directos a los documentos de respaldo.

## Archivos

| Archivo | Contenido |
|---|---|
| `cv-dmiranda.qmd` | CV normalizado (secciones 1 a 19 del formato oficial) |
| `anexos-dmiranda.qmd` | Documento de anexos en pdf: portada, índice y selección de respaldos en el orden del CV (máximo 50 páginas) |
| `anexos-dm/` | Respaldos enlazados desde el CV, organizados por sección (estudios, distinciones, docencia, memorias, investigación, extensión, conferencias, etc.) |
| `encabezado.png`, `_extensions/` | Encabezado oficial (compartido con el modelo) y filtro propio `highlight-dm.lua` |

## Cómo generar los documentos

Requiere Quarto 1.7.29 o superior (por la extensión `highlight-text`) y una instalación de LaTeX (por ejemplo `quarto install tinytex`). La fuente es Times New Roman 12, como exige la Comisión.

```bash
quarto render cv-dmiranda.qmd        # genera cv-dmiranda.html y cv-dmiranda.pdf
quarto render anexos-dmiranda.qmd --to pdf
```

## Pendientes

Los textos resaltados (amarillo en html, rojo en pdf) (`{bg-color="#FFFF00"}`) marcan datos por completar o verificar. Para la versión final se puede apagar el resaltado de una vez reemplazando `#FFFF00` por `#ffffff`, como hizo el modelo.

## Publicación

Los links a respaldos son relativos (`anexos-dm/...`): funcionan en el html publicado y en el pdf si se descarga junto con la carpeta. Para que los links del pdf funcionen al enviarlo solo, una vez publicado el repositorio en GitHub Pages se pueden reemplazar por la URL absoluta (por ejemplo `https://USUARIO.github.io/REPOSITORIO/anexos-dm/...`).
