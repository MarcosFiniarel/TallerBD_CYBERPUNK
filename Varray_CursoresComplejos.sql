-- COMANDO DEL ENTORNO PARA HABILITAR SALIDA SIN LIMITE DE MEMORIA
SET SERVEROUTPUT ON SIZE UNLIMITED;

-- REPORTE DONDE SE LISTAN TODOS LOS CONTRATOS REGISTRADOS Y TODOS LOS MERCS PUEDEN REALIZARLOS SEGUN SU TIER

DECLARE

    TYPE v_tier IS VARRAY(8) OF VARCHAR2(3);

    vt v_tier := v_tier('E','D','C','B','A','S','SS','SSS');

    CURSOR c_mercs(p_ranking NUMBER,p_tier VARCHAR2) IS
        SELECT id, alias, tier
        FROM MERC
        WHERE ranking >= p_ranking OR tier = p_tier
        ORDER BY ranking DESC;

    CURSOR c_contracts(p_tier VARCHAR2) IS
        SELECT C.id AS id, C.nombre AS nombre, C.descripcion AS descripcion, C.ranking AS ranking, F.alias AS fixer
        FROM CONTRACT C INNER JOIN FIXER F ON C.id_fixer = F.id
        WHERE C.tier = p_tier and C.id_merc IS NULL;

BEGIN

    FOR i_tier IN vt.FIRST..vt.LAST LOOP

    DBMS_OUTPUT.PUT_LINE('-----------------------------------------T13R:'||vt(i_tier)||'----------------------------------------');

        FOR i_contract IN c_contracts(vt(i_tier)) LOOP

            DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------');
            DBMS_OUTPUT.PUT_LINE('1D: ' || i_contract.id);
            DBMS_OUTPUT.PUT_LINE('N0MBR3: ' || i_contract.nombre);
            DBMS_OUTPUT.PUT_LINE('D35CR1PC10N: ' || i_contract.descripcion);
            DBMS_OUTPUT.PUT_LINE('F1X3R: ' || i_contract.fixer);
            DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------');
            DBMS_OUTPUT.PUT_LINE('---------------------------------------M3RC5-----------------------------------------');

            FOR i_merc IN c_mercs(i_contract.ranking,vt(i_tier)) LOOP

                DBMS_OUTPUT.PUT_LINE('1D: ' || i_merc.id || ' || 4L145: ' || i_merc.alias || ' || T13R: ' || i_merc.tier);

            END LOOP;

            DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------');

        END LOOP;

    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------------------------');

    END LOOP;

END;
/