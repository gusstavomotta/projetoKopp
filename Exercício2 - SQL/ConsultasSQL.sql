SELECT * 
FROM infracoes i 
WHERE i.velocidade_medida >= i.velocidade_permitida * 1.2 
ORDER BY i.data_hora;
	

SELECT r.id AS identificacao_remessa, r.situacao,  COUNT(i.id) AS total_infracoes,
    SUM(CASE WHEN i.valido = TRUE THEN 1 ELSE 0 END) AS total_infracoes_validas,
    SUM(CASE WHEN i.valido = FALSE THEN 1 ELSE 0 END) AS total_infracoes_invalidas
FROM remessaInfracoes r
LEFT JOIN infracoes i ON r.id = i.remessa_id
GROUP BY r.id, r.situacao
ORDER BY r.situacao;
