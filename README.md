# Autos-Robados-en-Nueva-Zelanda_Analisis-con-SQL-Power-BI

Análisis de Robos de Vehículos en Nueva Zelanda
📌 Introducción
Este proyecto analiza la incidencia de robos de vehículos en Nueva Zelanda, enfocándose en cantidad total de robos, marcas y modelos afectados, influencia del color y patrones temporales. Se usó SQL para extraer datos y Power BI para visualizar tendencias clave.

Estructura de la Base de Datos
El análisis se basa en tres tablas principales:

1️⃣ stolen_vehicles → Registra autos robados (vehicle_id). 2️⃣ location → Contiene la region donde ocurrió el robo. 3️⃣ make_details → Almacena información del fabricante y modelo (make_id).

- Preguntas de Análisis
✔ ¿La frecuencia de robos varía según la región? → Identificar zonas con más incidentes. ✔ ¿Qué día de la semana se roban más vehículos? → Detectar patrones temporales.

- Visualizaciones en Power BI
✔ Mapa de robos por región. ✔ Distribución de autos robados por color. ✔ Comparativa de lujo vs. estándar. ✔ Tabla de marcas más robadas. ✔ Slicer para filtrar fechas. ✔ Q&A para preguntas dinámicas.

- Hallazgos Clave
✔ Más autos estándar robados → Posible dificultad para robar autos de lujo. ✔ Mayor incidencia en modelos antiguos y autos blancos. ✔ Lunes, el día con más robos → Patrón de inicio de semana.

- Cómo Ejecutar el Proyecto
1️⃣ Descargar los datos desde Maven Analytics. 2️⃣ Cargar las tablas en MySQL para estructurar la base de datos. 3️⃣ Conectar MySQL con Power BI utilizando el conector oficial. 4️⃣ Crear las visualizaciones con mapas, gráficos y slicers.
