CREATE TABLE MERC(
    id      NUMBER GENERATED AS IDENTITY PRIMARY KEY,
    alias   VARCHAR2(30) UNIQUE NOT NULL,
    ranking NUMBER NOT NULL,
    tier    VARCHAR2(3)
);

CREATE TABLE WALLET(
    id          NUMBER GENERATED AS IDENTITY PRIMARY KEY,
    id_merc     NUMBER UNIQUE NOT NULL,
    fondos      NUMBER NOT NULL,
    CONSTRAINT fk_wallet_merc FOREIGN KEY (id_merc) REFERENCES MERC(id)
);

CREATE TABLE FIXER(
    id      NUMBER GENERATED AS IDENTITY PRIMARY KEY,
    alias   VARCHAR2(30) UNIQUE NOT NULL
);

CREATE TABLE CONTRACT(
    id              NUMBER GENERATED AS IDENTITY PRIMARY KEY,
    nombre          VARCHAR2(30) NOT NULL,
    descripcion     VARCHAR2(200) NOT NULL,
    pago            NUMBER NOT NULL,
    ranking         NUMBER NOT NULL,
    tier            VARCHAR2(3),
    id_fixer        NUMBER NOT NULL,
    id_merc         NUMBER,
    CONSTRAINT fk_contract_fixer FOREIGN KEY (id_fixer) REFERENCES FIXER(id),
    CONSTRAINT fk_contract_merc FOREIGN KEY (id_merc) REFERENCES MERC(id)
);

CREATE TABLE PAYDAY(
    id          NUMBER GENERATED AS IDENTITY PRIMARY KEY,
    id_wallet   NUMBER NOT NULL,
    id_contract NUMBER NOT NULL,
    fondo_old   NUMBER NOT NULL,
    pago        NUMBER NOT NULL,
    fondo_new   NUMBER NOT NULL,
    CONSTRAINT fk_payday_wallet FOREIGN KEY (id_wallet) REFERENCES WALLET(id),
    CONSTRAINT fk_payday_contract FOREIGN KEY (id_contract) REFERENCES CONTRACT(id)
);