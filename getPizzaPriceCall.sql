Create Database mamamia;
Use mamamia;
Create table pizza (pizzaType char(40), 
							pizzaSize double,
                            pizzaTopping double,
							pizzaSauce double,
                            pizzaPrice double);
Select * From pizza;

Select getPizzaPrice (pizzaSize, pizzaTopping, pizzaSauce, pizzaPrice)

		