Start transaction;
select @OrderKey:=MAX(OrderKey)+1
from orderstuff;
insert into orderstuff(OrderKey, OrderDate, OrderTime, CompletionTime, OrderStatus, OrderPizza, OrderQuantity)
values(@OrderKey, '2022-21-01', '16:44', '23:14', 'InProgress', 'Pepperoni', '1');
commit;