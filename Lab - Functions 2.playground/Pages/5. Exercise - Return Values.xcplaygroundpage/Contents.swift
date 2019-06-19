/*:
 ## Exercise - Return Values and Tuples
 
Ecrivez une fonction appelée `greeting` qui prend un argument `String` appelé name et retourne un `String` qui salue le nom qui a été transmis à la fonction. C'est à dire. Si vous passez "Dan", la valeur de retour pourrait être "Salut, Dan! Comment vas-tu?" Utilisez la fonction et imprimez le résultat.
 */
func greeting(name: String) -> String {
    return "Salut, \(name)! Comment vas-tu ?"
}

print(greeting(name: "nico"))

/*:
 Ecrivez une fonction qui prend deux arguments `Int` et retourne un `Int`. La fonction devrait multiplier les deux arguments, ajouter 2, puis renvoyer le résultat. Utilisez la fonction et imprimez le résultat.
 */
func calc(_ a: Int, _ b: Int) -> Int {
    return (a * b) + 2
}

// doit afficher 2 * 6 + 2 = 14
print(calc(2, 6))
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
