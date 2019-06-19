/*:
 ## Exercise - Parameters and Argument Labels
 
 Ecrire une nouvelle fonction d'introduction appelée `introduction`. Il devrait prendre deux paramètres `String`, `name` et `home`, et un paramètre `Int`, `age`. La fonction devrait imprimer une brève introduction. C'est à dire. si "Mary", "California" et 32 ​​ont été passés à la fonction, cela pourrait indiquer "Mary, 32 ans, vient de Californie." Appelez la fonction et observez l'impression.
 */
func introduction(name: String, home: String, age:  Int) {
    print("\(name), \(age) ans, vient de \(home)")
}

introduction(name: "Nico", home: "Clermont", age: 24)

/*:
Ecrivez une fonction appelée `presque-addition` qui prend deux arguments `Int`. Le premier argument ne devrait pas nécessiter d'étiquette d'argument. La fonction doit additionner les deux arguments, soustraire 2, puis imprimer le résultat. Appelez la fonction et observez l'impression.
 */
func presqueAddition(_ a:Int, b:Int) {
    print(a+b - 2)
}

presqueAddition(5, b: 10)

//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Progress Updates](@next)
