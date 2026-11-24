# 💾 Pruebas de Integración End-to-End y Validación de Base de Datos con SQL

* 📓 **Portafolio Visual:** [` Notion · Portafolio de Sadoc Guevara ↗ `](https://app.notion.com/p/Pruebas-de-Integraci-n-End-to-End-y-Validaci-n-de-Base-de-Datos-con-SQL-Urban-Routes-409ba734c6e280ba9fd2cd561dbc6cae?source=copy_link)
* 💼 **LinkedIn:** [` LinkedIn · Izanami Sadoc Guevara ↗ `](https://www.linkedin.com/in/izanami-sadoc-guevara-casillas/)
* 📧 **Correo:** [` izanamisadoc@gmail.com ↗ `](mailto:izanamisadoc@gmail.com)


## 🎫 Contexto de Negocio e Historia de Usuario

**Motivo de la Solución:**
En las arquitecturas modernas, una respuesta `HTTP 200 OK` en la API no garantiza que la información se haya guardado correctamente en el servidor. Tras detectar discrepancias en la capa de servicios (*falsos positivos*), el objetivo técnico fue ejecutar **pruebas de caja gris (Grey-Box Testing)** conectando las solicitudes de **Postman** directamente con la base de datos relacional (**SQLite**), verificando la integridad referencial, la persistencia real de los paquetes (*Kits*) y el rechazo efectivo de datos corruptos.

> **User Story:** *"Como **QA Engineer**, quiero **auditar directamente las tablas relacionales de la base de datos después de cada petición HTTP**, para **garantizar que las reglas de negocio (límite de 30 artículos únicos y bloqueo de IDs inexistentes) se cumplan a nivel de persistencia sin corromper los registros**."*

---

## 🗄️ Arquitectura Relacional Auditada (SQLite)

| Tabla / Entidad | Rol en la Prueba | Llaves Auditadas |
| :--- | :--- | :--- |
| **`user_model`** | Almacena perfiles registrados y tokens de sesión activos. | `id` (PK) |
| **`grocery_bundle_model`** | Registra la cabecera de cada paquete (*Kit*) creado por el usuario. | `id` (PK), `userId` (FK) |
| **`grocery_bundle_products`** | Tabla intermedia que vincula los productos y cantidades asignadas a cada kit. | `groceryBundleId` (FK), `productId` (FK) |

---

## 📊 Matriz de Validación End-to-End (API + SQL)

| Escenario Ejecutado en API | Respuesta HTTP | Consulta SQL de Auditoría | Hallazgo en Base de Datos |
| :--- | :---: | :--- | :--- |
| **Creación y llenado estándar (15 artículos)** | `200 OK` | `SELECT COUNT(DISTINCT productId)` | ✅ Persistencia exacta de 15 registros confirmada. |
| **Frontera superior válida (30 artículos únicos)** | `200 OK` | `LEFT JOIN` entre bundle y productos | ✅ Límite máximo de 30 artículos almacenado íntegro. |
| **Exceso de límite (31 artículos únicos)** | `200 OK` *(Bug)* | Verificación de conteo tras petición | 🐛 La API respondió éxito, pero la BD rechazó/truncó el registro excedente. |
| **Inyección de `productId` inexistente (`9999`)** | `200 OK` *(Bug)* | Búsqueda por `productId = 9999` | 🐛 Falso positivo en API; la integridad referencial en SQL bloqueó el guardado. |

---

## 🔍 Muestra de Consultas SQL Ejecutadas

*Consultas reales aplicadas en consola SQLite para auditar la integridad de los paquetes y comprobar la ausencia de registros huérfanos:*

```sql
-- 1. Auditoría de conteo de artículos únicos por paquete (Validación de regla de 30 ítems)
SELECT 
    gbm.id AS kit_id, 
    gbm.name AS nombre_paquete, 
    COUNT(DISTINCT gbp.productId) AS total_productos_unicos
FROM grocery_bundle_model gbm
LEFT JOIN grocery_bundle_products gbp 
    ON gbm.id = gbp.groceryBundleId
WHERE gbm.userId = 256 
  AND gbm.id = 265
GROUP BY gbm.id, gbm.name;

-- 2. Verificación de rechazo ante IDs de productos inexistentes o corrupción de datos
SELECT * 
FROM grocery_bundle_products 
WHERE groceryBundleId = 265 
  AND productId IN (0, -1, 9999);
```

---

## 📂 Artefactos Relacionados
`06-sql-database-validation.md` — Reporte técnico de integración End-to-End, esquema relacional y consultas de auditoría.
* 💾 **[Esquema y Datos de Prueba de la Base de Datos (`grocers-es-dump.sql`)](./grocers-es-dump.sql)**
* 📊 **[Matriz de Pruebas SQL y Evidencias de Base de Datos (.xlsx)][google-sheets-proyecto6]**


[google-sheets-proyecto6]: https://docs.google.com/spreadsheets/d/1DkxPrcQZ5xz_UeG7p3hNVjk4yp7B_QNUPNL7wjMHr-I/edit?gid=26884776#gid=26884776
