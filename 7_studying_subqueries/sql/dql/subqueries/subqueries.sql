-- get snack name, total fat and company name
select s.name as "Snack Name", nd."TotalFat", c.name as "Company Name"
from snack s
inner join company c on c.id = s.id_company
inner join nutritional_info_normalized ni on s.id = ni.id_snack
inner join nutrition_details nd on ni.id = nd.id_nutritional_info
order by c.name;

-- get average value of Totalfat 
select avg(nd2."TotalFat")
from snack s2
inner join nutritional_info_normalized ni2 on s2.id = ni2.id_snack
inner join nutrition_details nd2 on ni2.id = nd2.id_nutritional_info
where nd2."TotalFat" > 0


-- get the snack with totalfat higher than average value of its company
select s.name as "Snack Name", nd."TotalFat", c.name as "Company Name"
from snack s
inner join company c on c.id = s.id_company
inner join nutritional_info_normalized ni on s.id = ni.id_snack
inner join nutrition_details nd on ni.id = nd.id_nutritional_info
where nd."TotalFat" > (
    select avg(nd2."TotalFat")
    from snack s2
    inner join nutritional_info_normalized ni2 on s2.id = ni2.id_snack
    inner join nutrition_details nd2 on ni2.id = nd2.id_nutritional_info
    where s2.id_company = s.id_company and nd2."TotalFat" > 0
)
order by c.name;
