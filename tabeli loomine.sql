-- tabeli toiduaine loomine
CREATE TABLE toiduaine(
    toiduaine_id int PRIMARY KEY AUTO_INCREMENT,
    toiduaine_nimi varchar(100));

-- tabeli yhik loomine
CREATE TABLE yhik(	
    yhik_id int PRIMARY KEY AUTO_INCREMENT,
    yhim_nimi varchar(100));

-- tabeli koostis loomine
CREATE TABLE koostis(
    koostis_id int PRIMARY KEY AUTO_INCREMENT,
    kogus int,
    retsept_retsept_id int,
    toiduaine_id int,
    yhik_id int,
    FOREIGN KEY (toiduaine_id) REFERENCES toiduaine(toiduaine_id),
    FOREIGN KEY (yhik_id) REFERENCES yhik(yhik_id),
   );

CREATE TABLE kasutaja(
    kesutaja_id int PRIMARY KEY AUTO_INCREMENT,
    eesnimi varchar(50),
    perenimi varchar(50),
    email varchar(150));

CREATE TABLE kategooria(
    kategooria_id int PRIMARY KEY AUTO_INCREMENT,
    kesutaja_nimi varchar(50));

CREATE TABLE retsept(
    retsept_id int PRIMARY KEY AUTO_INCREMENT,
    retsept_nimi varchar(100),
    kirjeldus varchar(200),
    juhend text,
    sisestatud_kp date,
    kasutaja_id int,
    kategooria_id int,
    FOREIGN KEY (kasutaja_id) REFERENCES kasutaja(kasutaja_id),
    FOREIGN KEY (kategooria_id) REFERENCES kategooria(kategooria_id));

CREATE TABLE tehtud(
    tehtud_id int PRIMARY KEY AUTO_INCREMENT,
    tehtud_kp date,
    retsept_id int,
    FOREIGN KEY (retsept_id) REFERENCES retsept(retsept_id));
