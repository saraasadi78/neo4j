CREATE (LifeIsBeautiful:Movie {title:'Life Is Beautiful', released:1997, IMDbrate:8.6, Boxoffice: 230.1})
CREATE (Benigni:Person {name:'Roberto Benigni', born:1952})
CREATE (Braschi:Person {name:'Nicoletta Braschi', born:1960})
CREATE (Cantarini:Person {name:'Giorgio Cantarini', born:1992})
CREATE (Piovani:Person {name:'Nicola Piovani', born:1946})
CREATE (Gianluigi:Person {name:'Gianluigi Braschi', born:1963})

CREATE
(Benigni)-[:ACTED_IN {roles:['Guido']}]->(LifeIsBeautiful),
(Braschi)-[:ACTED_IN {roles:['Dora']}]->(LifeIsBeautiful),
(Cantarini)-[:ACTED_IN {roles:['Giosue']}]->(LifeIsBeautiful),
(Benigni)-[:DIRECTED]->(LifeIsBeautiful),
(Gianluigi)-[:PRODUCED]->(LifeIsBeautiful),
(Piovani)-[:MUSIC]->(LifeIsBeautiful)


CREATE (TheDevilsAdvocate:Movie {title:"The Devil's Advocate", released:1997,  IMDbrate:7.5, Boxoffice:153})
CREATE (Charlize:Person {name:'Charlize Theron', born:1975})
CREATE (Al:Person {name:'Al Pacino', born:1940})
CREATE (Keanu:Person {name:'Keanu Reeves', born:1964})
CREATE (Taylor:Person {name:'Taylor Hackford', born:1944})

CREATE
(Keanu)-[:ACTED_IN {roles:['Kevin Lomax']}]->(TheDevilsAdvocate),
(Charlize)-[:ACTED_IN {roles:['Mary Ann Lomax']}]->(TheDevilsAdvocate),
(Al)-[:ACTED_IN {roles:['John Milton']}]->(TheDevilsAdvocate),
(Taylor)-[:DIRECTED]->(TheDevilsAdvocate)


CREATE (OneFlew:Movie {title:'One Flew Over The Cuckoos Nest' , released:1975, IMDbrate:8.7, Boxoffice: 163.3})
CREATE (Nicholson:Person {name:'Jack Nicholson', born:1937})
CREATE (Fletcher:Person {name:'Louise Fletcher', born:1934})
CREATE (Sampson:Person {name:'Will Sampson', born:1933})
CREATE (Forman:Person {name:'Miloš Forman', born:1932})
CREATE (Douglas:Person {name:'Michael Douglas', born:1944})

CREATE
(Nicholson)-[:ACTED_IN {roles:['McMurphy']}]->(OneFlew),
(Fletcher)-[:ACTED_IN {roles:['Nurse Mildred Ratched']}]->(OneFlew),
(Sampson)-[:ACTED_IN {roles:['Chief Bromden']}]->(OneFlew),
(Forman)-[:DIRECTED]->(OneFlew),
(Douglas)-[:PRODUCED]->(OneFlew)


CREATE (AFewGoodMen:Movie {title:"A Few Good Men", released:1992, IMDbrate:7.7, Boxoffice: 243.2})
CREATE (Cruise:Person {name:'Tom Cruise', born:1962})
CREATE (DemiM:Person {name:'Demi Moore', born:1962})
CREATE (KevinB:Person {name:'Kevin Bacon', born:1958})
CREATE (KieferS:Person {name:'Kiefer Sutherland', born:1966})
CREATE (NoahW:Person {name:'Noah Wyle', born:1971})
CREATE (CubaG:Person {name:'Cuba Gooding Jr.', born:1968})
CREATE (KevinP:Person {name:'Kevin Pollak', born:1957})
CREATE (JTW:Person {name:'J.T. Walsh', born:1943})
CREATE (JamesM:Person {name:'James Marshall', born:1967})
CREATE (ChristopherG:Person {name:'Christopher Guest', born:1948})
CREATE (RobR:Person {name:'Rob Reiner', born:1947})
CREATE (AaronS:Person {name:'Aaron Sorkin', born:1961})

CREATE
(Cruise)-[:ACTED_IN {roles:['Lt. Daniel Kaffee']}]->(AFewGoodMen),
(Nicholson)-[:ACTED_IN {roles:['Col. Nathan R. Jessup']}]->(AFewGoodMen),
(DemiM)-[:ACTED_IN {roles:['Lt. Cdr. JoAnne Galloway']}]->(AFewGoodMen),
(KevinB)-[:ACTED_IN {roles:['Capt. Jack Ross']}]->(AFewGoodMen),
(KieferS)-[:ACTED_IN {roles:['Lt. Jonathan Kendrick']}]->(AFewGoodMen),
(NoahW)-[:ACTED_IN {roles:['Cpl. Jeffrey Barnes']}]->(AFewGoodMen),
(CubaG)-[:ACTED_IN {roles:['Cpl. Carl Hammaker']}]->(AFewGoodMen),
(KevinP)-[:ACTED_IN {roles:['Lt. Sam Weinberg']}]->(AFewGoodMen),
(JTW)-[:ACTED_IN {roles:['Lt. Col. Matthew Andrew Markinson']}]->(AFewGoodMen),
(JamesM)-[:ACTED_IN {roles:['Pfc. Louden Downey']}]->(AFewGoodMen),
(ChristopherG)-[:ACTED_IN {roles:['Dr. Stone']}]->(AFewGoodMen),
(AaronS)-[:ACTED_IN {roles:['Man in Bar']}]->(AFewGoodMen),
(RobR)-[:DIRECTED]->(AFewGoodMen),
(AaronS)-[:WROTE]->(AFewGoodMen)


CREATE (VforVendetta:Movie {title:'V for Vendetta', released:2006, IMDbrate:8.2, Boxoffice: 132.5 })
CREATE (Portman:Person {name:'Natalie Portman', born:1981})
CREATE (Rea:Person {name:'Stephen Rea', born:1946})
CREATE (Hugo:Person {name:'Hugo Weaving', born:1960})
CREATE (Hurt:Person {name:'John Hurt', born:1940})
CREATE (Miles:Person {name:'Ben Miles', born:1967})
CREATE (LillyW:Person {name:'Lilly Wachowski', born:1967})

CREATE
(Hugo)-[:ACTED_IN {roles:['V']}]->(VforVendetta),
(Portman)-[:ACTED_IN {roles:['Evey Hammond']}]->(VforVendetta),
(Rea)-[:ACTED_IN {roles:['Eric Finch']}]->(VforVendetta),
(Hurt)-[:ACTED_IN {roles:['High Chancellor Adam Sutler']}]->(VforVendetta),
(Miles)-[:ACTED_IN {roles:['Dascomb']}]->(VforVendetta),
(JamesM)-[:DIRECTED]->(VforVendetta),
(LillyW)-[:PRODUCED]->(VforVendetta),
(LillyW)-[:WROTE]->(VforVendetta),

