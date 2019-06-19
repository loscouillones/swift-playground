/*:
 ## Exercise - Methods
 
Une structure `Book` a été créée pour vous ci-dessous. Ajoutez une méthode d'instance sur `Book` appelée `description` qui affichera des faits sur le livre. Créez ensuite une instance de `Book` et appelez cette méthode sur cette instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    func description() {
        print("titre:", title)
        print("auteur:", author)
        print("pages:", pages)
        print("price:", price)
        print("faits sur le livre")
    }
}

let book = Book(title: "plop", author: "me", pages: 240, price: 33.09)
book.description()
/*:
Une structure `Post` a été créée ci-dessous pour vous, représentant une publication générique sur un réseau social. Ajoutez une méthode de mutation sur `Post` appelée `like` qui incrémentera `likes` de un. Créez ensuite une instance de `Post` et appelez `like()` dessus. Imprimez la propriété `likes` avant et après l'appel de la méthode pour voir si la valeur a été incrémentée ou non.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    mutating func addLike() {
        likes += 1
    }
}

var post = Post(message: "blah", likes: 0, numberOfComments: 0)
post.addLike()
print(post)
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
