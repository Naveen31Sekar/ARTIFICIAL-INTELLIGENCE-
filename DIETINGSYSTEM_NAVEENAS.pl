disease(diabetes).
disease(hypertension).
disease(obesity).

diet(diabetes, 'Low Carbohydrate Diet').
diet(hypertension, 'Low Sodium Diet').
diet(obesity, 'Low Calorie Diet').

suggest_diet(Disease, Diet) :- disease(Disease), diet(Disease, Diet).
