-- ============================================
-- ANALYSE 1 : Relation entre heure de pointe et pression temporelle
-- Objectif :
-- - Créer une variable binaire (Pointe / Hors pointe)
-- - Construire un tableau croisé avec la variable "pression"
-- - Compter le nombre de réponses par catégorie
-- ============================================

WITH base AS (
    SELECT
        CASE
            WHEN Quelles_sont_les_tranches_horaires_dans_lesquelles_vous_prenez_le_RER_D___ LIKE '%heures de pointes%'
                THEN 'Pointe'
            ELSE 'Hors pointe'
        END AS heure_de_pointe,

        CASE
            WHEN Vous_sentez_vous_press___par_le_temps_lorsque_vous_devez_prendre_les_transports__ IN ('Oui', 'Parfois')
                THEN 'Pression'
            ELSE 'Pas pression'
        END AS pression_binaire

    FROM `projet-prememoire-rerd.prememoire_rerd.Reponses_RERD_GSHEET`
)

SELECT
    heure_de_pointe,
    pression_binaire,
    COUNT(*) AS nb_reponses
FROM base
GROUP BY heure_de_pointe, pression_binaire
ORDER BY heure_de_pointe, pression_binaire;
