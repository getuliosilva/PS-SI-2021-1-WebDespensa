CREATE TABLE [Usuario] (
  [id] numeric,
  [nome] varchar,
  [senha] varchar,
  [email] varchar,
  [numCartao] varchar,
  PRIMARY KEY ([id])
);

CREATE TABLE [CartaoDeCredito] (
  [numero] varchar,
  [titular] varchar,
  [validade] datetime,
  [CVC] varchar,
  PRIMARY KEY ([numero])
);

CREATE TABLE [Produto] (
  [id] numeric,
  [idUsuario] numeric,
  [nome] varchar,
  PRIMARY KEY ([id])
);

CREATE TABLE [InstanciaDeProduto] (
  [id] numeric,
  [idProduto] numeric,
  [quantidade] float,
  [unidade] varchar,
  [validade] datetime,
  PRIMARY KEY ([id])
);

CREATE TABLE [ListaDeCompras] (
  [id] numeric,
  [idUsuario] numeric,
  [nome] varchar,
  PRIMARY KEY ([id])
);

CREATE TABLE [Receita] (
  [id] numeric,
  [idUsuario] numeric,
  [nome] varchar,
  PRIMARY KEY ([id])
);

CREATE TABLE [ListaUsuario] (
  [idUsuario] numeric,
  [idInstanciaDeProduto] numeric
);

CREATE TABLE [ItemListaDeCompras] (
  [idListaDeCompras] numeric,
  [idInstanciaDeProduto] numeric
);

CREATE TABLE [ItemReceita] (
  [idReceita] numeric,
  [idInstanciaDeProduto] numeric
);

