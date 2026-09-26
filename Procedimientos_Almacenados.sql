-- MANTENCION DE LA INTEGRIDAD DE LOS DATOS

-- VALIDACION DE ALIAS, NOMBRE, DESCRIPCIONES, RANKINGS Y TIERS

CREATE OR REPLACE PACKAGE PCK_VALIDACIONES IS

    FUNCTION F_VALIDAR_TEXTO(p_texto IN VARCHAR2) RETURN BOOLEAN;
    FUNCTION F_VALIDAR_POSITIVO(p_positivo IN NUMBER) RETURN BOOLEAN;
    PROCEDURE P_CALCULAR_TIER(p_ranking IN NUMBER, p_tier OUT VARCHAR2);
    FUNCTION F_PUNTAJE_TIER(p_tier IN VARCHAR2) RETURN NUMBER;

END PCK_VALIDACIONES;
/

CREATE OR REPLACE PACKAGE BODY PCK_VALIDACIONES IS

    FUNCTION F_VALIDAR_TEXTO(p_texto IN VARCHAR2) RETURN BOOLEAN IS
    BEGIN
        IF TRIM(p_texto) IS NULL THEN
            RETURN FALSE;
        END IF;
        RETURN TRUE;
    END F_VALIDAR_TEXTO;

    FUNCTION F_VALIDAR_POSITIVO(p_positivo IN NUMBER) RETURN BOOLEAN IS
    BEGIN
        IF p_positivo < 0 THEN
            RETURN FALSE;
        END IF;
        RETURN TRUE;
    END F_VALIDAR_POSITIVO;

    PROCEDURE P_CALCULAR_TIER(p_ranking IN NUMBER, p_tier OUT VARCHAR2) IS
    BEGIN
        CASE
            WHEN p_ranking >= 6000 THEN p_tier := 'SSS';
            WHEN p_ranking >= 3000 THEN p_tier := 'SS';
            WHEN p_ranking >= 1500 THEN p_tier := 'S';
            WHEN p_ranking >= 1000 THEN p_tier := 'A';
            WHEN p_ranking >= 600 THEN p_tier := 'B';
            WHEN p_ranking >= 300 THEN p_tier := 'C';
            WHEN p_ranking >= 100 THEN p_tier := 'D';
            ELSE p_tier := 'E';
        END CASE;
    END P_CALCULAR_TIER;

    FUNCTION F_PUNTAJE_TIER(p_tier IN VARCHAR2) RETURN NUMBER IS
    BEGIN
        CASE p_tier
            WHEN 'SSS' THEN RETURN 450;
            WHEN 'SS' THEN RETURN 300;
            WHEN 'S' THEN RETURN 150;
            WHEN 'A' THEN RETURN 50;
            WHEN 'B' THEN RETURN 40;
            WHEN 'C' THEN RETURN 30;
            WHEN 'D' THEN RETURN 20;
            ELSE RETURN 10;
        END CASE;
    END F_PUNTAJE_TIER;

END PCK_VALIDACIONES;
/

-- TRIGGER DE MERC

-- TRIGGER DE INSERCION Y ACTUALIZACION DE MERC

CREATE OR REPLACE TRIGGER TGR_I_U_MERC
BEFORE INSERT OR UPDATE ON MERC
FOR EACH ROW
BEGIN

    IF UPDATING('id') THEN    
        RAISE_APPLICATION_ERROR(-20003,'¡¡¡¡¡ 3RR0R: 1D N0 M0D1F1C4BL3 !!!!!');
    END IF;

    IF NOT PCK_VALIDACIONES.F_VALIDAR_TEXTO(:NEW.alias) THEN
        RAISE_APPLICATION_ERROR(-20001,'¡¡¡¡¡ 3RR0R: 4L145 D3L M3RC 3N BL4NC0 !!!!!');
    END IF;

    IF NOT PCK_VALIDACIONES.F_VALIDAR_POSITIVO(:NEW.ranking) THEN
        RAISE_APPLICATION_ERROR(-20002,'¡¡¡¡¡ 3RR0R: R4NK1NG D3L M3RC N3G4T1V0 !!!!!');
    END IF;

    PCK_VALIDACIONES.P_CALCULAR_TIER(:NEW.ranking,:NEW.tier);

    IF INSERTING THEN
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------M3RC ' || :NEW.alias || ' 1N53RT4D0----------------------------------------');
    ELSE
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------M3RC ' || :NEW.alias || ' 4CTU4L1Z4D0----------------------------------------');
    END IF;

END;
/

-- TRIGGER DE ASIGNACION DE WALLET DEL MERC

CREATE OR REPLACE TRIGGER TGR_A_WALLET
AFTER INSERT ON MERC
FOR EACH ROW
BEGIN

    INSERT INTO WALLET (id_merc,fondos) VALUES(:NEW.id,0);
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------W4LL3T 451GN4DA C0N 3X1T0----------------------------------------');

END;
/

-- TRIGGER DE INSERCION Y ACTUALIZACION DE FIXER

