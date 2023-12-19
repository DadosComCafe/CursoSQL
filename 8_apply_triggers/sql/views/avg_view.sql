create view avgcalories_view as (
select c.name, avg(nd."Calories") from company c 
inner join nutritional_info_normalized ni on ni.id_company = c.id
inner join nutrition_details nd on nd.id_nutritional_info = ni.id
group by c.name);