# 📦 Proyecto SQL: Gestión de Productos y Fabricantes

Este repositorio contiene ejercicios prácticos de **PL/SQL** diseñados para aprender y practicar este lenguaje de programación de bases de datos de Oracle, aplicados al contexto de gestión de productos y fabricantes en tiendas.

🛠️ Utilizamos **Oracle XE v21.3.0**

---

## 📑 Contenido

A lo largo del repositorio encontrarás ejemplos organizados en distintos scripts que cubren desde estructuras básicas hasta funcionalidades avanzadas de PL/SQL:

- **Estructuras de control:**
  - `01.if_elsif_else`
  - `02.case`
  - `03.bucles`

- **Tipos de colecciones y select:**
  - `04.varray`
  - `05.select_into`
  - `06.into_type`
  - `07.into_row`
  - `08.into_rowtype`

- **Consultas y uniones:**
  - `09.inner_join`

- **Gestión de excepciones:**
  - `10.exception_propias` (con `RAISE`)
  - `11.exception_aplicacion` (con `RAISE_APPLICATION_ERROR`)

- **Subprogramas:**
  - `12.procedimiento`
  - `13.funcion`
  - `14.package`

- **Cursores:**
  - `15.cursor_1_tabla`
  - `16.cursor_2_tablas`
  - `17.cursor_con_parametros`

- **Triggers:**
  - `18.triggers` (validaciones, auditoría de operaciones, etc.)

---

## 📂 Archivos

- `Tienda.sql`: contiene la estructura y datos de la base de datos de ejemplo para practicar los ejercicios del repositorio.

---

## 🚀 Uso

1. Asegúrate de tener instalado Oracle Database XE u otro entorno compatible con PL/SQL.
2. Abre tu herramienta SQL favorita (como **SQL Developer**, **DBeaver**, o **Toad**).
3. Ejecuta el script `Tienda.sql` para crear y poblar la base de datos.
4. Ejecuta los scripts numerados para practicar los distintos temas.
5. Activa la salida de `DBMS_OUTPUT` en tu entorno para visualizar los resultados por consola.

---

## ⚠️ Notas

- El trigger `validacion_producto` impide insertar o actualizar productos con datos no válidos (como precios negativos, fabricantes inexistentes o códigos duplicados).
- Asegúrate de habilitar la salida de `DBMS_OUTPUT` para poder visualizar los mensajes generados por los triggers y procedimientos.

---

🎓 Ideal para estudiantes, personas en formación profesional o autodidactas que estén aprendiendo PL/SQL de manera práctica.

