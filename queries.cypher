//show poeple sort by name:
MATCH (people:Person) 
RETURN people.name 
ORDER BY people.name 

//skip first 5 person and show next 10:
MATCH (people:Person) RETURN people.name SKIP 5 LIMIT 10

//directors name with movie they directed:
MATCH (directors:Person)-[:DIRECTED]->(movies)
RETURN 
directors.name, movies.title

//movies for 90s:
MATCH (nineties:Movie) 
WHERE 
nineties.released >= 1990 AND nineties.released < 2000 
RETURN nineties.title

//movies Jack Nicholson played in:
MATCH 
(jack:Person {name: "Jack Nicholson"})-[:ACTED_IN]->(NicholsonMovies) 
RETURN  NicholsonMovies

//list of people who reviewd movies:
MATCH (p:Person)
WHERE EXISTS((p)-[:REVIEWED]->()) 
RETURN p.name

//average of born years:
MATCH (p:Person)
RETURN TOINTEGER (AVG(p.born))

//cast played with Tom Hanks:
MATCH 
(tom:Person {name:"Tom Hanks"}) -[:ACTED_IN]-> (m:Movie) <-[:ACTED_IN]- (coActors) 
RETURN coActors.name, m.title

//shortest path between Jack Nicholson and Kevin Bacon:
MATCH 
sh = ShortestPath(
(bacon:Person {name:"Kevin Bacon"})  -[*]-  (jack:Person {name:"Jack Nicholson"})
                )
RETURN sh

//list of coactor of coactor of Jack Nicholson which not played with him:
MATCH 
(j:Person {name:"Jack Nicholson"}) -[:ACTED_IN]-> () <-[:ACTED_IN]- (coActors),
(coActors) -[:ACTED_IN]-> () <- [:ACTED_IN]- (cocoActors)
WHERE NOT (j) -[:ACTED_IN]-> () <-[:ACTED_IN]- (cocoActors) 
AND j <> cocoActors
RETURN cocoActors.name AS name, count(*) AS count 
ORDER BY count DESC

//movies cast played with Tom Hanks and Tom Cruise:
MATCH 
(hanks:Person {name:"Tom Hanks"}) -[:ACTED_IN]-> (m1) <-[:ACTED_IN]- (coActors),
(coActors) -[:ACTED_IN]-> (m2) <-[:ACTED_IN]- (cruise:Person {name:"Tom Cruise"})
RETURN hanks, m1, coActors, m2, cruise









