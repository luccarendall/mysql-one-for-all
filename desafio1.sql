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

---------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.musica (
  musica_id INT NOT NULL AUTO_INCREMENT,
  musica VARCHAR(45) NOT NULL,
  duracao_segundos INT NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (musica_id),
    FOREIGN KEY (album_id)
    REFERENCES SpotifyClone.album(album_id)
)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.musica (musica, duracao_segundos, album_id)
VALUES 
  ("Soul For Us", 200, 1),
  ("Reflections Of Magic", 163, 1),
  ("Dance With Her Own", 116, 1),

  ("Troubles Of My Inner Fire", 203, 2),
  ("Time Fireworks", 152, 2),

  ("Magic Circus", 105, 3),
  ("Honey, So Do I", 207, 3),
  ("Sweetie, Let's Go Wild", 139, 3),
  ("She Knows", 244, 3),

  ("Fantasy For Me", 100, 4),
  ("Celebration Of More", 146, 4),
  ("Rock His Everything", 223, 4),
  ("Home Forever", 231, 4),
  ("Diamond Power", 241, 4),
  ("Let's Be Silly", 132, 4),

  ("Thang Of Thunder", 240, 5),
  ("Words Of Her Life", 185, 5),
  ("Without My Streets", 176, 5),

  ("Need Of The Evening", 190, 6),
  ("History Of My Roses", 222, 6),
  ("Without My Love", 111, 6),
  ("Walking And Game", 123, 6),
  ("Young And Father", 197, 6),

  ("Finding My Traditions", 179, 7),
  ("Walking And Man", 229, 7),
  ("Hard And Time", 135, 7),
  ("Honey, I'm A Lone Wolf", 150, 7),

  ("She Thinks I Won't Stay Tonight", 166, 8),
  ("He Heard You're Bad For Me", 154, 8),
  ("He Hopes We Can't Stay", 210, 8),
  ("I Know I Know", 117, 8),

  ("He's Walking Away", 159, 9),
  ("He's Trouble", 138, 9),
  ("I Heard I Want To Bo Alone", 120, 9),
  ("I Ride Alone", 151, 9),

  ("Honey", 79, 10),
  ("You Cheated On Me", 95, 10),
  ("Wouldn't It Be Nice", 213, 10),
  ("Baby", 136, 10),
  ("You Make Me Feel So..", 83, 10);

---------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.seguindo (
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),

    FOREIGN KEY (artista_id)
    REFERENCES SpotifyClone.artista(artista_id),

    FOREIGN KEY (usuario_id)
    REFERENCES SpotifyClone.usuario(usuario_id)
)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.seguindo (usuario_id, artista_id)
VALUES 
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 3),
  (6, 1),
  (7, 2),
  (7, 5),
  (8, 1),
  (8, 5),
  (9, 6),
  (9, 4),
  (9, 3),
  (10, 2),
  (10, 6);