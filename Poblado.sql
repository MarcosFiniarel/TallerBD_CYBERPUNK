-- ====================================================================
-- SCRIPT DE POBLADO DE DATOS (DATA SEEDING) - NIGHT CITY SYSTEM
-- ====================================================================

-- --------------------------------------------------------------------
-- 1. INSERCIÓN DE 10 FIXERS
-- (Incluye los 3 alias requeridos)
-- --------------------------------------------------------------------
INSERT INTO FIXER (alias) VALUES ('M4M4 BUB4');
INSERT INTO FIXER (alias) VALUES ('R3D F4C3');
INSERT INTO FIXER (alias) VALUES ('M4D4M3 L1P5');
INSERT INTO FIXER (alias) VALUES ('D4K0T4 SM1TH');
INSERT INTO FIXER (alias) VALUES ('MR H4ND5');
INSERT INTO FIXER (alias) VALUES ('P4DR3 184RR4');
INSERT INTO FIXER (alias) VALUES ('W4K4K0 0K4D4');
INSERT INTO FIXER (alias) VALUES ('D1N0 D1N0V1C');
INSERT INTO FIXER (alias) VALUES ('MU4M4R R3Y35');
INSERT INTO FIXER (alias) VALUES ('R3G1N4 J0N35');

-- --------------------------------------------------------------------
-- 2. INSERCIÓN DE 20 MERCS
-- (Incluye los 4 alias requeridos y rankings variados para Tiers E a SSS)
-- --------------------------------------------------------------------
INSERT INTO MERC (alias, ranking) VALUES ('BLU3 0N1', 6500);         -- Tier SSS
INSERT INTO MERC (alias, ranking) VALUES ('DR M0RV1L3', 3500);       -- Tier SS
INSERT INTO MERC (alias, ranking) VALUES ('HY0N1N M4RT1N3Z', 1100); -- Tier A
INSERT INTO MERC (alias, ranking) VALUES ('L3TZ', 1800);             -- Tier S
INSERT INTO MERC (alias, ranking) VALUES ('V', 6200);            -- Tier SSS
INSERT INTO MERC (alias, ranking) VALUES ('J4CK13 W', 800);          -- Tier B
INSERT INTO MERC (alias, ranking) VALUES ('T4M3R R10', 450);         -- Tier C
INSERT INTO MERC (alias, ranking) VALUES ('SH4D0W BB', 150);         -- Tier D
INSERT INTO MERC (alias, ranking) VALUES ('N00B CYB3R', 50);          -- Tier E
INSERT INTO MERC (alias, ranking) VALUES ('GH05T K1LL3R', 3200);      -- Tier SS
INSERT INTO MERC (alias, ranking) VALUES ('5P1D3R', 1400);       -- Tier A
INSERT INTO MERC (alias, ranking) VALUES ('V4LKYR13', 2800);         -- Tier S
INSERT INTO MERC (alias, ranking) VALUES ('5L3DG3', 750);            -- Tier B
INSERT INTO MERC (alias, ranking) VALUES ('PH4NT0M', 320);           -- Tier C
INSERT INTO MERC (alias, ranking) VALUES ('R3R3 R1D3R', 110);        -- Tier D
INSERT INTO MERC (alias, ranking) VALUES ('Z3R0 C00L', 20);          -- Tier E
INSERT INTO MERC (alias, ranking) VALUES ('N30 ON', 1900);           -- Tier S
INSERT INTO MERC (alias, ranking) VALUES ('BL4CK M4MB4', 1050);      -- Tier A
INSERT INTO MERC (alias, ranking) VALUES ('CYB3R D4M4G3', 620);      -- Tier B
INSERT INTO MERC (alias, ranking) VALUES ('V3N0M 5N4K3', 410);       -- Tier C

