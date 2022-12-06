DELIMITER $$

CREATE FUNCTION getPizzaPrice (pizzaSize DOUBLE, numOfPizzaToppings DOUBLE, pizzaSauce DOUBLE, pizzaPrice DOUBLE)
RETURNS DOUBLE 
DETERMINISTIC
BEGIN
	DECLARE extraToppings DOUBLE;
    DECLARE toppingsPrice DOUBLE;
    SET toppingsPrice = 0;
    
    SET extraToppings = numOfPizzaToppings - 4;
    
    IF extraToppings > 0 THEN
		SET toppingsPrice = extraToppings * 1.5;
	END IF;
    
    IF pizzaSize = 12 THEN
		SET pizzaPrice = 11;
	END IF;
	IF pizzaSize = 14 THEN
		SET pizzaPrice = 13;
	END IF;
	IF pizzaSize = 16 THEN
		SET pizzaPrice = 16;
	END IF;
    
    SET pizzaPrice = pizzaPrice + toppingsPrice;
    RETURN pizzaPrice;
    
	END

