create or replace function insert_nutritional_info()
returns trigger as $insert_nutritional_info_trigger$
begin
	insert into nutritional_info_normalized (id_snack, id_company)
  values (new.id, new.id_company);
  return new;
end;
$insert_nutritional_info_trigger$ language plpgsql;