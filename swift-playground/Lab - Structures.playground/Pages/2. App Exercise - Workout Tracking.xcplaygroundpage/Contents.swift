/*:
 ## App Exercise - Workout Tracking
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de suivi de la condition physique.

 
 Votre application de suivi de la condition physique ne serait pas très utile si elle ne pouvait pas aider les utilisateurs à suivre leurs séances d'entraînement. Afin de suivre l'exécution d'un utilisateur, vous devez disposer d'une sorte de structure de données pouvant contenir des informations sur l'entraînement. Par souci de simplicité, vous vous concentrez spécifiquement sur les séances d’entraînement.


 Créez une structure `RunningWorkout`. Il devrait avoir des propriétés variables pour `distance`, `time` et `elevation`. Les trois propriétés doivent avoir une valeur par défaut de 0.0.
 */
struct RunningWorkout {
    var distance = 0.0
    var time = 0.0
    var elevation = 0.0
}

/*:
Créez une instance de variable de `RunningWorkout` appelée `firstRun` sans fournir d'argument. Affiche les trois propriétés de `firstRun`. Ceci est un bon exemple de l'utilisation appropriée des valeurs par défaut, étant donné que tous les entraînements en cours commencent par un changement de distance, de temps et d'altitude de 0.
 */
var firstRun = RunningWorkout()
/*:
Imaginez maintenant que tout au long du parcours, vous parcourez une distance de 2396 mètres en 15,3 minutes et que vous gagnez 94 mètres d’altitude. Mettez à jour les valeurs des propriétés de `firstRun` en conséquence. Imprimez une déclaration sur votre exécution en utilisant les valeurs de chaque propriété.
 */
firstRun.distance = 2396
firstRun.time = 15.3 * 60
firstRun.elevation = 94
print(firstRun)
//: [Previous](@previous)  |  page 2 of 10  |  [Next: Exercise - Memberwise and Custom Initializers](@next)
