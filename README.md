# TallerBD_CYBERPUNK
# 🏙️ Night City Contracts & Merc Management System (PL/SQL)

[![Oracle Database](https://img.shields.io/badge/Oracle-19c%20%7C%2021c-red?style=for-the-badge&logo=oracle)](https://www.oracle.com/database/)
[![PL/SQL](https://img.shields.io/badge/Language-PL%2FSQL-blue?style=for-the-badge)](https://www.oracle.com/database/technologies/appdev/plsql.html)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

Sistema de gestión transaccional e integridad de datos basado en el universo de **Cyberpunk**, desarrollado completamente en **Oracle PL/SQL**. El proyecto administra la relación entre **Fixers** (intermediarios), **Mercs** (mercenarios), **Contratos** y la gestión financiera a través de **Billeteras (Wallets)** y un historial de **Pagos (Payday)**.

---

## 🚀 Características Principales

- **Validación Automática e Integridad**: Paquete dedicado (`PCK_VALIDACIONES`) para centralizar la lógica de negocio y sanitización de datos.
- **Cálculo Automático de Tiers**: Clasificación dinámica de Mercenarios y Contratos en rangos (`E`, `D`, `C`, `B`, `A`, `S`, `SS`, `SSS`) según su puntuación o requerimiento de ranking.
- **Automatización mediante Triggers**:
  - Creación automática de billetera al registrar un nuevo Mercenario.
  - Prevención de modificación de identificadores únicos (`ID`) e inmutabilidad de contratos finalizados.
  - Actualización en cadena de reputación (ranking), fondos de billetera y registro de auditoría de pagos al completar encargos.
- **Manejo Estructurado de Excepciones**: Control de errores personalizados y nativos de Oracle (`NO_DATA_FOUND`, `ZERO_DIVISION`, etc.).
- **Reportería Avanzada**: Consultas analíticas mediante bucles anidados con `VARRAY` e `INNER JOIN` para determinar qué mercenarios son aptos para tomar contratos vigentes.

---

## 🛠️ Reglas de Negocio

1. **Inmutabilidad de Datos Sensibles**: Ninguna entidad (`MERC`, `FIXER`, `CONTRACT`, `WALLET`) puede modificar su columna `id` una vez registrada.
2. **Ciclo de Vida del Contrato**:
   - Un contrato recién creado no puede nacer asignado a un mercenario (`id_merc IS NULL`).
   - Al asignar un mercenario a un contrato, se asume su finalización.
   - Los contratos completados no pueden volver a editarse ni reasignarse.
3. **Reputación y Economía**:
   - Al completar un contrato, el mercenario recibe una bonificación de ranking basada en el **Tier del contrato**.
   - El aumento de ranking actualiza automáticamente el **Tier del mercenario** a través de triggers en cadena.
   - El pago acordado se transfiere a la billetera del mercenario y se genera una trazabilidad de fondos en la tabla `PAYDAY` (saldo anterior, pago, saldo nuevo).

---

