-- AUDITORIA FIXER: SE BUSCARA UN FIXER POR ID Y LUEGO SE MOSTRARAN LOS CONTRATOS QUE ESTE POSEE A SU NOMBRE Y CUANTO PORCENTAJE DE LOS CONTRATOS EN MERCADO SON SUYOS

DECLARE

    CURSOR c_contracts(p_id_fixer NUMBER) IS
        SELECT id, nombre, pago
        FROM CONTRACT
        WHERE id_fixer = p_id_fixer;
    
    v_id_fixer          FIXER.id%TYPE := 3; -- Dato en duro para pruebas
    v_alias_fixer       FIXER.alias%TYPE;
    v_total_contratos   NUMBER;
    v_contratos_fixer   NUMBER := 0;
    v_porcentaje        NUMBER;

    e_sin_contratos        EXCEPTION;

BEGIN

    SELECT id, alias
    INTO v_id_fixer, v_alias_fixer
    FROM FIXER
    WHERE id = v_id_fixer;

    DBMS_OUTPUT.PUT_LINE('-----------------------------------------F1X3R:'||v_alias_fixer||'----------------------------------------');

    FOR i_contract IN c_contracts(v_id_fixer) LOOP

        DBMS_OUTPUT.PUT_LINE('1D: ' || i_contract.id || ' || N0MBR3: ' || i_contract.nombre || ' || P4G0: ' || i_contract.pago);
        v_contratos_fixer := v_contratos_fixer + 1;

    END LOOP;

    IF v_contratos_fixer = 0 THEN
        RAISE e_sin_contratos;
    END IF;

    DBMS_OUTPUT.PUT_LINE('-------------------------------------T0T4L C0NTR4T05:'||v_contratos_fixer||'------------------------------------');

    SELECT COUNT(*)
    INTO v_total_contratos
    FROM CONTRACT;

    v_porcentaje := ROUND(v_contratos_fixer/v_total_contratos,2)*100;

    DBMS_OUTPUT.PUT_LINE('-------------------------------------% D3L M3RC4D0:'||v_porcentaje||'------------------------------------');

EXCEPTION

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------F1X3R: ¡¡¡¡¡ 3RR0R: F1X3R N0 3X15T3 !!!!!----------------------------------------');

    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------¡¡¡¡¡ 3RR0R: N0 H4Y C0NTR4T05 R3G15TR4D05 !!!!!----------------------------------------');
    
    WHEN e_sin_contratos THEN
        DBMS_OUTPUT.PUT_LINE('-------------------------------------T0T4L C0NTR4T05: ¡¡¡¡¡ 3RR0R: F1X3R 51N C0NTR4T05 !!!!!------------------------------------');

END;
/