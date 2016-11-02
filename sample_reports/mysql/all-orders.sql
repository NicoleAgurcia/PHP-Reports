-- All Orders
-- This report lets you view all orders within a specified time period.
-- You can click on a customer name to drill down into all orders for that customer.
-- VARIABLE: { 
--      name: "range", 
--      display: "Report Range",
--      type: "daterange", 
--      default: { start: "yesterday", end: "yesterday" }
-- }
-- FILTER: { 
--      column: "Customer Name", 
--      filter: "drilldown",
--      params: {
--          macros: { "id": { column: "Customer Id" } },
--          report: "drilldown/customer-orders.sql"
--      }
-- }

SELECT ID, valor FROM random 