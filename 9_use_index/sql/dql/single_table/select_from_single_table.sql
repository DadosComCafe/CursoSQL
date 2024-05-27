SELECT * FROM fastfoodnutritionmenu;

select id, "Calories" from fastfoodnutritionmenu; -- 1159

select * from fastfoodnutritionmenu where "Calories" is not null; -- 1133

select * from fastfoodnutritionmenu where "Calories" is not null order by "Calories";

select * from fastfoodnutritionmenu where "Calories" is not null order by "Calories" DESC;

select MAX("Calories"), "Company" from fastfoodnutritionmenu group by "Company";

select MIN("Calories"), "Company" from fastfoodnutritionmenu group by "Company";

select SUM("Calories") as somatoria, "Company" from fastfoodnutritionmenu group by "Company" order by somatoria;

select avg("Calories") as "média", "Company" from fastfoodnutritionmenu group by "Company" order by "média";