-- 코드를 입력하세요
select distinct(cart1.cart_id)
from cart_products cart1, cart_products cart2
where cart1.cart_id = cart2.cart_id and cart1.name = 'Milk' and cart2.name = 'Yogurt'

#Solution2
 SELECT A.CART_ID FROM 
 (SELECT CART_ID FROM CART_PRODUCTS WHERE NAME = 'Yogurt') as A, 
 (SELECT CART_ID FROM CART_PRODUCTS WHERE NAME = 'Milk') as B
 WHERE A.CART_ID = B.CART_ID