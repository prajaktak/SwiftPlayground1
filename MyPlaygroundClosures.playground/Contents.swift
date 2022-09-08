//define Book
struct Book{
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageCount: Int
}

// create several Book instances
let book1 = Book.init(title: "Where the wild things are", authorLastName: "Sendak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48)
let book2 = Book(title: "The little Prince", authorLastName: "de Saint-Exupéry", authorFirstName: "Antoine", readingAge: 10, pageCount: 96)
let book3 = Book(title: "Oh the places you'll Go!", authorLastName: "Seuss", authorFirstName: "Dr.", readingAge: 10, pageCount: 56)
let book4 = Book(title: "Goodnight moon", authorLastName: "Wise Brown", authorFirstName: "Margaret", readingAge: 1, pageCount: 30)
let book5 = Book(title: "The Hobbit", authorLastName: "Tolkien", authorFirstName: "J.R.R.", readingAge: 12, pageCount: 300)

// create an Array of Book elements
let allBooks = [book1, book2, book3, book4, book5]

//Step1 : created normal function
//func comapreTwoBooks(firstBook: Book, secondBook: Book) -> Bool {
//    if (firstBook.readingAge <= secondBook.readingAge){
//        return true
//    }else{
//        return false
//    }
//}

//Step2: created a closure and pass it as an argument
//let ageSortedBooks = allBooks.sorted(by: {
//(firstBook: Book, secondBook: Book) -> Bool
//in
//if (firstBook.readingAge <= secondBook.readingAge){
//    return true
//}else{
//    return false
//}
//})

//Step3: optimizing closure code
/*
 #1. we can remove the function declaration as it is redundant because the function is going to accept only 2 parameter function which returns boolean so no need of writting function declaration. so the code will look like
 
         let ageSortedBooks = allBooks.sorted(by: {

         in
         if (firstBook.readingAge <= secondBook.readingAge){
             return true
         }else{
             return false
         }
         })
 
 #2. we can remove the in as there is no function declaration we do not need "in" to specify code start. By removing in code will looks like
 
         let ageSortedBooks = allBooks.sorted(by: {
             if ($0.readingAge <= $1.readingAge){
                 return true
             }else{
                 return false
             }
         })
 
 #3.As there is no other argument we can take closure code out of the () paranthesis, which will look like
 
         let ageSortedBooks = allBooks.sorted(by:){
             if ($0.readingAge <= $1.readingAge){
                 return true
             }else{
                 return false
             }
         }
 
 this is called trailing closure
 #4.As we are not writting closure in parenthesis there is no need of keeping parameter name and parenthesis. So after removing (by:) the code will look like
 
         let ageSortedBooks = allBooks.sorted{
             if ($0.readingAge <= $1.readingAge){
                 return true
             }else{
                 return false
             }
         }
 
 #5.As the if statement is returning just the resuklt of the statement we can remove the if statement and just return the comaparison result the code will look like
 
         let ageSortedBooks = allBooks.sorted{
             return $0.readingAge <= $1.readingAge
         }
 
 #6 As the closure is going to return then writting return is redundant so we can just remove it  so the final code looks like following code
 */
let ageSortedBooks = allBooks.sorted{ $0.readingAge <= $1.readingAge }
ageSortedBooks


