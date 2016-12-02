test.sql-- Mensajes list
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
-- VARIABLE: {name: "holis", default: 0}


select count(id) from prueba where fecha between "{{fechai}}" and "{{fechaf}}" limit 10
