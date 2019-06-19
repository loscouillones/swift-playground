/*:
 ## Exercise - Structs, Instances, and Default Values
 
Imaginez que vous créez une sorte d’application pour surveiller l’emplacement. Créez une structure `GPS` avec deux propriétés variables, latitude et longitude, toutes deux avec des valeurs par défaut de 0.0.
 */
struct GPS {
    var latitude = 0.0
    var longitude = 0.0
}

/*:
Créez une instance variable de `GPS` appelée `somePlace`. Il devrait être initialisé sans fournir d'arguments. Imprimez la latitude et la longitude de `somePlace`, qui devrait être 0.0 pour les deux.
 */
var somePlace = GPS()
print(somePlace)
/*:
Changez la latitude de `somePlace` en 51.514004 et la longitude en 0.125226, puis imprimez les valeurs mises à jour.
 */
somePlace.latitude = 51.514004
somePlace.longitude = 0.125226
print(somePlace)
/*:
Maintenant, imaginez que vous créez une application sociale pour partager vos livres préférés. Créez une structure `Book` avec quatre propriétés de variable: `title`, `author`, `pages` et `price`. Les valeurs par défaut pour `title` et `author` devraient être une chaîne vide. `pages` devrait avoir la valeur par défaut 0, et `price` devrait avoir la valeur par défaut 0.0.
 */
struct Book{
    var title = ""
    var author = ""
    var pages = 0
    var price = 0.0
}
/*:
Créez une instance variable de `Book` appelée `favoriteBook` sans fournir d'argument. Imprimez le titre de `favoriteBook`. Est-ce que cela reflète actuellement le titre de votre livre préféré? Probablement pas. Modifiez les quatre propriétés de `favoriteBook` pour refléter votre livre préféré. Puis, en utilisant les propriétés de `favoriteBook`, imprimez des faits sur le livre.
 */
var favoriteBook = Book()
print(favoriteBook.title)
favoriteBook.title = "Learn Swift"
favoriteBook.author = "Tim Cook"
favoriteBook.pages = 240
favoriteBook.price = 33.99
print(favoriteBook)
//: page 1 of 10  |  [Next: App Exercise - Workout Tracking](@next)
