-- Active: 1710242554065@@127.0.0.1@5432@2023_Estrutura_de_seleção
-- Active: 1714478812094@@127.0.0.1@5432@20241_fatec_ipi_pbdi_selecao@public
CREATE OR REPLACE FUNCTION
    fn_gera_valor_aleatorio_entre(
        lim_inferior INT,
        lim_superior INT
    ) RETURNS INT AS $$
BEGIN
-- 13 e 17
-- RANDOM() --0 <= RANDOM() < 1
-- 13 + RANDOM() * 4
    RETURN lim_inferior +
        FLOOR(RANDOM() * (lim_superior - lim_inferior + 1))::INT;
END;
$$ LANGUAGE plpgsql;
 
-- --IF: gerar um valor aleatório em=ntre 0 e 100 e exibir a metade dele se ele for menor do que 20
-- DO $$
--     DECLARE
--         valor INT;
--     BEGIN
--         valor := fn_gera_valor_aleatorio_entre(1,100);
--         RAISE NOTICE 'O valor gerado é %', valor;
--         IF valor <= 20 THEN
--             RAISE NOTICE 'A metade do valor % é %', valor, valor / 2::FLOAT;
--         END IF;
--     END;
-- $$
 
--BETWEN: reescrever usando between
-- DO $$ DECLARE
--     valor INT;
-- BEGIN
--     valor := fn_gera_valor_aleatorio_entre(1,100);
--     RAISE NOTICE 'O valor gerado é %', valor;
--     IF valor BETWEEN 1 AND 20 THEN RAISE NOTICE 'A metade do valor % é %',
--     valor,
--     valor / 2::FLOAT;
-- END
--     IF;
-- END;
-- $$
 
-- -- -
 
-- --IF/ELSE: vrificar a paridade de um número
-- DO $$
--     DECLARE
--         valor INT := fn_gera_valor_aleatorio_entre(1,100);
--     BEGIN
--         RAISE NOTICE 'O valor gerado é %', valor;
--         IF valor% 2 BETWEEN SYMMETRIC 0 AND 0 THEN
--             RAISE NOTICE 'O valor % é par', valor;
--         ELSE
--             RAISE NOTICE 'O valor % é impar', valor;
--         END IF;
--     END;
-- $$
 
-- IF/ ELSIF/ ELSE
-- ax² + bx + c = 0
-- Active: 1714478812094@@127.0.0.1@5432@20241_fatec_ipi_pbdi_selecao@public
CREATE OR REPLACE FUNCTION
    fn_gera_valor_aleatorio_entre(
        lim_inferior INT,
        lim_superior INT
    ) RETURNS INT AS $$
BEGIN
-- 13 e 17
-- RANDOM() --0 <= RANDOM() < 1
-- 13 + RANDOM() * 4
    RETURN lim_inferior +
        FLOOR(RANDOM() * (lim_superior - lim_inferior + 1))::INT;
END;
$$ LANGUAGE plpgsql;
 
-- --IF: gerar um valor aleatório em=ntre 0 e 100 e exibir a metade dele se ele for menor do que 20
-- DO $$
--     DECLARE
--         valor INT;
--     BEGIN
--         valor := fn_gera_valor_aleatorio_entre(1,100);
--         RAISE NOTICE 'O valor gerado é %', valor;
--         IF valor <= 20 THEN
--             RAISE NOTICE 'A metade do valor % é %', valor, valor / 2::FLOAT;
--         END IF;
--     END;
-- $$
 
--BETWEN: reescrever usando between
-- DO $$ DECLARE
--     valor INT;
-- BEGIN
--     valor := fn_gera_valor_aleatorio_entre(1,100);
--     RAISE NOTICE 'O valor gerado é %', valor;
--     IF valor BETWEEN 1 AND 20 THEN RAISE NOTICE 'A metade do valor % é %',
--     valor,
--     valor / 2::FLOAT;
-- END
--     IF;
-- END;
-- $$
 
-- IF/ELSIF/ELSE
 
DO $$
    DECLARE
    a INT := fn_gera_valor_aleatoria_entre(1, 20);
    b INT := fn_gera_valor_aleatoria_entre(1, 20);
    c INT := fn_gera_valor_aleatoria_entre(1, 20);
    delta NUMERIC(10, 2);
    raizUm NUMERIC(10, 2);
    raizDois NUMERIC(10, 2);
    BEGIN
        RAISE NOTICE '%x% + %x + % = 0', a, U%'\00B2', b, c;
        IF a = 0 THEN
            RAISE NOTICE 'Não cai rolar, não é de segunda';
        ELSE
            delta := (b ^ 2) - (4 * a * c);
            IF delta > 0 THEN
                raizUm := (b * -1 + |/delta) \ (2 * a);
                raizDois := (b * -1 - |/delta) \ (2 * a);
                RAISE NOTICE "Duas raízes: % e %", raizUm, raizDois;
            ELSEIF delta = 0 THEN
                raizUm := (b * -1 + |/delta) \ (2 * a);
                RAISE NOTICE "Uma raiz de %", raizUm;
            ELSE
                RAISE NOTICE 'Sem raiz';
            END IF;
        END IF;
    END;
$$
 
--IF/ELSE: vrificar a paridade de um número
DO $$
    DECLARE
        valor INT := fn_gera_valor_aleatorio_entre(1,100);
    BEGIN
        RAISE NOTICE 'O valor gerado é %', valor;
        IF valor% 2 BETWEEN SYMMETRIC 0 AND 0 THEN
            RAISE NOTICE 'O valor % é par', valor;
        ELSE
            RAISE NOTICE 'O valor % é impar', valor;
        END IF;
    END;
$$