create table app.weight (
weight_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
weight_date DATE NOT NULL,
weight_val NUMERIC (5,1) NOT NULL
);

INSERT INTO app.weight(weight_date, weight_val) VALUES('01/01/2016', 311.0);