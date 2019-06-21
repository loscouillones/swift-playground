import Foundation
/*:
 ## App Exercise - Food Functions
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de suivi de la condition physique.
   
 
 Supposons que votre application de suivi de la condition physique donne aux utilisateurs la possibilité de consigner des aliments. Une fois que les aliments ont été enregistrés, les utilisateurs doivent pouvoir revenir en arrière et voir ce qu’ils ont mangé à un repas donné.
   
 
 Ecrivez une fonction qui prend un paramètre `String` où vous passerez soit en "Petit-déjeuner", "Déjeuner" ou "Dîner". La fonction devrait alors renvoyer l'objet `Meal` associé à ce repas ou `nil` si l'utilisateur n'a pas encore consigné ce repas. Notez qu'un objet `Repas` et un dictionnaire, `repas`, représentant le journal des repas ont été créés ci-dessous. Appelez la fonction une ou deux fois et imprimez la valeur de retour.
 */
struct Meal {
    var food: [String]
    var calories: Int
}

var meals: [String: Meal] = ["Breakfast": Meal(food: ["Bagel", "Orange Juice", "Egg Whites"], calories: 530)]


/*:
 iOS comes with a few different APIs for persistence, or saving data. You'll learn more about persistence in another lesson, but for now imagine what an app experience would be like if every time you opened the app all of your data was gone. That would be frustrating, right?
 
 Write a function that will check to see if your meal log (a dictionary like that in the previous exercise) is saved to the device. If it is, return the meal log. If it isn't, return an empty dictionary of type `[String: Any]`. The code you should use in this exercise for retrieving something saved to the device is `UserDefaults.standard.dictionary(forKey: "mealLog")`. This code will return an optional `[String: Any]`. If it return a value, that is your meal log. If it returns `nil`, then no meal log has been saved. Call the function and print the return value.
 */


//: [Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Failable Initializers](@next)
