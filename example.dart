import 'lib/rethinkdb_driver.dart';

Rethinkdb r = new Rethinkdb();
main() {
  /**start the connection that returns a future
* You may specify the database, host, port, and authkey if you wish:
* connect(db: "Website_DB", port: 8000, host: "127.0.0.1", authKey: "some key").then(...)
*/
  r
      .connect(db: "test", port: 28015, password: '')
      .then((connection) => exampleCommands(connection))
      .catchError((err) {
    print(err);
  });
}

exampleCommands(conn) {
  /**use() changes the default database on the connection**/

  //conn.use("app_db");

  /** noreplyWait() waits for any queries with the noreply option to run**/

  //conn.noreplyWait().then((res){
  //  print("wait complete");
  //});

  /** server() lists information about the rethinkdb server **/

  //conn.server().then(_handleMessage);

  /**addListener adds a listener to a close,connect,or error event**/
  //conn.addListener("close",()=>print("connection closed"));

  //conn.addListener("connect",()=>print("connection established"));

  /**connect closes and reopens the connection**/

  //conn.connect();

  /**dbCreate() takes a string for the name of the database to be created and returns a CreatedResponse**/

  //r.dbCreate("test").run(conn).then(_handleMessage).catchError(_handleError);

  /**range returns a Cursor containing a range of numbers**/

  //r.range(5).run(conn).then(_handleCursor);

  /**dbDrop() takes a string for the database to be dropped**/

  //r.dbDrop("app_db").run(conn).then(_handleMessage);

  /**dbList() lists the databases in the system**/

  //r.dbList().run(conn).then(_handleMessage);

  /**tableCreate creates a table in the specified database**/

  //r.tableCreate("animals").run(conn).then(_handleMessage).catchError(_handleError);

  //r.db("test").tableCreate("people",{"primary_key":"person_id","durability":"soft"}).run(conn).then(_handleMessage);

  //r.tableCreate("zookeepers").run(conn).then(_handleMessage);

  /**tableDrop removes a table from a database**/

  //r.tableDrop("people").run(conn).then(_handleMessage);

  /**tableList lists the tables in the database**/

  //r.tableList().run(conn).then(_handleMessage);

  //r.db("test").tableList().run(conn).then(_handleMessage);

  /**indexCreate creates an index on the specified table**/

  //r.table("animals").indexCreate("kingdom").run(conn).then(_handleMessage);

  //r.db("test").table("animals").indexCreate("kingdomAndphylum",(animal)=>[animal('kingdom'),animal('phylum')],{"multi":true}).run(conn).then(_handleMessage);

  //r.table("animals").indexCreate("phy").run(conn).then(_handleMessage);

  /**indexDrop drops the index from the table**/

  //r.table("animals").indexDrop("kingdom").run(conn).then(_handleMessage);

  /**indexList lists the indexes for a table**/

  //r.table("animals").indexList().run(conn).then(_handleMessage);

  /**indexRename renames a secondary index for a table**/
  //r.table("animals").indexRename("phy", "phylum").run(conn).then(_handleMessage);

  /**indexStatus() returns the status of the index**/

  //r.table("animals").indexStatus().run(conn).then(_handleMessage);

  //r.table("animals").indexStatus("phylum").run(conn).then(_handleMessage);

  //r.table("animals").indexStatus("phylum","kingdomAndphylum").run(conn).then(_handleMessage);

  /**indexWait() waits for an index to be ready**/

  //r.table("animals").indexWait().run(conn).then(_handleMessage);

  //r.table("animals").indexWait("phylum").run(conn).then(_handleMessage);

  //r.table("animals").indexWait("phylum","kingdomAndphylum").run(conn).then(_handleMessage);

  /**changes() returns the changes to a table when an item is inserted,deleted,updated,or replaced**/

  //r.table("animals").changes().run(conn).then(_handleCursor);

  /**insert() inserts records into a table**/

  //r.table("animals").insert({"id":"cheetah","last_seen":new DateTime.now(),"number_in_wild":4000,"kingdom":"cat","phylum":"cat also","locations":["jungle","zoo"]},{'durability':'hard','return_changes':true,'conflict':'update'}).run(conn).then(_handleMessage);

//  List animalsToAdd = [
//                       {"number_in_wild":2000,"kingdom":"horse","phylum":"horse also","locations":["jungle","zoo"]},
//                       {"number_in_wild":5000,"kingdom":"bear i guess","phylum":"bear also","locations":["jungle","zoo"]}
//       ];

//  r.table("animals").insert(animalsToAdd).run(conn).then(_handleMessage);

  /**update updates matching records**/

  //r.table("animals").update({"last_seen":r.time(2012,1,21,'Z'),"number_in_wild":r.row("number_in_wild").add(1).rqlDefault(0)},{'durability':'hard','non_atomic':true}).run(conn).then(_handleMessage);

  //r.table("animals").update((animal)=>r.branch(animal("number_in_wild").gt(100),{"number_in_wild":100},{"number_in_wild":200})).run(conn).then(_handleMessage);

  /** replace replaces a record **/

  //r.table("animals").get("sloth").replace({"id":"sloth","number_in_wild":2000,"kingdom":"not a bear","phylum":"not the same as a bear"}).run(conn).then(_handleMessage);

  //r.table("animals").get("cats").replace({"id":"cats","date":r.now(),"replaced":true},{"return_changes":true}).run(conn).then(_handleMessage);

  //r.db("test").table("animals").replace((animal)=>animal.without("kingdom")).run(conn).then(_handleMessage);

  /**delete deletes a record**/

  //r.table("animals").get("sloth").delete().run(conn).then(_handleMessage);

  /**sync ensures the table has been written**/

  //r.table("animals").sync().run(conn).then(_handleMessage);

  /**db returns a refrence to the database to be chained with other commands**/

  //r.db("test")

  /**table() selects all documents for the given database**/

  //r.db("test").table("animals",{"use_outdated":true}).run(conn).then(_handleCursor);

  /**get retrieves a document by the primary key**/

  //r.table("animals").get("cheetah").run(conn).then(_handleMessage);

  /**getAll retrieves documents matching any all keys**/

  //r.table("animals").getAll("cheetah","cats").run(conn).then(_handleMessage);

  //r.table("animals").getAll("cat",{"index":"kingdom"}).run(conn).then(_handleMessage);

  /**between gets all documents with a key between two values**/

  //r.table("animals").between(12,80,{"index":"number_in_wild"}).run(conn).then(_handleCursor);

  /**filter() filters based on the predicate**/

  //r.table("animals").filter((animal)=>animal("locations").contains("jungle")).run(conn).then(_handleCursor);

  /**innerJoin returns the inner product of two sequences**/
  /***
  List keepers = [
                  {"name":"billy","watches":["cheetah","cats"]}
                  ];

  r.table("zookeepers").insert(keepers).run(conn).then(_handleMessage);
  **/

  //r.table("zookeepers").innerJoin(r.table("animals"),(keeper,animal)=>keeper("watches").contains(animal("id"))).run(conn).then(_handleCursor);

  //r.expr([1,2,3,4,5]).innerJoin([2,3],(row1,row2)=>row1.lt(row2)).run(conn).then(_handleMessage);

  /**outerJoin returns the left outer join**/

  //r.table("zookeepers").outerJoin(r.table("animals"),(keeper,animal)=>keeper("watches").contains(animal("id"))).run(conn).then(_handleCursor);

  //r.expr([1,2,3,4,5]).outerJoin([2,3],(row1,row2)=>row1.lt(row2)).run(conn).then(_handleMessage);

  /**eqJoin**/

  //r.table("zookeepers").eqJoin('id',r.table("animals")).run(conn).then(_handleCursor);

  //r.expr([{"id":1500}]).eqJoin("id",r.table("animals"),{"index":"number_in_wild"}).run(conn).then(_handleMessage);

  /**zip**/

  //r.expr([{"id":1500}]).eqJoin("id",r.table("animals"),{"index":"number_in_wild"}).zip().run(conn).then(_handleMessage);

  /**map**/

  //r.expr([1,2,3,4,5]).map((num)=>num.add(1)).run(conn).then(_handleMessage);

  /**withfields**/

  //r.table("animals").withFields("id","last_seen").run(conn).then(_handleCursor);

  /**concatMap works like a reduce**/

  //r.table("animals").concatMap((animal)=>animal("locations").rqlDefault([])).run(conn).then(_handleCursor);

  /**orderBy specifies the property to order by**/

  //r.table("animals").orderBy({"index":"seen_in_wild"}).run(conn).then(_handleMessage);

  //r.table("animals").orderBy(r.desc("last_seen"),"id").run(conn).then(_handleMessage);

  /**skip() skips the number of records specified**/

  //r.table("animals").orderBy(r.asc("number_in_wild")).skip(1).run(conn).then(_handleMessage);

  /**limit() returns no more records than specified**/

  //r.table("animals").limit(3).run(conn).then((response)=>response.toArray().then(_handleMessage);

  /**slice trims the results to the indexes specified**/

  //r.table("animals").slice(3,{"left_bound":"closed"}).run(conn).then(_handleCursor));

  /**nth returns the nth element**/

  //r.expr(["a","b","c"]).nth(2).run(conn).then(_handleMessage);

  /**indexes of returns all indexes of an element**/

  //r.expr(["c","a","b","c"]).indexesOf("c").run(conn).then(_handleMessage);

  /**isEmpty() checks if the sequence is empty**/

  //r.table("animals").isEmpty().run(conn).then(_handleMessage);

  //r.expr([]).isEmpty().run(conn).then(_handleMessage);

  /**union concats two sequences**/

  //r.expr([1,2,3]).union([4,5,6]).run(conn).then(_handleMessage);

  /**sample selects uniform random distribution of a sequence**/

  //r.expr([1,2,3,4,5,6,7,8,9]).sample(3).run(conn).then(_handleMessage);

  /**group Takes a stream and partitions it into multiple groups based on the fields or functions provided**/

  //r.table("animals").group("locations").run(conn).then(_handleMessage);

  /**ungroup Takes a grouped stream or grouped data and turns it into an array of objects representing the groups**/

  //r.table("animals").group("number_in_wild").ungroup().run(conn).then(_handleMessage);

  /**reduce Produces a single value from a sequence through repeated application of a reduction function.**/

  //r.table("animals").map((doc)=>1).reduce((left,right)=>left.add(right)).run(conn).then(_handleMessage);

  /**count counts the objects in a sequence**/

  //r.table("animals").count().run(conn).then(_handleMessage);

  //r.table("animals")("seen_in_wild").count((wild)=>wild.gt(59)).run(conn).then(_handleMessage);

  /**sum adds all objects in a sequence**/

  //r.expr([3,4]).sum().run(conn).then(_handleMessage);

  //r.table("animals").sum((animal)=>animal("seen_in_wild").add(12)).run(conn).then(_handleMessage);

  /**avg averages objects in a sequence**/

  //r.expr([1,4,8,16]).avg().run(conn).then(_handleMessage);

  //r.expr([1,4,8,16]).avg((num)=>num.mul(2)).run(conn).then(_handleMessage);

  /**min finds the smallest of a sequence**/

  //r.expr([100,4,28,588]).min().run(conn).then(_handleMessage);

  //r.expr([100,4,28,588]).min((number)=>number.mul(5)).run(conn).then(_handleMessage);

  /**max finds the maximum of a sequence**/

  //r.expr([8,24,3,5]).max().run(conn).then(_handleMessage);

  //r.expr([8,24,3,5]).max((number)=>number.div(2)).run(conn).then(_handleMessage);

  /**distinct removes duplicates**/

  //r.expr([1,2,2]).distinct().run(conn).then(_handleMessage);

  /**contains returns whether or not a sequence contains an item**/

  //r.expr([1,2,3,[2,1]]).contains([2,1],2).run(conn).then(_handleMessage);

  /**row**/

  //r.table("animals").filter((row)=>row("number_in_wild").gt(1600)).count().run(conn).then(_handleMessage);

  //r.table("animals").filter(r.row("number_in_wild").gt(1400)).count().run(conn).then(_handleMessage);

  /**pluck selects fields specified**/

  //r.table("animals").get("cheetah").pluck("number_in_wild","phylum").run(conn).then(_handleMessage);

  /**without returns everything BUT the specified fields**/

  //r.table("animals").get("cheetah").without("number_in_wild","kingdom").run(conn).then(_handleMessage);

  /**merge merges two objects together**/

  //r.expr({"id":1}).merge({"name":"User"}).run(conn).then(_handleMessage);

  /**append adds an item to the end of an array**/

  //r.expr([1,2,3]).append("end").run(conn).then(_handleMessage);

  /**prepend adds an item to the beginning of an array**/

  //r.expr([1,2,3]).prepend("begin").run(conn).then(_handleMessage);

  /**difference removes the elements from one array to another**/

  //r.expr([1,2,3,4,5]).difference([1,5]).run(conn).then(_handleMessage);

  /**setInsert, inserts an element into an array but treats the array as a set (removes duplicates)**/

  //r.expr([1,3,5,7,9,9]).setInsert(1).run(conn).then(_handleMessage);

  /**setUnion, inserts many elements into an array but treats array as set**/

  //r.expr([1,3,5,7,9,9]).setUnion([1,2,3,4,5,6,7,8,9]).run(conn).then(_handleMessage);

  /**setIntersection intersects two arrays as sets**/

  //r.expr([1,3,5,7,9,9]).setIntersection([1,2,4,6,8,8,9]).run(conn).then(_handleMessage);

  /**setDifference, opposite of setIntersection**/

  //r.expr([1,3,5,7,9,9]).setDifference([1,2,4,6,8,8,9]).run(conn).then(_handleMessage);

  /**( ) gets a single field for an object**/

  //r.table("animals").get("cheetah")("phylum").run(conn).then(_handleMessage);

  //r.expr({"id":1,"name":"ted","age":77})("name").run(conn).then(_handleMessage);

  /**hasFields tests if an object has a certain field or fields**/

  //r.table("animals").get("cheetah").hasFields("kingdom","phylum").run(conn).then(_handleMessage);

  /**insertAt inserts an object into an array at a given index**/

  //r.expr([1,2,3,5]).insertAt(3,4).run(conn).then(_handleMessage);

  /**splice at inserts multiple values starting at the index specified**/

  //r.expr([1,2,3,6]).spliceAt(3,[4,5]).run(conn).then(_handleMessage);

  /**deleteAt removes the item at the specified index**/

  //r.expr([1,2,3,0,4]).deleteAt(3).run(conn).then(_handleMessage);

  //r.expr([1,2,3,0,4]).deleteAt(-3,-1).run(conn).then(_handleMessage);

  /**change at replaces the item at the specified index**/

  //r.expr([1,2,4,4]).changeAt(2,3).run(conn).then(_handleMessage);

  /**keys returns the keys for a row**/

  //r.table("animals").get("cheetah").keys().run(conn).then(_handleMessage);

  /**values returns the values for an object**/

  //r.expr({'a':1,'b':2}).values().run(conn)
  // .then(_handleMessage);

  /**literal replace an object in an update instead of merging**/

  //r.table("animals").get("cheetah").update({"last_seen":r.literal({"now":r.now()})}).run(conn).then(_handleMessage);

  /**object creates an object from key value pairs**/

  //r.object("A","first","B","Second").run(conn).then(_handleMessage);

  /**match matches a string for a regexp**/

  //r.table("animals").filter((animal)=>animal("id").match("^c")).run(conn).then(_handleCursor);

  /**split splits a string into two substrings**/

  //r.expr("this is a sentence.").split().run(conn).then(_handleMessage);

  /**upcase changes a string to uppercase**/

  //r.expr("stringy").upcase().run(conn).then(_handleMessage);

  /**downcase changes a string to lowercase**/

  //r.expr("This Works Too").downcase().run(conn).then(_handleMessage);

  /**add adds or concatenates, depending on type**/

  //r.expr(2).add(2).run(conn).then(_handleMessage);

  //r.expr([1,2,3]).add([4,5,6]).run(conn).then(_handleMessage);

  /**sub subtracts time and numbers **/

  //r.expr(5).sub(2).run(conn).then(_handleMessage);

  /** mul multiplies**/

  //r.expr(2).mul(2).run(conn).then(_handleMessage);

  //r.expr([2,3]).mul(5).run(conn).then(_handleMessage);

  /** div divides**/

  //r.expr(1).div(2).run(conn).then(_handleMessage);

  /**mod gives the remainder**/

  //r.expr(3).mod(2).run(conn).then(_handleMessage);

  /**and computes the logical and of two values**/

  //r.expr(true).and(false).run(conn).then(_handleMessage);

  /**or computes the logical or**/

  //r.expr(true).or(false).run(conn).then(_handleMessage);

  /**eq evaluates equality**/

  //r.expr(2).eq(2).run(conn).then(_handleMessage);

  /**ne evaluates inequality**/

  //r.expr(2).ne(3).run(conn).then(_handleMessage);

  /**gt tests if first value is greater than second**/

  //r.expr(3).gt(2).run(conn).then(_handleMessage);

  /**lt tests if first value is less than the second**/

  //r.expr(3).lt(2).run(conn).then(_handleMessage);

  /**le tests if first value is less than or equal to second**/

  //r.expr(3).le(2).run(conn).then(_handleMessage);

  /**ge tests if first value is greater than or equal to second**/

  //r.expr(3).ge(2).run(conn).then(_handleMessage);

  /**not computes the logical inverse**/

  //r.expr(false).not().run(conn).then(_handleMessage);

  //r.not(true).run(conn).then(_handleMessage);

  /**random generates random number between the given bounds**/

  //r.random().run(conn).then(_handleMessage);

  //r.random(100).run(conn).then(_handleMessage);

  //r.random(200,300).run(conn).then(_handleMessage);

  //r.random(200,300,{"float":true}).run(conn).then(_handleMessage);

  /**now returns the current time**/

  //r.now().run(conn).then(_handleMessage);

  /**time creates a new date object**/

  //r.time(1986, 11, 3, 'Z').run(conn).then(_handleMessage);

  /**epochTime returns the time**/

  //r.epochTime(531360000).run(conn).then(_handleMessage);

  /**ISO8601 creates a time object based on an iso8601 date string**/

  //r.ISO8601('1986-11-03T08:30:00-07:00').run(conn).then(_handleMessage);

  /**inTimeZone returns the same date but in a different timezone**/

  //r.now().inTimezone('-08:00').run(conn).then(_handleMessage);

  /**timezone returns the timezone for a date**/
  //r.now().timezone().run(conn).then(_handleMessage);

  /**during returns if a time is between two others**/

  //r.table("animals").filter(r.row("last_seen").during(r.time(2010, 1, 1, 'Z'),r.time(2014, 12, 31, 'Z'))).run(conn).then(_handleMessage);

  /**date returns the day, month, and year**/

  //r.table("animals").filter(r.row("last_seen").date().ge(r.now().date())).run(conn).then(_handleMessage);

  /**timeOfDay returns the number of seconds elapsed since the beginning of the day**/

  //r.now().timeOfDay().run(conn).then(_handleMessage);

  /**year returns the year of the time object**/

  //r.now().year().run(conn).then(_handleMessage);

  /**month returns the integer representing the month**/

  //r.now().month().run(conn).then(_handleMessage);

  /**day returns the day **/

  //r.now().day().run(conn).then(_handleMessage);

  /**day of week returns the number of the day of the week**/

  //r.now().dayOfWeek().run(conn).then(_handleMessage);

  /**r.monday,r.tuesday ... are mapped to the proper integers**/

  //r.now().dayOfWeek().eq(r.thursday).run(conn).then(_handleMessage);

  /**day of year returns the integer day between 1 and 366**/

  //r.now().dayOfYear().run(conn).then(_handleMessage);

  /**hours returns the hours between 0 and 23 **/

  //r.now().hours().run(conn).then(_handleMessage);

  /**minutes gives the number of minutes in the hour**/

  //r.now().minutes().run(conn).then(_handleMessage);

  /**seconds gives the number of seconds in the minute between 0 and 60 **/

  //r.now().seconds().run(conn).then(_handleMessage);

  /**toISO8601 returns a date as the iso8601 string **/

  //r.now().toISO8601().run(conn).then(_handleMessage);

  /** toEpochTime returns the time object as epoch time**/

  //r.now().toEpochTime().run(conn).then(_handleMessage);

  /**args lets you pass an array of args to a command that takes a variable number of args**/

  //List animals_returned_from_user = ["cats","cheetah"];

  //r.table("animals").getAll(r.args(animals_returned_from_user)).run(conn).then(_handleMessage);

  /**rqlDo is equivalent to the javascript r.do function, do is a keyword in dart**/

  //r.rqlDo(r.table("animals").get("cheetah"),(animal)=>animal("locations")).run(conn).then(_handleMessage);

  //r.table("animals").get("cheetah").rqlDo((animal)=>animal("locations")).run(conn).then(_handleMessage);

  /**branch is an if statement, it accepts a test, a true value and a false value**/

  //r.branch(true, "it is true", "it is false").run(conn).then(_handleMessage);

  /**forEach loops through each item**/

  //r.table("animals").forEach((animal)=>animal.pluck("id")).run(conn).then(_handleMessage);

  /**error throws an error**/

  //r.error("impossible!").run(conn).then(_handleMessage);

  /**rqlDefault will return a default value if one is not found**/

  //r.table("animals").map((animal)=>{"id":animal("id"),"favorite_food":animal("favorite_food").rqlDefault("candy")}).run(conn).then(_handleCursor);

  /**expr constructs a native reql json object**/

  //r.expr(1).run(conn).then(_handleMessage);

  /**js creates javascript expressions**/

  //r.js("new Date();",{"timeout":13}).run(conn).then(_handleMessage);

  /**coerceTo converts one object type to another**/

  //r.expr(1).coerceTo("string").run(conn).then(_handleMessage);

  /**typeOf returns the type**/

  //r.expr(1).typeOf().run(conn).then(_handleMessage);

  /**info returns any available info**/

  //r.table("animals").info().run(conn).then(_handleMessage);

  /**json parses a json string on the server**/

  //r.json("[1,2,3]").run(conn).then(_handleMessage);

  /**http can do lots of stuff and has a ton of options.  be sure
   * to check out the documentation**/

  //r.http("https://github.com/billysometimes/rethinkdb/stargazers").run(conn).then(_handleMessage);

  /**for more information check out the rethinkdb javascript API.**/

  /** uuid returns a uuid string**/
  //r.uuid().run(conn).then(_handleMessage);

  /**you can pass uuid a string and it will return the SHA-1 hash**/
  //r.uuid('foo').run(conn).then(_handleMessage);

  /**binary**/
  //r.binary("this data in binary").run(conn).then(_handleMessage);
}

_handleCursor(Cursor cur) {
  cur.listen((item) {
    print(item);
  });
}

_handleMessage(var item) {
  print(item);
}

_handleError(err) {
  print(err.message);
}
