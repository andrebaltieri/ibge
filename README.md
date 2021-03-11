## Municípios do Brasil
Este repositório concentra os dados da planilha `RELATORIO_DTB_BRASIL_MUNICIPIO` do IBGE no formato SQL para diferentes bancos de dados.

```
ÚLTIMA ATUALIZAÇÃO EM 2021-03-10
```

### Como utilizar
Na raiz deste repositório você encontrará diferentes pastas, de seus respectivos bancos de dados. Dentro de cada pasta você encontrará **dois** arquivos.

#### Schema
Arquivo contendo a criação da tabela `IBGE` no banco de dados. Este arquivo deve ser executado primeiro.

#### Data
Arquivo contendo os `INSERTS` de dados dos municípios obtidos da planilha `RELATORIO_DTB_BRASIL_MUNICIPIO` contida na raiz deste repositório.

### Como contribuir

Você pode contribuir para este repositório utilizando a sessão [Issues](https://github.com/andrebaltieri/ibge/issues) aqui do GitHub. Basta criar um novo issue com correções ou melhorias.

#### Adicionando novos bancos
Para facilitar a adição de novos bancos, a planilha `RELATORIO_DTB_BRASIL_MUNICIPIO` conta com uma coluna que utiliza a função `CONCATENAR` e gera o `INSERT`.

Antes de codificar algo manualmente, recomendo que veja a planilha e automatize para suas necessidades.

Caso queira submeter um novo script, por favor siga o exemplo contido na pasta `SQL Server` na raiz deste repositório.

### Customizando

Para facilitar a customização para suas necessidades, a planilha `RELATORIO_DTB_BRASIL_MUNICIPIO` conta com uma coluna que utiliza a função `CONCATENAR` e gera o `INSERT`.

Antes de codificar algo manualmente, recomendo que veja a planilha e automatize para suas necessidades.

Caso queira submeter um novo script, por favor siga o exemplo contido na pasta `SQL Server` na raiz deste repositório.