# 📊 Proyecto RetailPro — Análisis de Datos de Ventas

## 📋 Descripción General
**RetailPro** es un proyecto de análisis de datos enfocado en la exploración, integración y evaluación del rendimiento comercial de una tienda de tecnología (`Ventas_Tech_DB`). 

En esta etapa (**Pre-entrega 5**), el objetivo principal es combinar múltiples tablas relacionales (`ventas`, `clientes`, `productos` y `categorias`) mediante consultas SQL avanzadas para enriquecer la información transaccional, detectar oportunidades comerciales y consolidar métricas clave por períodos de tiempo.

### 🔍 Principales Hallazgos del Análisis
* **Concentración de ingresos:** La categoría **Computación** representa el **76,8 %** de la facturación total (\$4.950), posicionándose como el principal motor de ingresos del negocio.
* **Actividad de clientes:** Los **5** clientes registrados realizaron al menos una compra (0 clientes sin compras), aunque este resultado no permite determinar si volvieron a comprar ni concluir que hubo retención de clientes.
* **Actividad de productos:** Los **6** productos disponibles en el catálogo registran al menos una venta en la muestra analizada, aunque este resultado no permite determinar su rotación o velocidad de venta.
* **Comparativa por períodos:** El primer período (hasta el `2024-03-10`) generó **\$3.620** en ventas, superando por **\$796** al segundo período (**\$2.824**).

---

## 🛠️ Herramientas Utilizadas
* **SQL Server / SQL Server Management Studio (SSMS):** Modelado relacional, extracción, cruce de tablas y agregación de datos.
* **Microsoft Excel:** Exploración inicial, validación de registros y soporte tabular.
* **Power BI:** Visualización de datos y construcción de tableros de control (dashboards) para la toma de decisiones.

---

## 📁 Estructura del Repositorio

```text
Modulo-5-Analisis-de-Datos/
├── m5_consultas_joins.sql   # Script SQL con consultas INNER JOIN, LEFT JOIN y UNION ALL
└── README.md                # Documentación principal del proyecto
```

### Detalle del Script (`m5_consultas_joins.sql`)
1. **Vista Base del Proyecto (`INNER JOIN`):** Cruza ventas con clientes, productos y categorías para calcular el total por transacción.
2. **Clientes sin Ventas (`LEFT JOIN`):** Identifica usuarios registrados sin historial de compras mediante filtrado de valores nulos (`IS NULL`).
3. **Productos sin Ventas (`LEFT JOIN`):** Detecta artículos del catálogo sin rotación comercial.
4. **Consolidado por Período (`UNION ALL`):** Unifica y agrupa la facturación en dos cortes temporales para evaluar la evolución de ingresos.

---

## 🚀 Cómo Clonar y Ejecutar el Proyecto

### 1. Clonar el repositorio
Abrí tu terminal o Git Bash y ejecutá el siguiente comando para descargar el proyecto en tu computadora:

```bash
git clone https://github.com/mamontana222/Modulo-5-Analisis-de-Datos.git
```

Luego, ingresá a la carpeta del repositorio:

```bash
cd Modulo-5-Analisis-de-Datos
```

### 2. Ejecutar el script en SQL Server Management Studio (SSMS)
1. Abrí **SQL Server Management Studio (SSMS)** y conectate a tu instancia local o servidor de SQL Server.
2. Asegurate de tener creada y poblada previamente la base de datos **`Ventas_Tech_DB`**.
3. En el menú superior, hacé clic en **File > Open > File...** (o presioná `Ctrl + O`).
4. Navegá hasta la carpeta clonada y seleccioná el archivo **`m5_consultas_joins.sql`**.
5. Verificá que la instrucción `USE Ventas_Tech_DB;` apunte correctamente a tu base de datos.
6. Presioná **`F5`** o hacé clic en el botón **Execute** en la barra de herramientas para correr todas las consultas y visualizar los resultados en la pestaña *Results*.

---

## 👤 Autor
* **GitHub:** [@mamontana222](https://github.com/mamontana222)
