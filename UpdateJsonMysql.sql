update dadosExcel set dados = 
json_set(dados, '$[0].nome', 'TrocaNome') 
where id = 2

update dadosExcel set dados = 
json_set(dados, '$[1].nome', 'TrocaNome2') 
where id = 2