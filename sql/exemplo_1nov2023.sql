CREATE TABLE `usuarios` (
  `cpf` integer PRIMARY KEY,
  `nome` varchar(255),
  `sobrenome` varchar(255),
  `idade` integer
);

CREATE TABLE `cadastro_pj` (
  `cnpj` integer PRIMARY KEY,
  `nomeempresa` varchar(255),
  `ramoatividade` varchar(255)
);

CREATE TABLE `produto` (
  `id` integer PRIMARY KEY,
  `nomeproduto` varchar(255),
  `descricao` varchar(255)
);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`cnpj`) REFERENCES `usuarios` (`cpf`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id`) REFERENCES `cadastro_pj` (`cnpj`);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`nomeempresa`) REFERENCES `usuarios` (`cpf`);

ALTER TABLE `produto` ADD FOREIGN KEY (`nomeproduto`) REFERENCES `cadastro_pj` (`ramoatividade`);
