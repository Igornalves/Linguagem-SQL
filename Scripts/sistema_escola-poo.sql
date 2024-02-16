-- Table: public.Pessoa

-- DROP TABLE IF EXISTS public."Pessoa";

CREATE TABLE IF NOT EXISTS public."Pessoa"
(
    nome character varying(20)[] COLLATE pg_catalog."default",
    matricula integer,
    "chavePrimaria" integer NOT NULL DEFAULT nextval('"Pessoa_chavePrimaria_seq"'::regclass),
    CONSTRAINT "Pessoa_pkey" PRIMARY KEY ("chavePrimaria")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Pessoa"
    OWNER to igorn;
	
SELECT *from "Pessoa";

CREATE TABLE IF NOT EXISTS public.aluno
(
    "dataDeNacimento" integer,
    "chaveEstrangeira" integer,
    CONSTRAINT "chaveEstrangeira" FOREIGN KEY ("chaveEstrangeira")
        REFERENCES public."Pessoa" ("chavePrimaria") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.aluno
    OWNER to igorn;

