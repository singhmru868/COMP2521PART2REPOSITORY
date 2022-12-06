update pizzainfo2, orderstuff

set pizzaToppingQuantity = (pizzaToppingQuantity - 1)

where exists (select OrderPizza from orderstuff where orderstuff.OrderPizza = pizzainfo2.pizzaTopping);