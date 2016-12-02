-- Mensajes list
-- This lists all sent messages 
-- VARIABLE: { 
--      name: "fechai", 
--      display: "Fecha Inicial",
--      type: "date", 
-- }
-- VARIABLE: { 
--      name: "fechaf", 
--      display: "Fecha Final",
--      type: "date", 
-- }
-- VARIABLE: {name: "page", default: 0}


select id, numero, contenido, fecha from prueba where fecha between "{{fechai}}" and "{{fechaf}}" limit  200 OFFSET {{(page)*200}}
