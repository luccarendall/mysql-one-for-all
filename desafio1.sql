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
CREATE TABLE IF NOT EXISTS SpotifyClone.plano (
  plano_id INT NOT NULL AUTO_INCREMENT,
  plano VARCHAR(45) NOT NULL,
  valor DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (plano_id))
ENGINE = InnoDB;

INSERT INTO SpotifyClone.plano (plano, valor)
VALUES 
  ("gratuito", 0),
  ("familiar", 7.99),
  ("universitário", 5.99),
  ("pessoal", 6.99);

  ---------------------------------------------
  CREATE TABLE IF NOT EXISTS SpotifyClone.artista (
  artista_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (artista_id))
ENGINE = InnoDB;

INSERT INTO SpotifyClone.artista (artista)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon"),
  ("Tyler Isle"),
  ("Fog");
  
---------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.album (
  album_id INT NOT NULL AUTO_INCREMENT,
  album_name VARCHAR(45) NOT NULL,
  artista_id INT NOT NULL,
  ano_lancamento YEAR NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id)
  REFERENCES SpotifyClone.artista(artista_id)
)
ENGINE = InnoDB;


INSERT INTO SpotifyClone.album (album_name, artista_id, ano_lancamento)
VALUES 
  ("Envious", 1, 1990),
  ("Exuberant", 1, 1993),
  ("Hallowed Steam", 2, 1995),
  ("Incandescent", 3, 1998),
  ("Temporary Culture", 4, 2001),
  ("Library of liberty", 4, 2003),
  ("Chained Down", 5, 2007),
  ("Cabinet of fools", 5, 2012),
  ("No guarantees", 5, 2015),
  ("Apparatus", 6, 2015);