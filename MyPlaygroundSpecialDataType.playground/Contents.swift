//******** Enumeration ********
enum MediaType{
    case book
    case movie
    case music
    case game
    //we can also write as following
    //case book, movie, music, game
}
var ittemType: MediaType
ittemType = MediaType.book


ittemType = MediaType.movie

ittemType = .game

switch ittemType{
case .book:
    print("I have been reading \(ittemType)")
case .game:
    print("I have been playing \(ittemType)")
case .movie:
    print("I have been watching \(ittemType)")
case .music:
    print("I have been listening \(ittemType)")
}
// enum with rawValue
enum BottleSize: String{
    case half = "35.5 cl"
    case standard = "75 cl"
    case magnum = "1.5 liter"
    case jeroboam = "3 liter"
    case rehoboam = "4.5 liter"
    case methuselah = "6 liter"
    case balthazar = "12 liter"
}
var myBottle: BottleSize = .jeroboam
print("Your \(myBottle) is \(myBottle.rawValue)")

// enum with assosiated Value
enum HobbyType{
    case movie(String)
    case music(Int)
    case book (String)
}

var firstItem: HobbyType = .movie("Comedy")
var secondItem: HobbyType = .music(120)

//to access the associated value we write Switch like following
switch firstItem{
case .movie(let genre):
    print("it's a \(genre) movie")
case .music(let bpm):
    print("The music is \(bpm) beats per minute")
case .book(let name):
    print("It's a \(name) book")
}


// ********** Structures *********

struct Movie{
    //properties of structure
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String
    
    //Structures can have behaviour
    func summary()-> String{
        return "\(title) is a \(genre) film released in \(releaseYear) and directed by \(director)"
    }
}
//can define variable like following
//var first: Movie

//or can generate a variable as following Memberwise Initializer
 var first = Movie(title: "Arrival", director: "Denis Villeneve", releaseYear: 2016, genre: "Science Fiction")
var second = Movie(title: "Sing Street", director: "John carney", releaseYear: 2017, genre: "Comedy musical")

print(first.title)
print(second.title)
second.releaseYear = 2016

print(first.summary())
print(second.summary())

// ********** Dictionaries *********

var airlines = ["SWA": "Southwest Airlines",
                "BAW": "British Airways",
                "BHA": "Buddha Air",
                "CPA": "Cathay Pacific"]

// use [ ] to look up a key
if let result  = airlines["SWA"]{
    print(result)
}else {
    print("No match found")
}

// add or change
airlines["DVA"] = "Discovery Airlines" // this will add a new key/value
airlines

//remove element
airlines["BHA"] = nil
airlines

for (key, value) in airlines{
    print(key, value)
}

//Dictionaru of string keys and string values
var periodicElements: [String: String]

//Dictionary of Int keys and String values
var employees:[Int: String]

//Closure example
let ageSortedBooks = allBooks.sorted{
    return ($0.readingAge <= $1.readingAge)
}





