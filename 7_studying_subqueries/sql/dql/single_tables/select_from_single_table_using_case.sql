select id, "Company", "Item",
case
	when "Calories" is not null then "Calories"
  else 0
  end as "Calories"
from fastfoodnutritionmenu;



select id, "Company", "Item",
case 
  when "Calories" >= 500 and "Calories" < 900 then 'Matador'
  when "Calories" >= 900 then 'Vá com Deus'
  when "Calories" < 500 then 'Mansinho'
  else 'Inválido'
  end as "Situação"
from fastfoodnutritionmenu
order by "Company", "Situação";

select "Company",
case 
  when "Calories" >= 500 and "Calories" < 900 then 'Matador'
  when "Calories" >= 900 then 'Vá com Deus'
  when "Calories" < 500 then 'Mansinho'
  else 'Inválido'
  end as "Situação",
count(*) as quantidade
from fastfoodnutritionmenu
group by "Company", "Situação"
order by "Company", "Situação"

select count(*) from fastfoodnutritionmenu where "Company" = 'Burger King';


select count("Item") as contagem, "Company",
case
	when "Calories" = 0 then '=0'
  when "Calories" > 0 and "Calories" <= 300 then '0 < calories <= 300'
  when "Calories" < 300 and "Calories" <= 600 then '300 < calories <= 600'
  when "Calories" < 600 and "Calories" <= 900 then '600 < calories <= 900'
  when "Calories" > 900 then 'Calories > 900'
else 'Inválido'
end as "Histogram"
from fastfoodnutritionmenu
group by "Company", "Histogram"
order by "Company", "Histogram"