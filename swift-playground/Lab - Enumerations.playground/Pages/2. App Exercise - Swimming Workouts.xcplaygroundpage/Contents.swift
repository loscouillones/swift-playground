/*:
 ## App Exercise - Swimming Workouts
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de suivi de la condition physique.
   

 Les exercices précédents ont introduit l’idée que votre application de suivi de la condition physique peut permettre aux utilisateurs de suivre des séances d’entraînement de natation. Créez une structure `SwimmingWorkout` ci-dessous avec les propriétés de` distance`, `time` et `stroke`. `distance` et `time` devraient être de type `Double` et représenteront la distance en mètres et le temps en secondes, et `stroke` devrait être de type `String`.
 */
enum Stroke{
    case freestyle, butterfly, backstroke, brasse
}

struct SWimmingWorkout {
    var distance: Double
    var time: Double
    var stroke: Stroke
}

/*:
Autoriser `stroke` à être de type `String` n'est pas très sûr du type. Dans la structure `SwimmingWorkout`, créez une énumération appelée `Stroke` qui contient des cas pour `freestyle`, `butterfly`, `backstroke` et `brasse`. Changez le type de `stroke` de `String` en `Stroke`. Créez deux instances d'objets `SwimmingWorkout`.
 */
var workout1 = SWimmingWorkout(distance: 0, time: 0, stroke: .freestyle)
var workout2 = SWimmingWorkout(distance: 0, time: 0, stroke: .brasse)

/*:
Maintenant, imaginez que vous souhaitiez enregistrer les séances d’entraînement de natation séparément en fonction de la nage. Vous pouvez utiliser des tableaux comme variables statiques sur `SwimmingWorkout` pour cela. Ajoutez quatre variables statiques, `freestyleWorkouts`, `butterflyWorkouts`, `backstrokeWorkouts` et `breaststrokeWorkouts`, à `SwimmingWorkout` ci-dessus. Chacun devrait être du type `[SwimmingWorkout]` et devrait par défaut être des tableaux vides.
 */
//struct Toto {
//    var name = "aa"
//    var toto: Int?
//}
//
//var titi = Toto(name: "blah", toto: nil)
//
//var tutu: Int?
//
//let tata = tutu!
var tutu: Int? = 0
if let plop = tutu {
    print("yeah")
}

func blah(name: String, middleName: String?, _ lastName:String = "dupond") {
    
}

blah(name: "nico", middleName:"blah")

struct MyStruct {
    var option:Int?
    
    init(option:Int? = nil) {
        self.option = option
    }
}

var myStruct = MyStruct()

/*:
 Ajoutez maintenant une méthode d’instance à `SwimmingWorkout` appelée `save()` qui ne prend aucun paramètre et n’a aucune valeur de retour. Cette méthode ajoutera son instance au tableau statique sur `SwimmingWorkout` qui correspond à sa nage. Dans `save()`, écrivez une instruction switch qui active la propriété `stroke` de l'instance et ajoute `self` au tableau approprié. Appelez save sur les deux instances de `SwimmingWorkout` que vous avez créées ci-dessus, puis imprimez le ou les tableaux auxquels ils auraient dû être ajoutés pour voir si votre méthode `save` fonctionne correctement.
 */


/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
