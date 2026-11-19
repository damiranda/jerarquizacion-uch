-- Resalta [texto]{bg-color="#RRGGBB"}: fondo de color en html, rojo/negrita en pdf (compatible con Quarto 1.5).
-- Reemplazo simple de la extensión highlight-text, que requiere Quarto >= 1.7.29.
function Span(el)
  local color = el.attributes['bg-color']
  if not color then return nil end
  local hex = color:gsub('#', ''):upper()
  if quarto.doc.is_format('html') then
    el.attributes['bg-color'] = nil
    el.attributes['style'] = 'background-color: #' .. hex .. ';'
    return el
  elseif quarto.doc.is_format('latex') then
    if hex == 'FFFFFF' then return el.content end
    -- en pdf: texto en rojo y negrita (un fondo de color no permite cortes de línea)
    local out = { pandoc.RawInline('latex', '\\textcolor[HTML]{C00000}{\\textbf{') }
    for _, c in ipairs(el.content) do table.insert(out, c) end
    table.insert(out, pandoc.RawInline('latex', '}}'))
    return out
  end
  return el.content
end
