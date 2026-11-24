# 💳 Diseño Analítico de Pruebas: Pasarela de Pagos - Urban Routes (ECP y BVA)

* 📓 **Portafolio Visual:** [` Notion · Portafolio de Sadoc Guevara ↗ `](https://app.notion.com/p/Dise-o-de-Pruebas-Anal-ticas-y-Validaci-n-de-Formulario-de-Pagos-Urban-Routes-409ba734c6e2804f96aee3f839114c37?source=copy_link)
* 💼 **LinkedIn:** [` LinkedIn · Izanami Sadoc Guevara ↗ `](https://www.linkedin.com/in/izanami-sadoc-guevara-casillas/)
* 📧 **Correo:** [` izanamisadoc@gmail.com ↗ `](mailto:izanamisadoc@gmail.com)



## 🎫 Contexto de Negocio e Historia de Usuario

**Motivo de la Solución:**
Para integrar pagos digitales seguros dentro de *Urban Routes*, el equipo implementó el formulario **"Agregar una tarjeta"**. Dado que los campos financieros son puntos críticos de vulnerabilidad y abandono de usuarios, el objetivo técnico fue diseñar una matriz de pruebas exhaustiva pero optimizada mediante técnicas formales de **Caja Negra** (*Partición de Equivalencia* y *Análisis de Valores Límite*), asegurando que el sistema valide correctamente tarjetas reales y bloquee datos corruptos o maliciosos sin ejecutar pruebas redundantes.

> **User Story:** *"Como **Usuario de Urban Routes**, quiero **vincular mi tarjeta de crédito o débito ingresando su número de 12 dígitos y código de seguridad CVV de 2 dígitos con validaciones claras en tiempo real**, para **pagar mis viajes de forma rápida, segura y sin errores de captura**."*

---

## 🧠 Estrategia y Técnicas de Diseño Aplicadas

* **Partición de Equivalencia (ECP):** Segmentación matemática del dominio de entradas en clases válidas e inválidas (ej. numérico estricto vs. alfanumérico, caracteres especiales y campos vacíos), logrando una cobertura total con el mínimo número de casos necesarios.
* **Análisis de Valores Límite (BVA):** Evaluación intensiva exactamente en las fronteras críticas de longitud (`N-1`, `N`, `N+1`), donde estadísticamente ocurre la mayor densidad de defectos de programación.
* **Validación de Estados de Interfaz (UI States):** Auditoría del comportamiento dinámico del botón **"Agregar"** (estado deshabilitado por defecto hasta que ambos campos cumplan simultáneamente con las reglas de negocio).

---

## 📐 Matriz Analítica de Fronteras (ECP & BVA)

| Campo Evaluado | Regla de Negocio | Clase Inválida Inferior (`N-1`) | Clase Válida Exacta (`N`) | Clase Inválida Superior (`N+1`) | Clases Inválidas Adicionales (ECP) |
| :--- | :--- | :---: | :---: | :---: | :--- |
| **Número de Tarjeta** | Exactamente `12` dígitos numéricos | `11` dígitos | `12` dígitos | `13` dígitos | Letras (`abcd`), símbolos (`@@##`), campo vacío |
| **Código CVV** | Exactamente `2` dígitos numéricos | `1` dígito | `2` dígitos | `3` dígitos | Letras (`ab`), símbolos (`$%`), campo vacío |

---

## 🔍 Hitos Técnicos Validados

* **Optimización de Suite de Pruebas:** Reducción de tiempos de ejecución al eliminar datos de prueba redundantes dentro de una misma partición equivalente, manteniendo el **100% de cobertura** sobre los criterios de aceptación.
* **Prevención de Inyección de Datos Corruptos:** Verificación estricta de que el formulario rechaza cadenas alfanuméricas, espacios en blanco y caracteres especiales sin generar excepciones en la interfaz.
* **Control de Flujo del Botón de Acción:** Confirmación de que el botón *"Agregar"* permanece bloqueado ante combinaciones mixtas (ej. tarjeta válida de 12 dígitos + CVV inválido de 1 dígito).

---

## 📂 Artefactos Relacionados
`03-urban-routes-payment-bva.md` — Diseño analítico, particiones de equivalencia y matriz de fronteras.
* 📊 **[Matriz Completa de Casos de Prueba ECP/BVA y Evidencias (.xlsx)][google-sheets-proyecto3]**


[google-sheets-proyecto3]: https://docs.google.com/spreadsheets/d/1ZE6GD8ZXHB502_Pr4V2NxF9aeS9ml3XXiXrnPAhWaqI/edit?gid=791688810#gid=791688810
