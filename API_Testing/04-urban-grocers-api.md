# 🔌 Pruebas de API REST y Validación de Backend - Urban Grocers

* 📓 **Portafolio Visual:** [` Notion · Portafolio de Sadoc Guevara ↗ `][notion-portafolio-de-sad]
* 💼 **LinkedIn:** [` LinkedIn · Izanami Sadoc Guevara ↗ `](https://www.linkedin.com/in/izanami-sadoc-guevara-casillas/)
* 📧 **Correo:** [` izanamisadoc@gmail.com ↗ `](mailto:izanamisadoc@gmail.com)


## 🎫 Contexto de Negocio e Historia de Usuario

**Motivo de la Solución:**
Para el lanzamiento de la plataforma de comercio electrónico *Urban Grocers*, el equipo de backend desarrolló los microservicios encargados de crear cuentas de usuario y gestionar carritos de compra personalizados (*Kits* o paquetes de productos). El objetivo técnico fue auditar directamente la capa de servicios REST antes de conectar la interfaz gráfica, asegurando que la API procesara correctamente las solicitudes válidas, respetara el límite de negocio de 30 artículos por paquete y rechazara con códigos de error adecuados cualquier *payload* malformado o sin autorización.

> **User Story:** *"Como **Cliente de Urban Grocers**, quiero **registrar mi cuenta y armar paquetes personalizados de hasta 30 productos distintos mediante solicitudes seguras**, para **gestionar mis compras de supermercado sin errores de sistema ni pérdida de información**."*

---

## 🛠️ Arquitectura y Endpoints Auditados (Swagger / Postman)

| Método HTTP | Endpoint | Propósito Funcional | Autenticación |
| :---: | :--- | :--- | :---: |
| **`POST`** | `/api/v1/users` | Creación de nuevo perfil de usuario y generación dinámica de `authToken`. | No requerida |
| **`POST`** | `/api/v1/kits` | Creación de un nuevo paquete (*Kit*) vinculado al perfil del usuario. | `Bearer {token}` |
| **`POST`** | `/api/v1/kits/{id}/products` | Adición de productos (`id` y `quantity`) dentro de un paquete existente. | `Bearer {token}` |

---

## 📊 Matriz de Escenarios y Códigos de Estado Validados

| Categoría de Prueba | Escenario Evaluado | Código Esperado | Resultado en Auditoría |
| :--- | :--- | :---: | :--- |
| **Flujo Positivo (Happy Path)** | Creación de kit válido y adición dentro del límite permitido (`1` a `30` artículos). | `200 OK` / `201 Created` | ✅ Validado |
| **Valores Límite (BVA)** | Adición exacta de **30 productos** (frontera superior) vs. **31 productos** (exceso de límite). | `200 OK` vs. `400 Bad Request` | 🐛 Discrepancia detectada en límite superior |
| **Pruebas Negativas (ECP)** | Envío de lista vacía `[]`, `productId` inexistente o tipos de datos inválidos (strings en campos numéricos). | `400 Bad Request` | 🐛 Falsos positivos (`200 OK`) detectados |
| **Seguridad y Acceso** | Ejecución de solicitudes sin encabezado `Authorization` o con token expirado/inválido. | `401 Unauthorized` | ✅ Validado |

---

## 🔍 Muestra de Payload Auditado (JSON)

*Ejemplo de estructura de cuerpo (`Body`) utilizada en Postman para validar la adición de artículos al paquete:*

```json
{
  "productsList": [
    {
      "id": 1,
      "quantity": 2
    },
    {
      "id": 5,
      "quantity": 1
    }
  ]
}
```

---

## 📂 Artefactos Relacionados
`04-urban-grocers-api.md` — Especificación de endpoints, pruebas de contrato JSON y matriz de resultados HTTP.
* 📊 **[Matriz Completa de Pruebas de API y Reporte de Errores (.xlsx)][google-sheets-proyecto4]**


[google-sheets-proyecto4]: https://docs.google.com/spreadsheets/d/1qLmzbGtyIh-6ZkU-KBlry6x0hf-QGMYEdWG-kvVs19w/edit?gid=1734247392#gid=1734247392
[notion-portafolio-de-sad]: https://app.notion.com/p/Pruebas-de-API-y-Validaci-n-del-Backend-Urban-Routes-409ba734c6e2800e97f2d0e588822389?source=copy_link