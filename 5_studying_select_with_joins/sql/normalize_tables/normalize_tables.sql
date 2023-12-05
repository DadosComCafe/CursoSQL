\c mcdonalds_health_db;
-- Passo 1
--removendo coluna de snack
ALTER TABLE snack DROP COLUMN company_name;

-- criando as tabelas nutritional_info_normalized
CREATE TABLE IF NOT EXISTS nutritional_info_normalized (
    id SERIAL PRIMARY KEY,
    id_snack INTEGER NOT NULL,
    id_company INTEGER NOT NULL,
    "createdAt" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMPTZ,
    FOREIGN KEY (id_snack) REFERENCES snack(id),
    FOREIGN KEY (id_company) REFERENCES company(id)
);

CREATE TABLE IF NOT EXISTS nutrition_details (
    id SERIAL PRIMARY KEY,
    id_nutritional_info INTEGER NOT NULL,
    "Calories" INTEGER,
    "CaloriesFromFat" INTEGER,
    "TotalFat" DOUBLE PRECISION,
    "SaturatedFat" DOUBLE PRECISION,
    "TransFat" DOUBLE PRECISION,
    "Cholesterol" INTEGER,
    "Sodium" INTEGER,
    "Carbs" DOUBLE PRECISION,
    "Fiber" DOUBLE PRECISION,
    "Sugars" DOUBLE PRECISION,
    "Protein" DOUBLE PRECISION,
    "createdAt" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMPTZ,
    FOREIGN KEY (id_nutritional_info) REFERENCES nutritional_info(id)
);

-- PASSO 2
-- preenchendo as tabelas normalizadas
INSERT INTO nutritional_info_normalized (id_snack, id_company, "createdAt", "updatedAt")
SELECT id_snack, id_company, "createdAt", "updatedAt"
FROM nutritional_info;

INSERT INTO nutrition_details (
    id_nutritional_info, "Calories", "CaloriesFromFat", "TotalFat", "SaturatedFat",
    "TransFat", "Cholesterol", "Sodium", "Carbs", "Fiber", "Sugars", "Protein", "createdAt", "updatedAt"
)
SELECT 
    new_ni.id as nutritional_info_id, "Calories", "CaloriesFromFat", "TotalFat(g)", "SaturatedFat(g)",
    "TransFat(g)", "Cholesterol(mg)", "Sodium(mg)", "Carbs(g)", "Fiber(g)", "Sugars(g)", "Protein(g)", new_ni."createdAt", new_ni."updatedAt"
FROM nutritional_info old_ni
JOIN nutritional_info_normalized new_ni ON old_ni.id_snack = new_ni.id_snack AND old_ni.id_company = new_ni.id_company;
