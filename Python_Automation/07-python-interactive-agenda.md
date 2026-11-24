# 🐍 Desarrollo de Herramienta CLI y Lógica Defensiva - Agenda Interactiva (Python)

* 📓 **Portafolio Visual:** [` Notion · Portafolio de Sadoc Guevara ↗ `](https://app.notion.com/p/Pruebas-de-Integraci-n-End-to-End-y-Validaci-n-de-Base-de-Datos-con-SQL-Urban-Routes-409ba734c6e280ba9fd2cd561dbc6cae?source=copy_link)
* 💼 **LinkedIn:** [` LinkedIn · Izanami Sadoc Guevara ↗ `](https://www.linkedin.com/in/izanami-sadoc-guevara-casillas/)
* 📧 **Correo:** [` izanamisadoc@gmail.com ↗ `](mailto:izanamisadoc@gmail.com)


## 🎫 Contexto de Negocio e Historia de Usuario (Iniciativa Propia - Sprint 7)

**Motivo de la Solución:**
Como parte de la transición técnica hacia **QA Automation** (respaldado por la insignia *Aprendiz de Python*), identifiqué una oportunidad de mejora operativa: el equipo gestionaba contactos de entornos de prueba y responsables técnicos en archivos de texto plano sin formato. Esto provocaba búsquedas lentas y errores humanos al actualizar registros. Desarrollé esta aplicación interactiva en consola (**CLI**) para centralizar las operaciones CRUD de forma rápida, estructurada y resistente a fallos de usuario.

> **User Story:** *"Como **Coordinador de Pruebas**, quiero **gestionar un directorio de contactos en consola mediante un menú interactivo (añadir, buscar, editar, eliminar y listar)**, para **agilizar la consulta de responsables técnicos eliminando errores de captura y caídas del programa**."*

---

## 🏗️ Arquitectura de Datos y Decisiones Técnicas

Para garantizar un rendimiento óptimo en memoria, se evaluaron distintas estructuras nativas de Python antes de definir la arquitectura final:

| Estructura Evaluada | Comportamiento en el Sistema | Decisión Arquitectónica |
| :--- | :--- | :---: |
| **Diccionario (`dict`)** | Almacena pares únicos `{nombre: telefono}`. Permite mutabilidad total y búsqueda directa en tiempo constante sin recorrer índices. | ✅ **Seleccionada** |
| **Lista (`list`)** | Almacena elementos secuenciales por índice numérico (`0, 1, 2...`), dificultando la asociación directa entre nombre y teléfono. | ❌ Descartada |
| **Tupla (`tuple`)** | Estructura inmutable que impide añadir, editar o eliminar contactos una vez inicializada la sesión. | ❌ Descartada |

---

## 🛡️ Calidad de Código y Programación Defensiva (Mentalidad QA)

Aplicando principios de aseguramiento de calidad directamente en el desarrollo del script, se implementaron controles preventivos contra excepciones críticas:

* **Prevención de `KeyError`:** Validación previa de pertenencia (`if nombre in agenda:`) antes de ejecutar consultas, ediciones o eliminaciones mediante el método `.pop()`, evitando que el programa colapse si el usuario ingresa un contacto inexistente.
* **Control de Flujo y Entradas Inválidas:** Captura de opciones fuera del rango permitido (`1-5`) en la estructura condicional `if-elif-else`, devolviendo retroalimentación clara en consola sin interrumpir la ejecución.
* **Refactorización de Salida (UX en Consola):** Manipulación de cadenas (`.replace()`) en la opción de listado general para transformar el diccionario crudo en un directorio limpio, ordenado y legible para el usuario final.

---

## 📂 Artefactos Relacionados
`05-python-interactive-agenda.md` — Especificación técnica, justificación de estructuras de datos y controles de calidad.
* 📓 **[Cuaderno Funcional en Jupyter (`agenda_contactos_interactiva.ipynb`)](./agenda_contactos_interactiva.ipynb)**