-- --------------------------------------------------------------------
-- 3. INSERCIÓN DE 100 CONTRATOS
-- (Distribuidos aleatoriamente entre los 10 Fixers con id_fixer 1..10)
-- --------------------------------------------------------------------
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rescate en Pacífica', 'Extraer al rehén del grupo de los Hijos del Cemento.', 1500, 200, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Sabotaje de Servidores', 'Infiltrarse en Arasaka y cargar un malware.', 4500, 1200, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Defensa de Territorio', 'Defender el Tasty33 del inminente ataque y matar a M4M4 BUB4', 6000, 3000, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Eliminación Objetivo A', 'Neutralizar al líder de la banda local en Watson.', 2500, 400, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Robo de Prototipo', 'Sustraer el chip cibernético de Militech.', 8000, 3200, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Hackeo de Antena', 'Intervenir la señal de transmisión del distrito centro.', 1200, 150, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Avanzada Nocturna', 'Limpiar el almacén abandonado en Santo Domingo.', 2000, 350, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Recuperación de Datos', 'Obtener el disco duro con las transacciones ilegales.', 3500, 900, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Protección de Convoy', 'Defender el camión de suministros en Badlands.', 5000, 1600, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Asalto a la Fortaleza', 'Destruir el centro de operaciones en la zona franca.', 12000, 6200, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Proteccion en el asalto', 'Proteger a M4M4 BUB4 durante el ataque al Tasty33', 1800, 1800, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Asalto al Tasty33', 'Atacar y destruir el Tasty33', 1800, 650, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rastreo de Señal', 'Ubicar la fuente de interferencia en el distrito industrial.', 1100, 120, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Interceptar Cargamento', 'Robar el convoy blindado antes de cruzar el puente.', 7500, 3100, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Duelo de Netrunners', 'Desconectar al hacker rival que ataca la red del Fixer.', 4000, 1100, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Sombra Urbana', 'Seguir al sospechoso sin ser detectado.', 1800, 250, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Emboscada en el Callejón', 'Eliminar a los cobradores de deudas ilegales.', 2200, 380, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Contrabando de Implantes', 'Entregar la caja con cibernética en el puerto.', 3200, 800, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Defensa del Taller', 'Repeler el ataque de la banda sobre el taller mecánico.', 2700, 500, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Operación Fantasma', 'Extraer información clasificada sin dejar rastro.', 9000, 3500, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Escolta de Emergencia', 'Llevar al médico al lugar del accidente bajo fuego.', 2100, 300, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Llama Cibernética', 'Destruir los vehículos de transporte de la competencia.', 3800, 950, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rescate en los Baladles', 'Encontrar al explorador perdido en el desierto.', 1600, 220, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Ataque a la Red', 'Inhabilitar los cortafuegos del casino clandestino.', 5200, 1700, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Captura de Droide', 'Recuperar el bot militar fuera de control.', 6500, 2100, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Vigilancia Nocturna', 'Monitorear la reunión entre las corporaciones rivales.', 1400, 180, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Justicia de Barrio', 'Ajustar cuentas con el extorsionador de comerciantes.', 2300, 420, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Extracción de Cripto', 'Recuperar las llaves privadas del terminal afectado.', 4800, 1300, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Golpe al Laboratorio', 'Infiltrarse y destruir las muestras bioquímicas.', 8500, 3300, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Operación Apagón', 'Corta la energía de todo el sector comercial.', 11000, 6000, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Infiltración en el Club', 'Obtener las grabaciones de las cámaras de seguridad.', 2600, 550, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Contrata de Choque', 'Detener el avance de las fuerzas mercenarias enemigas.', 7000, 2900, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Patrulla de Pasillo', 'Mantener seguro el perímetro del edificio residencial.', 1000, 80, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Robo de Software', 'Copiar los planos del nuevo dron de combate.', 4200, 1050, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Eliminación del Delator', 'Evitar que el testigo declare contra el Fixer.', 3600, 880, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Sombra en el Metro', 'Interceptar la entrega en la estación subterránea.', 1900, 280, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Caza de Recompensas', 'Capturar al fugitivo con orden de búsqueda.', 3100, 720, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Infección de Red', 'Plantar un troyano en el mainframe del hotel.', 4900, 1450, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rescate VIP II', 'Extraer al embajador atrapado en la emboscada.', 9500, 4000, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Protocolo de Extinción', 'Eliminar las pruebas del proyecto secreto.', 13000, 6400, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Mensajería de Riesgo', 'Entregar el paquete confidencial en el sector 4.', 1300, 140, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Desmantelamiento', 'Inhabilitar la torreta de defensa automática.', 2900, 680, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Limpieza de Garaje', 'Recuperar los vehículos robados del depósito.', 2400, 480, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Ataque Sorpresa', 'Sorprender a los contrabandistas durante el intercambio.', 3700, 920, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Hackeo de Satélite', 'Redirigir las transmisiones a la antena privada.', 5500, 1950, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rastreo de Mercancía', 'Descubrir la ruta secreta de transporte de armas.', 1700, 210, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Defensa del Convento', 'Proteger el refugio de los ataques de la pandilla.', 3300, 780, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Infiltración en la Red', 'Obtener acceso administrativo al nodo central.', 4600, 1250, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Operación Relámpago', 'Realizar la extracción en menos de 5 minutos.', 8200, 3100, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Control Total', 'Tomar el control de la torre de comunicaciones.', 10500, 5800, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Avanzada Subterránea', 'Explorar los túneles abandonados en búsqueda de tecnología.', 1500, 190, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Extracción en el Casino', 'Extraer al jugador que descubrió la trampa.', 3400, 850, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Protección de Carga', 'Vigilar la bahía de carga durante el desembarco.', 2100, 330, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Sabotaje de Generadores', 'Apagar los sistemas principales de la fábrica.', 4100, 1000, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Caza de Hackers', 'Rastrear al netrunner que filtró la información.', 5800, 2200, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Reconocimiento Aéreo', 'Operar el dron para mapear la fortaleza enemiga.', 1200, 160, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Recuperación de Dispositivo', 'Sustraer el decodificador de la caja fuerte.', 2800, 600, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Ataque al Nodo', 'Destruir el servidor secundario de respaldo.', 4700, 1380, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Guerra Corporativa', 'Eliminar la escolta del directivo en la autopista.', 9200, 3800, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Invasión Total', 'Infiltrarse en el piso más alto del rascacielos.', 14000, 6800, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Vigilancia en la Torre', 'Escanear el tráfico de datos del sector norte.', 1600, 230, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Emboscada al Convoy', 'Detener la caravana enemiga antes de que llegue a la base.', 3900, 980, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Patrulla de Perímetro', 'Asegurar las vías de acceso a la zona industrial.', 1150, 110, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Caza de Clandestinos', 'Encontrar el laboratorio ilegal de estimulantes.', 4300, 1120, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Robo de Archivos', 'Descargar la base de datos de empleados VIP.', 5600, 2050, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Sombra en el Puerto', 'Supervisar el muelle durante la entrega de armas.', 1850, 270, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rescate en la Prisión', 'Liberar al informante retenido en la comisaría.', 3500, 890, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Intercepción de Datos', 'Capturar las transmisiones de radio de la policía.', 5100, 1600, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Infiltración Estratégica', 'Reemplazar las credenciales del sistema de seguridad.', 8800, 3450, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Ataque Decisivo', 'Destruir la sede central del grupo rival.', 12500, 6100, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Protección de Almacén', 'Repeler el intento de robo en el depósito central.', 2250, 390, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Sabotaje Industrial', 'Contaminar los depósitos de combustible militar.', 4400, 1180, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Escolta de Contrabandistas', 'Guiar al grupo a través de los puntos de control.', 2500, 520, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Eliminación de Franco', 'Neutralizar al tirador apostado en el tejado.', 3600, 870, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Infiltración Nocturna', 'Desactivar las alarmas del complejo de oficinas.', 5900, 2300, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rastreo de Convoy', 'Instalar el localizador GPS en el camión cisterna.', 1450, 170, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Cobro de Cuenta', 'Recuperar el dinero adeudado al Fixer por la fuerza.', 2950, 660, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Extracción Digital', 'Copiar el kernel del sistema operacional secreto.', 5300, 1750, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rescate de Alto Riesgo', 'Extraer al científico del complejo de máxima seguridad.', 9100, 3700, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Operación Ragnarok', 'Destruir todos los nodos de comunicación de la corporación.', 13500, 6600, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Limpieza de Distrito', 'Eliminar las amenazas de la zona de patrulla.', 1750, 240, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Intercepción Marítima', 'Abordar la embarcación y asegurar el contenedor.', 4050, 1020, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Patrulla Nocturna II', 'Asegurar las inmediaciones del mercado central.', 1300, 130, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Desmantelamiento de Red', 'Desconectar los terminales de minería ilegal.', 4250, 1080, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Captura de Datos VIP', 'Descargar los registros de vuelo de la nave corporativa.', 5750, 2150, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Vigilancia de Perímetro', 'Monitorear la entrada del callejón durante la noche.', 1550, 200, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Defensa de la Estación', 'Proteger el repetidor de radio local.', 3050, 710, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Hackeo Estratégico', 'Inhabilitar los sistemas defensivos de la fortaleza.', 5400, 1850, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Operación Sombra', 'Extraer los prototipos del laboratorio bajo tierra.', 9400, 3900, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Golpe Final', 'Eliminar al comando de operaciones especiales enemigas.', 15000, 7000, 10);

INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rescate Urbano', 'Extraer al mensajero acorralado en la calle principal.', 2050, 310, 1);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Ataque a la Red II', 'Infectar el servidor de correo con el virus diseñado.', 3750, 930, 2);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Escolta de Suministros', 'Acompañar al transporte médico hasta el hospital.', 2350, 460, 3);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Caza de Espías', 'Neutralizar al agente infiltrado en la organización.', 4150, 1040, 4);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Robo en el Servidor', 'Obtener las llaves de acceso del nivel central.', 6100, 2400, 5);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Rastreo de Frecuencia', 'Ubicar el origen del mensaje codificado.', 1650, 220, 6);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Protección de la Bóveda', 'Defender la caja fuerte del intento de voladura.', 3250, 760, 7);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Intercepción de Transmisión', 'Grabar la conversación secreta entre los altos mandos.', 5250, 1720, 8);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Operación Titán', 'Inhabilitar el tanque urbano fuera de servicio.', 9600, 4100, 9);
INSERT INTO CONTRACT (nombre, descripcion, pago, ranking, id_fixer) VALUES ('Juicio de Night City', 'Eliminar al líder supremo del cartel enemigo.', 16000, 7500, 10);

COMMIT;

-- --------------------------------------------------------------------
-- 4. ACTUALIZACION DE 60 CONTRATOS
-- (Distribuidos aleatoriamente entre diferentes merc)
-- --------------------------------------------------------------------
UPDATE CONTRACT SET id_merc = 1 WHERE id = 3;
UPDATE CONTRACT SET id_merc = 2 WHERE id = 7;
UPDATE CONTRACT SET id_merc = 3 WHERE id = 12;
UPDATE CONTRACT SET id_merc = 4 WHERE id = 15;
UPDATE CONTRACT SET id_merc = 5 WHERE id = 19;
UPDATE CONTRACT SET id_merc = 6 WHERE id = 22;
UPDATE CONTRACT SET id_merc = 7 WHERE id = 25;
UPDATE CONTRACT SET id_merc = 8 WHERE id = 28;
UPDATE CONTRACT SET id_merc = 9 WHERE id = 31;
UPDATE CONTRACT SET id_merc = 10 WHERE id = 34;
UPDATE CONTRACT SET id_merc = 11 WHERE id = 37;
UPDATE CONTRACT SET id_merc = 12 WHERE id = 40;
UPDATE CONTRACT SET id_merc = 13 WHERE id = 43;
UPDATE CONTRACT SET id_merc = 14 WHERE id = 46;
UPDATE CONTRACT SET id_merc = 15 WHERE id = 49;
UPDATE CONTRACT SET id_merc = 16 WHERE id = 52;
UPDATE CONTRACT SET id_merc = 17 WHERE id = 55;
UPDATE CONTRACT SET id_merc = 18 WHERE id = 58;
UPDATE CONTRACT SET id_merc = 19 WHERE id = 61;
UPDATE CONTRACT SET id_merc = 20 WHERE id = 64;
UPDATE CONTRACT SET id_merc = 1 WHERE id = 67;
UPDATE CONTRACT SET id_merc = 2 WHERE id = 70;
UPDATE CONTRACT SET id_merc = 3 WHERE id = 73;
UPDATE CONTRACT SET id_merc = 4 WHERE id = 76;
UPDATE CONTRACT SET id_merc = 5 WHERE id = 79;
UPDATE CONTRACT SET id_merc = 6 WHERE id = 82;
UPDATE CONTRACT SET id_merc = 7 WHERE id = 85;
UPDATE CONTRACT SET id_merc = 8 WHERE id = 88;
UPDATE CONTRACT SET id_merc = 9 WHERE id = 91;
UPDATE CONTRACT SET id_merc = 10 WHERE id = 94;
UPDATE CONTRACT SET id_merc = 11 WHERE id = 97;
UPDATE CONTRACT SET id_merc = 12 WHERE id = 100;
UPDATE CONTRACT SET id_merc = 13 WHERE id = 1;
UPDATE CONTRACT SET id_merc = 14 WHERE id = 4;
UPDATE CONTRACT SET id_merc = 15 WHERE id = 8;
UPDATE CONTRACT SET id_merc = 16 WHERE id = 11;
UPDATE CONTRACT SET id_merc = 17 WHERE id = 14;
UPDATE CONTRACT SET id_merc = 18 WHERE id = 17;
UPDATE CONTRACT SET id_merc = 19 WHERE id = 20;
UPDATE CONTRACT SET id_merc = 20 WHERE id = 23;
UPDATE CONTRACT SET id_merc = 1 WHERE id = 26;
UPDATE CONTRACT SET id_merc = 2 WHERE id = 29;
UPDATE CONTRACT SET id_merc = 3 WHERE id = 32;
UPDATE CONTRACT SET id_merc = 4 WHERE id = 35;
UPDATE CONTRACT SET id_merc = 5 WHERE id = 38;
UPDATE CONTRACT SET id_merc = 6 WHERE id = 41;
UPDATE CONTRACT SET id_merc = 7 WHERE id = 44;
UPDATE CONTRACT SET id_merc = 8 WHERE id = 47;
UPDATE CONTRACT SET id_merc = 9 WHERE id = 50;
UPDATE CONTRACT SET id_merc = 10 WHERE id = 53;
UPDATE CONTRACT SET id_merc = 11 WHERE id = 56;
UPDATE CONTRACT SET id_merc = 12 WHERE id = 59;
UPDATE CONTRACT SET id_merc = 13 WHERE id = 62;
UPDATE CONTRACT SET id_merc = 14 WHERE id = 65;
UPDATE CONTRACT SET id_merc = 15 WHERE id = 68;
UPDATE CONTRACT SET id_merc = 16 WHERE id = 71;
UPDATE CONTRACT SET id_merc = 17 WHERE id = 74;
UPDATE CONTRACT SET id_merc = 18 WHERE id = 77;
UPDATE CONTRACT SET id_merc = 19 WHERE id = 80;
COMMIT;