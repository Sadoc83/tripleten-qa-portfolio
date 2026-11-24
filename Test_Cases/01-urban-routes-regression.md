# 🚕 Reporte Ejecutivo: Pruebas de Regresión - Urban Routes (Release 1.4)

* 📓 **Portafolio Visual:** [` Notion · Portafolio de Sadoc Guevara ↗ `](https://app.notion.com/p/Pruebas-de-Regresi-n-en-Plataforma-de-Movilidad-Urbana-Urban-Routes-Release-1-4-008ba734c6e283e38735817ec9691ced?source=copy_link)
* 💼 **LinkedIn:** [` LinkedIn · Izanami Sadoc Guevara ↗ `](https://www.linkedin.com/in/izanami-sadoc-guevara-casillas/)
* 📧 **Correo:** [` izanamisadoc@gmail.com ↗ `](mailto:izanamisadoc@gmail.com)


## 🎫 Contexto de Negocio e Historia de Usuario

**Motivo de la Solución:**
Previo al despliegue del **Release 1.4**, se implementaron cambios internos en los módulos de geolocalización y cálculo de tarifas de *Urban Routes*. El objetivo de este ciclo de regresión fue mitigar el riesgo de fallos en producción que pudieran bloquear la solicitud de viajes o mostrar cobros erróneos a los clientes.

> **User Story:** *"Como **Usuario de movilidad urbana**, quiero **ingresar mis direcciones de origen y destino, visualizar tarifas transparentes por modo de transporte y gestionar la reserva de mi taxi sin bloqueos**, para **completar mis traslados de forma rápida y confiable**."*

---

## 📊 Métricas del Ciclo de Pruebas

| Indicador | Resultado | Porcentaje |
| :--- | :---: | :---: |
| **Total de Casos Planificados** | 11 | 100% |
| **Casos Ejecutados** | 11 | 100% |
| **Casos Aprobados (Passed)** | 8 | 72.7% |
| **Casos Fallidos (Failed)** | 3 | 27.3% |
| **Defectos Críticos Confirmados** | 3 | - |

---

## 🐛 Defectos Confirmados (Bug Tracking)

Durante la ejecución se aislaron **3 defectos críticos** que impactaban directamente el cumplimiento de la Historia de Usuario:

| ID del Bug | Caso Asociado | Módulo | Descripción del Hallazgo |
| :--- | :--- | :--- | :--- |
| **`BR1`** | `CASO-1` | UI / Geolocalización | Falla en la persistencia de datos y renderizado del pin en el mapa al seleccionar una dirección válida en el campo *"Desde"*. |
| **`BR2`** | `CASO-2` | UI / Geolocalización | Falla en la persistencia de datos y renderizado del pin en el mapa al seleccionar una dirección válida en el campo *"Hasta"*. |
| **`BR3`** | `CASO-9` | Flujo de Reserva | Bloqueo crítico de la interfaz (*UI Lock*) al intentar cerrar o cancelar la pantalla de espera de vehículo; la app no regresa al estado anterior. |

---

## 🔍 Auditoría Técnica (DevTools)
* **Validación de Red (`CASO-3`):** Inspección en la pestaña *Network* confirmando respuesta **`HTTP 200 OK`** al calcular rutas válidas.
* **Control de Excepciones (`CASO-7` y `CASO-11`):** Monitoreo en la pestaña *Console* garantizando ausencia de errores críticos en rojo al enviar campos vacíos o caracteres especiales (`@@##$$`).
* **Lógica de Tarifas (`CASO-4` a `CASO-6`):** Validación exitosa de tiempos y costos diferenciados entre los modos *Óptimo*, *Flash* y *Personal*.

---

## 📂 Artefactos Relacionados
`01-urban-routes-regression.md` — Reporte ejecutivo y métricas del ciclo de pruebas.
* 📊 **[Matriz de Casos de Prueba y Reporte de Errores (.xlsx)][google-sheets-proyecto1]





[google-sheets-proyecto1]:https://docs.google.com/spreadsheets/d/1LE36G4Bc_343RE8ZsLnKBr_SzWfINQrSfF8DZkQY0Q0/edit?gid=1506932352#gid=1506932352