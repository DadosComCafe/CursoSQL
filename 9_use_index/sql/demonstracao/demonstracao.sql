-- Criar tabela sem índice
CREATE TABLE tabela_sem_indice (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

-- Criar tabela com índice
CREATE TABLE tabela_com_indice (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);
CREATE INDEX idx_nome ON tabela_com_indice (nome);

-- Inserir dados em massa e medir o tempo
DO $$
DECLARE
    start_time TIMESTAMP;
    end_time TIMESTAMP;
BEGIN
    -- Medir tempo de inserção na tabela sem índice
    start_time := clock_timestamp();
    FOR i IN 1..100000 LOOP
        INSERT INTO tabela_sem_indice (nome) VALUES ('Nome ' || i);
    END LOOP;
    end_time := clock_timestamp();
    RAISE NOTICE 'Tempo para inserir na tabela sem índice: %', end_time - start_time;

    -- Medir tempo de inserção na tabela com índice
    start_time := clock_timestamp();
    FOR i IN 1..100000 LOOP
        INSERT INTO tabela_com_indice (nome) VALUES ('Nome ' || i);
    END LOOP;
    end_time := clock_timestamp();
    RAISE NOTICE 'Tempo para inserir na tabela com índice: %', end_time - start_time;
END $$;