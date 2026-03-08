# Pré-mémoire (L3 Sociologie) – Analyse des pratiques d’attente et de la pression temporelle sur le RER D

Projet réalisé dans le cadre d’un pré-mémoire de L3 Sociologie (Université d’Évry Paris-Saclay, 2025–2026).

## Titre

RER D’attente - Quand les pratiques reflètent la société accélérée

## Problématique

En quoi les comportements et les pratiques des usagers des transports en commun durant l’attente illustrent-ils l’accélération sociale et ses conséquences dans la société contemporaine ? Étude de cas sur le RER D.

---

## Présentation du projet

Ce projet examine les pratiques d’attente et la perception de la pression liée au temps chez les usagers du RER D en région parisienne.  
L’objectif est d’analyser dans quelle mesure la fréquentation en heures de pointe influence la perception subjective du temps et le sentiment d’urgence.

## Méthodologie

Approche mixte :

### Phase qualitative
- Observation ethnographique exploratoire
- Grille d’observation structurée
- Analyse des micro-comportements en situation d’attente
- entretiens semi-directives

### Phase quantitative (exploratoire)
- Questionnaire anonyme (Google Forms)
- Données traitées avec Google BigQuery
- Requêtes SQL pour agrégation et analyse
- Visualisations basées sur données agrégées

---

## Résultats préliminaires (25 réponses)

### Partie qualitative (observations et entretiens)

- Usage massif du smartphone comme gestion active de l’attente
- Isolement spatial et régulation implicite des interactions
- Variations comportementales selon l’affluence et la génération
- Association exploratoire observée entre heure de pointe et pression temporelle perçue

### Partie quantitative (questionnaire)

- La majorité des déclarations de pression temporelle concerne les usagers voyageant en heures de pointe.
- Les résultats préliminaires suggèrent une perception plus élevée de la pression liée au temps en période de forte affluence.
- Cette tendance est cohérente avec l’hypothèse d’une accélération temporelle perçue dans les contextes de mobilité dense.

## Analyse quantitative détaillée
### Une transformation des variables a été réalisée afin de faciliter l’analyse exploratoire :
La variable “heure de prise du RER” a été binarisée en :
- Pointe
- Hors pointe
  
La variable “pression temporelle” a été regroupée en :
- Pression (Oui + Parfois)
- Pas pression (Non)
  
Le tableau croisé obtenu montre :
- 17 répondants sur 20 (85 %) voyageant en heures de pointe déclarent ressentir une pression temporelle.
- 3 répondants sur 20 (15 %) en heures de pointe ne déclarent pas de pression.
- Hors pointe, les effectifs sont plus faibles (n=5), ce qui limite l’interprétation comparative.

## Résultats principaux

- Cela suggère que la densité et l’organisation des flux de mobilité influencent la perception subjective du temps.
- La majorité des répondants déclarent ressentir une pression liée au temps lorsqu’ils prennent les transports.
- Sur les 25 personnes interrogées, 16 déclarent ressentir cette pression et 6 indiquent la ressentir parfois.
- Seuls 3 répondants déclarent ne pas ressentir de pression temporelle.
- Donc 88 % ressentent au moins parfois une pression temporelle.

![Pression temporelle](visualizations/pression_distribution.png)

La majorité des répondants déclarent ressentir une pression temporelle lors de leurs déplacements en transport.

![Relation pression](visualizations/pression_vs_pointe.png)

Les résultats montrent que la majorité des usagers voyageant en heure de pointe déclarent ressentir une pression temporelle.
Sur 20 répondants voyageant en heure de pointe, 17 déclarent ressentir une pression liée au temps.

Ces résultats suggèrent que les contextes de mobilité dense, caractéristiques des heures de pointe, peuvent renforcer le sentiment d’accélération du temps dans les transports.

## Les résultats présentés sont exploratoires et reposent sur un échantillon de 25 répondants.

---

## Compétences techniques mobilisées

- `SQL (Google BigQuery)`
- `Création de variables analytiques via CASE WHEN`
- `Construction de tableaux croisés (GROUP BY)`
- `Agrégation et comptage (COUNT)`
- `Structuration de requêtes avec CTE`
- `Visualisation de données`
- `Analyse exploratoire de données (EDA)`

## Structure du projet

- `data` → données brutes anonymisées (questionnaire)
- `sql` → requêtes d’analyse et transformations
- `visualizations` → graphiques issus des agrégations
- `README.md` : présentation du projet  

---

## Conclusion
Ce projet illustre la possibilité d’articuler approche sociologique qualitative et traitement quantitatif exploratoire des données.
Il constitue une première expérimentation d’analyse de données appliquée à un objet sociologique, dans une perspective de montée en compétence en data analytics.

---

## Perspectives

- Extension du questionnaire
- Analyse statistique plus robuste
- Intégration d’un modèle explicatif
- Comparaison inter-tranches horaires
