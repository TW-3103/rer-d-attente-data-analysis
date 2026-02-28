-- ===============================
-- 25 responses
-- Analyse 1: Heure de pointe vs Pression
-- ===============================

WITH heure_de_pointe_cte AS (
    SELECT
        Quelles_sont_les_tranches_horaires_dans_lesquelles_vous_prenez_le_RER_D AS horaire,
        CASE
            WHEN Quelles_sont_les_tranches_horaires_dans_lesquelles_vous_prenez_le_RER_D LIKE '%heures de pointes%'
                THEN 'Pointe'
            ELSE 'Hors pointe'
        END AS heure_de_pointe,
        Vous_sentez_vous_press_par_le_temps_lorsque_vous_devez_prendre_les_transports AS pression
    FROM `projet-prememoire-rerd.prememoire_rerd.Reponses_RERD_GSHEET`
)

SELECT
    heure_de_pointe,
    pression,
    COUNT(*) AS nb_reponses
FROM heure_de_pointe_cte
GROUP BY heure_de_pointe, pression
ORDER BY heure_de_pointe, pression;
