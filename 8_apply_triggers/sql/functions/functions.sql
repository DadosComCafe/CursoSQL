-- call this function to insert a nutritional_info 
create or replace function insert_nutritional_info()
returns trigger as $$
begin
	insert into nutritional_info_normalized (id_snack, id_company)
  values (new.id, new.id_company);
  return new;
end;
$$ language plpgsql;

-- call this function to update the updatedAt column
create or replace function update_updatedAt_company()
returns trigger as 
$update_updatedAt_company$
begin
    new."updatedAt" = current_timestamp;
    return new;
end;
$update_updatedAt_company$ language plpgsql;