create trigger trigger_insert_nutritional_info
after insert on snack
for each row
execute function insert_nutritional_info();