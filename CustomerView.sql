CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `newercustomer` AS
    SELECT 
        `pizzainfo2`.`pizzaType` AS `pizzaType`,
        `pizzainfo2`.`pizzaCrust` AS `pizzaCrust`,
        `pizzainfo2`.`pizzaSauce` AS `pizzaSauce`,
        `pizzainfo2`.`pizzaTopping` AS `pizzaTopping`,
        `pizzainfo2`.`pizzaToppingQuantity` AS `pizzaToppingQuantity`
    FROM
        `pizzainfo2`
    WHERE
        (`pizzainfo2`.`pizzaToppingQuantity` > 0)