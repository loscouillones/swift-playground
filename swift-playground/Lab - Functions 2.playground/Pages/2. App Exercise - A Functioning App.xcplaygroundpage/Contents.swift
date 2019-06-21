/*:
 ## App Exercise - A Functioning App
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de suivi de la condition physique.
   
 
 Comme vous l'avez peut-être deviné, les fonctions sont essentielles pour faire fonctionner votre application. Par exemple, dans chaque exercice traitant du nombre de pas jusqu’à présent, vous avez simplement attribué un nombre d’étapes à une variable `steps`. Cela n’est pas très réaliste étant donné que le nombre d’étapes que vous prenez augmente progressivement et continue de changer tout au long de la journée.
   
 
 Un processus récurrent comme celui-ci est un candidat idéal pour une fonction. Ecrivez une fonction appelée `incrementSteps` après la déclaration de` pas` ci-dessous qui incrémentera `pas` et affichera sa valeur. Appelez la fonction plusieurs fois et observez les impressions.
 */
var steps = 9001

func incrementSteps(){
    steps += 1
}

incrementSteps()
print(steps)
incrementSteps()
print(steps)
/*:
De même, si vous souhaitez fournir régulièrement des mises à jour de progression à votre utilisateur, vous pouvez intégrer vos instructions de flux de contrôle contrôlant les progrès dans une fonction. Écrivez une fonction appelée `progressUpdate` après la déclaration de `goal` ci-dessous. La fonction devrait afficher "Vous partez du bon pied". si `steps` est inférieur à 10% de `goal`, "vous êtes presque à mi-chemin!" si `steps` est inférieur à la moitié de `goal`, "Vous en êtes à mi-chemin!" si `steps` est inférieur à 90% de `goal`, "Vous y êtes presque!" si `steps` est inférieur à `goal`, et que "vous battez votre objectif!" autrement. Appelez la fonction et observez l'impression. N'oubliez pas que vous pouvez convertir des nombres en utilisant l'initialiseur Int ou Double approprié.
 */
let goal = 10000
func progressUpdate() {
    if Double(steps) < Double(goal) * 0.1 {
        print("Vous partez du bon pied")
    } else if Double(steps) < Double(goal) / 2 {
        print("Vous êtes presque à mi-chemin")
    } else if Double(steps) < Double(goal) * 0.9 {
        print("Vous y êtes presque!")
    } else if steps < goal {
        print("Vous batterez votre objectif!")
    }
}
progressUpdate()
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)
