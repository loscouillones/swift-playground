/*:
 ## App Exercise - Users and Distance
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de suivi de la condition physique.

 
 Pour la plupart des applications, vous aurez besoin d'une structure de données pour stocker des informations sur un utilisateur. Créez une structure `User` qui possède des propriétés pour les informations de base sur un utilisateur. Au minimum, il doit avoir des propriétés pour représenter le nom, l'âge, la taille, le poids et le niveau d'activité d'un utilisateur. Vous pouvez faire cela en ayant `name` un `String`, `age` un `Int`, `height` et `weight` au type `Double`, et `activityLevel` à un `Int` qui représentera un score de 1 à 10 sur leur activité. Implémentez ceci maintenant.
 */
struct User {
    var name = ""
    var age = 0
    var height = 0.0
    var weight = 0.0
    var activityLevel = 1
}

/*:
Créez une instance variable de `User` et appelez-la votre nom. Utilisez l'initialiseur memberwise pour transmettre des informations vous concernant. Imprimez ensuite une description de votre instance `User` à l'aide de ses propriétés.
 */
var user = User(name:"Nicolas", age: 38, height: 184, weight: 80, activityLevel: 1)
print(user)
/*:
 Dans les exercices précédents, vous utilisiez la distance dans l'exemple d'application de suivi de la forme physique sous forme de nombre. Cependant, la distance peut être représentée en utilisant diverses unités de mesure. Créez une structure `Distance` qui représentera la distance dans différentes unités de mesure. Au minimum, il devrait avoir une propriété `meters` et une propriété `feet`. Créez un initialiseur personnalisé correspondant à chaque propriété (si vous ne disposez que de deux propriétés pour meters et feet, vous aurez alors deux initialiseurs) qui prendra une distance dans une unité de mesure et affectera la valeur correcte à ces deux unités. Indice: *1 mètre = 3.28084 feet*.
   
 
 - Exemple: si vous utilisez l'initialiseur pour les compteurs et passez sur une distance de 1600, l'initialiseur doit régler `meters` pour 1600 et `feet` pour 5249.344.
 */
struct Distance {
    var feet: Double
    var meters: Double
    
    init(feet:Double){
        self.feet = feet
        self.meters = feet / 3.28084
    }
    
    init(meters:Double){
        self.meters = meters
        self.feet = meters * 3.28084
    }
}

/*:
Créez maintenant une instance de `Distance` appelée `mile`. Utilisez l'initialiseur pour les mètres pour définir la distance sur 1 600. Imprimez la propriété pour les feet et vérifiez qu'elle est égale à 5249.344.
 */
var mile = Distance(meters: 1600)
print(mile)
/*:
Maintenant, créez une autre instance de `Distance` et donnez-lui une autre distance. Assurez-vous que les deux propriétés sont correctement définies. */
var mile2 = Distance(meters: 8600)
print(mile2)

//: [Previous](@previous)  |  page 4 of 10  |  [Next: Exercise - Methods](@next)
