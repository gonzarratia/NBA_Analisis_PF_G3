# 🏀 Dinastías y Dependencia: Análisis NBA

## 📋 Descripción
Proyecto de Data Analytics para evaluar la evolución de franquicias NBA (2021-2023) y el impacto de la ausencia de jugadores clave ("Delta de Victoria"). El objetivo es determinar cuánto depende un equipo de sus estrellas y detectar el fin de ciclos exitosos (dinastías).

## 👥 Equipo
* **Gonzalo Arratia** - Data Analyst
* **Jeimy Camargo** - Data Analyst
* **Melanie Lopez** - Data Analyst
* **Celia Vargas** - Data Analyst

## ☁️ Arquitectura Cloud & Despliegue
Hemos seleccionado **Microsoft Azure** como nuestra infraestructura en la nube debido a su integración nativa con nuestro stack tecnológico (SQL Server + Power BI).
> En el siguiente **Diagrama de Arquitectura**, se detalla el flujo ETL implementado en la nube para la ingesta, limpieza y visualización de estadísticas de la NBA.

<img src="ArquitecturaDatosNBA.PNG" width="500">

### 🏗️ Componentes de la Solución
* **Almacenamiento (PaaS):** Migración de la base de datos local a **Azure SQL Database** (Capa Basic/Serverless). Esto garantiza escalabilidad y alta disponibilidad de los datos históricos.
* **Orquestación (ETL):** Implementación de scripts de Python en **Azure Functions** con *Time Triggers*.
  * *Objetivo:* Ejecución automática diaria (6:00 AM) para la ingesta de nuevos resultados de partidos y actualización de estadísticas.
* **Visualización:** Conexión directa mediante **Power BI Service** con actualización programada, eliminando la dependencia de servidores locales.

### 🔐 Seguridad y Gobernanza
Simulamos un entorno empresarial utilizando **Azure Active Directory (Entra ID)** para la gestión de roles:
* **Rol Data Engineer:** Acceso de escritura/lectura a la BD para mantenimiento del ETL.
* **Rol Scout/Analista:** Acceso de solo lectura a los reportes de Power BI para evitar alteraciones accidentales de los datos.

## 📂 Estructura del Repositorio
* `/data`: Datasets originales (Fuentes: Kaggle & NBA API).
* `/sql`: Scripts DDL/DML para la creación y modelado de la Base de Datos.
* `/src`: Pipelines de ETL en Python (Extracción, Limpieza y Carga).
* `/dashboard`: Archivos Power BI (.pbix) y plantillas.
* `/docs`: Documentación de arquitectura y diccionario de datos.

## 🛠 Tecnologías
* **Lenguajes:** Python (Pandas, SQLAlchemy, PyODBC), SQL.
* **Cloud:** Microsoft Azure (SQL Database, Functions).
* **Visualización:** Power BI Desktop & Service.
* **Entorno:** Jupyter Notebooks, VS Code, SSMS.

## Automatización
* Se evaluaron dos enfoques para automatizar la ingesta: descarga mediante Kaggle API y scraping del portal web. Aunque el scraping permite automatizar interacciones con la UI, presenta mayor complejidad técnica (autenticación, cambios de HTML, bloqueos) y mayor probabilidad de fallos. Por estabilidad, reproducibilidad y trazabilidad, se implementó Kaggle API como método principal de ingesta.
