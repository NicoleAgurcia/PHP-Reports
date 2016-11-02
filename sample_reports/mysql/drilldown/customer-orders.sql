-- Mensajes list
-- This lists all timezone abbreviations in a given timezone
-- VARIABLE: { 
--      name: "fechai", 
--      display: "Fecha Inicial",
--      type: "daterange", 
-- }
-- VARIABLE: { 
--      name: "fechaf", 
--      display: "Fecha Final",
--      type: "daterange", 
-- }





SELECT * FROM enviados WHERE fecha BETWEEN "{{fechai.start}}" and "{{fechaf.end}}"


