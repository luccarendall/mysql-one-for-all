DROP  DATABASE  IF  EXISTS SpotifyClone;

CREATE  DATABASE SpotifyClone;

-- Modelo:
-- CREATE TABLE SpotifyClone.tabela1(
-- coluna1 tipo restricoes,
-- coluna2 tipo restricoes,
-- colunaN tipo restricoes,
-- ) engine = InnoDB; => Engine padrão

CREATE TABLE IF NOT EXISTS SpotifyClone.usuario (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  usuario VARCHAR(45) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  data_assinatura DATE NOT NULL,
  PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id)
    REFERENCES SpotifyClone.plano(plano_id)
)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.usuario (usuario, idade, plano_id, data_assinatura)
VALUES 
  ("Thati", 23, 1, "2019-10-20"),
  ("Cintia", 35, 2, "2017-12-30"),
  ("Bill", 20, 3, "2019-06-05"),
  ("Roger", 45, 4, "2020-05-13"),
  ("Norman", 58, 4, "2017-02-17"),
  ("Patrick", 33, 2, "2017-01-06"),
  ("Vivian", 26, 3, "2018-01-05"),
  ("Carol", 19, 3, "2018-02-14"),
  ("Angelina", 42, 2, "2018-04-29"),
  ("Paul", 46, 2, "2017-01-17");
---------------------------------------------