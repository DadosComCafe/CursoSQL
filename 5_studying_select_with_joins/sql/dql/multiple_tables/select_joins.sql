-- The used joins in the video
-- trazer todos os lanches e o nome de sua compania
select c.name as "Nome da companhia", s.name as "Nome do lanche" 
from company c
inner join snack s on s.id_company = c.id;

-- trazer todos os lanches e companias ordenando por nome de compania e depois nome do lanche
select c.name as "Nome da companhia", s.name as "Nome do lanche" 
from company c
inner join snack s on s.id_company = c.id
order by c.name, s.name;

-- trazer o número de lanche que cada compania possui em ordem decrescente
select count(s.name) as "contagem", c.name 
from company c
inner join snack s on s.id_company = c.id
group by c.name
order by "contagem" desc

-- trazer todos os lanches, o nome de sua compania e seu valor calorico
select c.name, s.name, nd."Calories"
from company c
inner join snack s on s.id_company = c.id
inner join nutritional_info_normalized ni on ni.id_snack = s.id
inner join nutrition_details nd on nd.id_nutritional_info = ni.id;

-- trazer o lanche mais calórico, o nome de sua compania e seu valor calorico -- para McDonald's
select c.name, s.name, nd."Calories"
from company c
inner join snack s on s.id_company = c.id
inner join nutritional_info_normalized ni on ni.id_snack = s.id
inner join nutrition_details nd on nd.id_nutritional_info = ni.id
where c.name = 'McDonald’s' and nd."Calories" is not null
order by nd."Calories" desc
limit 1


-- trazer o lanche mais calórico, o nome de sua compania e seu valor calorico -- para todos
select distinct on (c.name) c.name, s.name, nd."Calories"
from company c
inner join snack s on s.id_company = c.id
inner join nutritional_info_normalized ni on ni.id_snack = s.id
inner join nutrition_details nd on nd.id_nutritional_info = ni.id
where nd."Calories" is not null
order by c.name, nd."Calories" desc