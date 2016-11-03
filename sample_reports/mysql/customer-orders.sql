-- Mensajes list
-- This lists all timezone abbreviations in a given timezone
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



SELECT  * FROM enviados2 WHERE fecha BETWEEN "{{fechai}}" and "{{fechaf}}" 