CREATE OR REPLACE TRIGGER TGR_I_U_FIXER
BEFORE INSERT OR UPDATE ON FIXER
FOR EACH ROW
BEGIN

    IF UPDATING('id') THEN    
        RAISE_APPLICATION_ERROR(-20003,'¡¡¡¡¡ 3RR0R: 1D N0 M0D1F1C4BL3 !!!!!');
    END IF;

    IF NOT PCK_VALIDACIONES.F_VALIDAR_TEXTO(:NEW.alias) THEN
        RAISE_APPLICATION_ERROR(-20101,'¡¡¡¡¡ 3RR0R: 4L145 D3L F1X3R 3N BL4NC0 !!!!!');
    END IF;

    IF INSERTING THEN
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------F1X3R ' || :NEW.alias || ' 1N53RT4D0----------------------------------------');
    ELSE
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------F1X3R ' || :NEW.alias || ' 4CTU4L1Z4D0----------------------------------------');
    END IF;

END;
/

-- TRIGGER DE INSERCION Y ACTUALIZACION DE CONTRATOS

CREATE OR REPLACE TRIGGER TGR_I_U_CONTRACT
BEFORE INSERT OR UPDATE ON CONTRACT
FOR EACH ROW
BEGIN

    IF UPDATING('id') THEN    
        RAISE_APPLICATION_ERROR(-20003,'¡¡¡¡¡ 3RR0R: 1D N0 M0D1F1C4BL3 !!!!!');
    END IF;

    IF NOT PCK_VALIDACIONES.F_VALIDAR_TEXTO(:NEW.nombre) THEN
        RAISE_APPLICATION_ERROR(-20201,'¡¡¡¡¡ 3RR0R: N0MBR3 D3L C0NTR4T0 3N BL4NC0 !!!!!');
    END IF;

    IF NOT PCK_VALIDACIONES.F_VALIDAR_TEXTO(:NEW.descripcion) THEN
        RAISE_APPLICATION_ERROR(-20202,'¡¡¡¡¡ 3RR0R: D3SCR1PC10N D3L C0NTR4T0 3N BL4NC0 !!!!!');
    END IF;

    IF NOT PCK_VALIDACIONES.F_VALIDAR_POSITIVO(:NEW.pago) THEN
        RAISE_APPLICATION_ERROR(-20203,'¡¡¡¡¡ 3RR0R: P4G0 D3L C0NTR4T0 N3G4T1V0 !!!!!');
    END IF;

    IF NOT PCK_VALIDACIONES.F_VALIDAR_POSITIVO(:NEW.ranking) THEN
        RAISE_APPLICATION_ERROR(-20204,'¡¡¡¡¡ 3RR0R: R4NK1NG D3L C0NTR4T0 N3G4T1V0 !!!!!');
    END IF;

    PCK_VALIDACIONES.P_CALCULAR_TIER(:NEW.ranking,:NEW.tier);

    IF INSERTING THEN
        IF :NEW.id_merc IS NOT NULL THEN
            RAISE_APPLICATION_ERROR(-20205,'¡¡¡¡¡ 3RR0R: C0NTR4T0 N0 PU3D3 R3G1STR4R53 Y4 R34L1Z4D0 !!!!!');
        END IF;
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------C0NTR4T0 ' || :NEW.nombre || ' 1N53RT4D0----------------------------------------');
    ELSE
        IF :OLD.id_merc IS NOT NULL THEN
            RAISE_APPLICATION_ERROR(-20206, '¡¡¡¡¡ 3RR0R: L05 C0NTR4T05 C0MPL3T4D05 N0 PU3D3N S3R M0D1F1C4D05 !!!!!');
        ELSIF :NEW.id_merc IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('-----------------------------------------C0NTR4T0 ' || :NEW.nombre || ' C0MPL3T4D0----------------------------------------');
        ELSE
            DBMS_OUTPUT.PUT_LINE('-----------------------------------------C0NTR4T0 ' || :NEW.nombre || ' 4CTU4L1Z4D0----------------------------------------');
        END IF;
    END IF;

END;
/

-- TRIGGER DE AUMENTO DE RANKING Y PAGO AL MERC

CREATE OR REPLACE TRIGGER TGR_R_P_CONTRACT_TO_MERC
AFTER UPDATE OF id_merc ON CONTRACT
FOR EACH ROW
DECLARE

    v_id_wallet     WALLET.id%TYPE;
    v_fondos_wallet WALLET.fondos%TYPE;

BEGIN

    UPDATE MERC
    SET ranking = ranking + PCK_VALIDACIONES.F_PUNTAJE_TIER(:NEW.tier)
    WHERE id = :NEW.id_merc;
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------R3PUT4C10N D3L M3RC 3N 4UM3NT0----------------------------------------');

    SELECT id,fondos
    INTO v_id_wallet, v_fondos_wallet
    FROM WALLET
    WHERE id_merc = :NEW.id_merc;

    INSERT INTO PAYDAY (id_wallet,id_contract,fondo_old,pago,fondo_new)
    VALUES(
        v_id_wallet,
        :NEW.id,
        v_fondos_wallet,
        :NEW.pago,
        (v_fondos_wallet + :NEW.pago)
    );

    UPDATE WALLET
    SET fondos = fondos + :NEW.pago
    WHERE id_merc = :NEW.id_merc;
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------P4G0 4L M3RC R34L1Z4D0 C0N 3X1T0----------------------------------------');

END;
/