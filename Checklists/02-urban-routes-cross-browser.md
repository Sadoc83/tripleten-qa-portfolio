# ✅ UI Checklists & Pruebas Cross-Browser - Urban Routes

* 📓 **Portafolio Visual:** [` Notion · Portafolio de Sadoc Guevara ↗ `](https://app.notion.com/p/Validaci-n-y-Pruebas-Multiplataforma-de-Nueva-Funcionalidad-Urban-Routes-409ba734c6e280158c03db248522f757?source=copy_link)
* 💼 **LinkedIn:** [` LinkedIn · Izanami Sadoc Guevara ↗ `](https://www.linkedin.com/in/izanami-sadoc-guevara-casillas/)
* 📧 **Correo:** [` izanamisadoc@gmail.com ↗ `](mailto:izanamisadoc@gmail.com)

## 🎫 Contexto de Negocio e Historia de Usuario

**Motivo de la Solución:**
Para ampliar las opciones de movilidad económica en *Urban Routes*, el equipo de producto diseñó la nueva funcionalidad **"Compartir un automóvil"** (*Carpooling*). El objetivo técnico fue descomponer las especificaciones visuales de Figma y los requerimientos de Jira (CA-1 y CA-2) en verificaciones atómicas, asegurando que la nueva interfaz respondiera sin deformaciones ni bloqueos tanto en pantallas compactas (`800×600`) como en monitores de escritorio estándar (`1920×1080`).

> **User Story:** *"Como **Pasajero de Urban Routes**, quiero **visualizar la opción de 'Compartir un automóvil' con su tarifa y tiempo estimado, y acceder a su formulario de reserva sin errores visuales**, para **elegir una alternativa de transporte compartida desde cualquier navegador o tamaño de pantalla**."*

---

## 🎯 Alcance de las Verificaciones (CA-1 y CA-2)

* **Ingeniería de Requisitos:** Descomposición de historias de usuario de Jira en ítems de verificación atómicos de un solo objetivo.
* **Disponibilidad del Servicio (CA-1):** Validación de activación del ícono *"Compartir un automóvil"* junto a las tarifas tradicionales (*Óptimo, Flash y Personal*) y despliegue de costo/duración.
* **Transición de Interfaz y Formulario (CA-2):** Auditoría del flujo al presionar *"Reservar"*, confirmando el cambio limpio hacia el formulario de pedido (tarifa, licencia de conducir, método de pago y botón de acción).
* **Compatibilidad Multiplataforma:** Ejecución paralela en motores distintos (*Blink/Chrome* vs. *Gecko/Firefox*) bajo resoluciones extremas.

---

## 🖥️ Entornos Evaluados

| Navegador | Resolución (Viewport) | Enfoque de Validación | Estado |
| :--- | :---: | :--- | :---: |
| **Google Chrome** | `800 × 600` | Responsividad en pantallas reducidas, superposición de textos y visibilidad de botones. | ✅ Completado |
| **Mozilla Firefox** | `1920 × 1080` | Renderizado en alta resolución, alineación respecto a layouts de Figma y flujo funcional. | ✅ Completado |

---

## 📂 Artefactos en esta Carpeta
* `02-urban-routes-ui-checklist.xlsx` — Matriz completa de descomposición de requisitos, ejecución dual y reporte de errores.
* 📊 **[Ver Hoja de Cálculo Original en Google Drive][sheets-url]**

---


[sheets-url]: https://docs.google.com/spreadsheets/d/1af6NLAVEESveUovWLeAzFZkWH1_WMuudfRweB6ZiTqs/edit?gid=1544487111#gid=1544487111
