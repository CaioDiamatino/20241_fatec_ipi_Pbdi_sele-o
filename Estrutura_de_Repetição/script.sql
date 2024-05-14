-- Active: 1710242554065@@127.0.0.1@5432@20241_fatec_ipi_pbdi_repetição
--FOR EACH com SLICE
DO $$
DECLARE
    vetor INT[] := ARRAY[
        1, 2, 3
    ];
    matriz INT[] := ARRAY [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];
    var_aux INT;
    vet_aux INT[];

BEGIN
    FOREACH vet_aux SLICE 2 IN ARRAY matriz LOOP
        RAISE NOTICE '%', vet_aux;
    END LOOP;
END;
$$


-- FOREACH
-- DO $$
-- DECLARE
--     valores INT[] := ARRAY[
--         1, 10, 5, 4, 3, 2, 1, 6, 5
--     ];
--     valor INT;
--     soma INT := 0;
-- BEGIN
--     FOREACH valor IN ARRAY valores LOOP
--         RAISE NOTICE 'Valor da vez: %', valor;
--         soma := soma + valor;
--     END LOOP;
--     RAISE NOTICE 'Soma: %', soma;
-- END
-- $$



-- DO $$
--     DECLARE
--     aluno RECORD;
--     media NUMERIC(10,2) := 0;
--     total INT;
-- BEGIN
--     FOR aluno IN
--         SELECT * FROM tb_aluno
--     LOOP
--         -- mostrar a nota do aluno atual
--         RAISE NOTICE '%', aluno.nota;
--         -- acumular média
--         media := media + aluno.nota;
--     END LOOP;
--     -- guardar a quantidade de linhas na variavel
--     SELECT COUNT(*) FROM tb_aluno INTO total;
--     media := media / total;
--     RAISE NOTICE '%', media;
-- END
-- $$


-- DO $$
-- BEGIN
--     FOR i IN 1..10 LOOP
--         INSERT INTO tb_aluno (nota) VALUES (valor_aleatorio_entre(1, 10));
--         RAISE NOTICE '%', i;
--     END LOOP;
-- END;
-- $$


-- SELECT * FROM tb_aluno;

-- CREATE TABLE tb_aluno(
--     cod_aluno SERIAL PRIMARY KEY,
--     nota INT
-- );

--for: iterando sobre intervalos
-- DO $$
-- BEGIN
--     RAISE NOTICE 'pulamos de um em um ...';
--     FOR i IN 1..10 LOOP
--         RAISE NOTICE '%', i;
--     END LOOP;
--     FOR i IN 10..1 LOOP
--         RAISE NOTICE '%', i;
--     END LOOP;
--     FOR i IN REVERSE 10..1 LOOP
--         RAISE NOTICE '%', i;
--     END LOOP;
-- --pular de 1 a 50 de 2 em 2
--     FOR i IN 1..50 BY 2 LOOP
--         RAISE NOTICE '%', i;
--     END LOOP;
-- --pular de 50 a 1 de 2 em 2
--     FOR i IN REVERSE 50..1 BY 2 LOOP
--         RAISE NOTICE '%', i;
--     END LOOP;
-- END;
-- $$


-- DO $$
-- DECLARE
--     nota INT;
--     media NUMERIC(10,2) := 0;
--     contador INT := 0;
-- BEGIN
--     SELECT valor_aleatorio_entre(0, 11) - 1 INTO nota;
--     --RAISE NOTICE '%', nota;
--     WHILE nota >= 0 LOOP
--         --exibir a nota 
--         RAISE NOTICE '%', nota;
--         --acumular o valor gerado na variavel média
--         media := media + nota;
--         --contar mais um
--         contador := contador + 1;
--         --gerar outro valor, atualizando a variavel nota, garantindo a eventual saida
--         SELECT valor_aleatorio_entre(0, 11) - 1 INTO nota;
--     END LOOP;
--         --se pelo menos uma nota tiver sido gerada, calcular a média
--         if media >= 0 THEN
--             media := media / contador;
--             RAISE NOTICE '%', media;
--         --senão, informar que nenhuma nota foi gerada
--         ELSE
--             RAISE NOTICE 'Nenhuma nota foi gerada';
--         END IF;
-- END;
-- $$

-- DO $$
-- DECLARE
--     i INT;
--     j INT;
-- BEGIN
--     i := 0;
--     <<Externo>>
--     LOOP
--         i := i + 1;
--         EXIT WHEN i > 10;
--         j := 1;
--         <<interno>>
--         LOOP
--             RAISE NOTICE '% %', i, j;
--             j := j + 1;
--             EXIT WHEN j > 10;
--         END LOOP;
--     END LOOP;
-- END;
-- $$



-- DO $$
-- DECLARE
--     contador INT := 1;
-- BEGIN
--     LOOP
--         contador := contador + 1;
--         EXIT WHEN contador > 100;
--         IF contador % 7 = 0 THEN
--             CONTINUE;
--         END IF;
--         CASE contador
--             WHEN 11, 22, 33 THEN
--                 CONTINUE;
--             ELSE
--                 contador := contador;
--         END CASE;
--         RAISE NOTICE 'Contador: %', contador;
--     END LOOP;
-- END;
-- $$



-- DO $$
-- DECLARE
--     contador INT := 1;
-- BEGIN
--     LOOP
--         RAISE NOTICE '%', contador;
--         contador := contador + 1;
--         EXIT WHEN contador > 10;
--         -- If contador >10 THEN
--         --     EXIT;
--         -- END IF;
--     END LOOP;
-- END;
-- $$






-- loop simples

-- DO $$
--     BEGIN
--         LOOP
--             RAISE NOTICE "Teste loop simples ...";
--         END LOOP;
--     END; 
-- $$



-- CREATE OR REPLACE FUNCTION valor_aleatorio_entre (lim_inferior INT, lim_superior
-- INT) RETURNS INT AS
-- $$
-- BEGIN
-- RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END;
-- $$ LANGUAGE plpgsql;

