# Triggers

## Síntaxe Básica de uma trigger

    CREATE TRIGGER nome_da_trigger
        BEFORE | AFTER `somente um é possível`
            INSERT | UPDATE | DELETE  #é possível utilizar mais de um
    ON nome_da_tabela
        FOR EACH ROW
            EXECUTE PROCEDURE | FUNCTION nome_da_funcao

## Síntaxe Básica de uma procedure ou function do tipo trigger

    CREATE OR REPLACE FUNCTION| PROCEDURE nome_da_funcao()
    RETURNS trigger AS $$
    BEGIN
        //comandos da minha função ou procedure
    RETURN NEW;
    END;
    $$
    LANGUAGE plpgsql;