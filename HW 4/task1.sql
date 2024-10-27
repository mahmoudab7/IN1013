CREATE TABLE pet (
    petname VARCHAR(40) PRIMARY KEY,
    owner VARCHAR(55),
    species VARCHAR(100),
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    birth DATE,
    death DATE
);


CREATE TABLE dog (
    petname VARCHAR(40),
    breed VARCHAR(30),
    FOREIGN KEY (petname) REFERENCES pet(petname),
    PRIMARY KEY (petname)
);


CREATE TABLE cat (
    petname VARCHAR(40),
    color VARCHAR(30),
    FOREIGN KEY (petname) REFERENCES pet(petname),
    PRIMARY KEY (petname)
);


CREATE TABLE petEvent (
    petname VARCHAR(40),
    eventdate DATE,
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    FOREIGN KEY (petname) REFERENCES pet(petname),
    PRIMARY KEY (petname, eventdate)
);