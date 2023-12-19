-- this trigger calls the insert_nutritional_info function when a new snack is inserted
create trigger trigger_insert_nutritional_info
after insert on snack
for each row
execute function insert_nutritional_info();

-- this trigger calls the update_updatedAt_company when a record of comapny is updated
create trigger trigger_update_company
before update on company
for each row
execute function update_updatedAt_company();