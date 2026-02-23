<p align="center">
  <img src="Imagenes/banner_informe.png" width="1000">
</p>

---

##  Introducción y Propósito

El presente proyecto surge de la necesidad de comprender cómo ha evolucionado el baloncesto profesional de la NBA en las últimas temporadas, centrándose en la transformación táctica de las franquicias y el peso real de los jugadores de élite en el éxito de sus equipos.

El propósito es transformar datos crudos provenientes de competiciones oficiales en insights estratégicos que permitan identificar patrones de victoria, riesgos físicos asociados a variables biométricas y tendencias del mercado global deportivo.

---

##  Objetivos del Proyecto

-  Analizar el impacto de los jugadores estrella.
-  Evaluar la evolución táctica del juego (revolución del triple).
-  Identificar riesgos de salud relacionados con edad y peso.
-  Detectar patrones estructurales en el rendimiento de franquicias.

---

##  Arquitectura de Datos

###  Proceso ETL

1. Extracción de datos desde archivos CSV (Kaggle).
2. Limpieza y normalización de variables.
3. Modelado relacional en SQL Server.
4. Validación de integridad y consistencia.

###  Escalabilidad

El modelo fue diseñado considerando una futura migración a entorno cloud (Azure), permitiendo procesamiento distribuido y consumo eficiente en herramientas de visualización.

---

##  Análisis Exploratorio de Datos (EDA)

---

### Curva de Envejecimiento y Riesgo

<p align="center">
  <img src="imagenes/curva_envejecimiento.png" width="750">
</p>

**Descripción:**

El gráfico evidencia el incremento progresivo de ausencias por partido a partir de los 32 años, marcando una clara zona de riesgo en jugadores veteranos.
La disponibilidad física cae de manera significativa después de los 30 años. Las franquicias deben gestionar estratégicamente la carga de minutos de jugadores veteranos para proteger su inversión y evitar deterioro acelerado.
---

### Peso vs. Resistencia

<p align="center">
  <img src="imagenes/peso_vs_resistencia.png" width="750">
</p>

**Descripción:**  
La regresión analiza la relación entre peso corporal y ausencias acumuladas. 
Permite evaluar si jugadores más pesados (especialmente centros) presentan mayor propensión a lesiones crónicas. Esta métrica es clave para scouting y proyección de longevidad deportiva.

---

# Estrategia de las Franquicias

---

### Mapa Estratégico (Ofensivo vs. Defensivo)

<p align="center">
  <img src="imagenes/ofensivo_vs_defensivo.png" width="750">
</p>

**Descripción:**  
Clasifica a las franquicias en cuatro cuadrantes según promedio de puntos y eficiencia defensiva. 
Identifica a los “Equipos Completos” que dominan ambas áreas y se posicionan como verdaderos candidatos al título.  
Los equipos con alto poder ofensivo pero bajo rendimiento defensivo tienden a ser menos efectivos en instancias decisivas como playoffs.

---

### Ajuste del Triple

<p align="center">
  <img src="imagenes/triples_equipo.png" width="750">
</p>

**Descripción:**  
Compara a los equipos líderes y rezagados en volumen de lanzamientos de triple. 
Confirma la consolidación de la “Revolución del Triple”.  
Las franquicias líderes muestran sistemas ofensivos más modernos y eficientes, mientras que los rezagados dependen de un juego más físico con menor retorno estadístico.

---

#  Impacto de las Estrellas y Factores de Victoria

---

### Factor Clutch

<p align="center">
  <img src="imagenes/factor_clutch.png" width="750">
</p>

**Descripción:**  
Analiza el porcentaje de victorias en partidos definidos por cinco puntos o menos.
Diferencia equipos con “ADN Campeón” de aquellos que colapsan bajo presión.  
Un alto win rate en momentos cerrados suele correlacionarse con la presencia de una superestrella capaz de resolver posesiones críticas.

---

### Distribución Titulares vs. Suplentes

<p align="center">
  <img src="imagenes/titulares_suplentes.png" width="750">
</p>

**Descripción:**  
Representa el porcentaje de puntos aportados por la banca respecto al total del equipo.  
Una alta dependencia de los titulares incrementa vulnerabilidad ante lesiones.  
Las franquicias más competitivas presentan una banca profunda que sostiene el rendimiento colectivo.

---
### Peso de la Localía

<p align="center">
  <img src="imagenes/peso_localia.png" width="750">
</p>

**Descripción:**  
Compara el porcentaje de victorias en condición de local versus visitante.
La ventaja de localía mantiene un impacto estadístico medible, generalmente superior al 50%.  
Esto refuerza la importancia estratégica de asegurar posiciones altas en temporada regular.

---
# 4️⃣ Gestión de Activos (Jugadores)

---

### Top 10 

<p align="center">
  <img src="imagenes/jugadores_max_minutos.png" width="750">
</p>

**Descripción:**  
Identifica jugadores con más de 75 partidos disputados y mayor volumen total de minutos. 
Son los activos más rentables de la liga: combinan rendimiento y durabilidad, pilares fundamentales para continuidad competitiva.

---
### Jóvenes Promesas

<p align="center">
  <img src="imagenes/jovenes_promesas.png" width="750">
</p>

**Descripción:**  
Ranking de los 10 máximos anotadores menores de 25 años.  
Representan el capital futuro de las franquicias.  
Los equipos en reconstrucción dependen estratégicamente de estos perfiles para sostener su crecimiento a largo plazo.

---

### Top Equipos Ofensivos y Defensivos

<p align="center">
  <img src="imagenes/top_equipos_defensivos_ofensivos.png" width="750">
</p>

**Descripción:**  
Identifica a los equipos que lideran en eficiencia ofensiva y defensiva. 
Revela qué franquicias combinan rendimiento en ambos extremos del juego, confirmando que la excelencia integral es el predictor más consistente del éxito sostenido.
