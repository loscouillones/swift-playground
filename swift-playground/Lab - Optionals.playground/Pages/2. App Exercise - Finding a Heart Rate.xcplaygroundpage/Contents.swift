/*:
 ## App Exercise - Finding a Heart Rate
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de suivi de la condition physique.
 
 
 De nombreuses API qui vous fournissent des informations recueillies par les options de retour du matériel. Par exemple, une API permettant de travailler avec un moniteur de fréquence cardiaque peut vous indiquer `nil` si le moniteur de fréquence cardiaque est mal ajusté et ne peut pas lire correctement la fréquence cardiaque de l'utilisateur.
 
 
 Déclarez une variable `heartRate` de type `Int?` Et réglez-la sur `nil`. Imprimer la valeur.
 */
var heartRate:Int? = nil
print(heartRate)

/*:
Dans cet exemple, si l'utilisateur fixe le positionnement du moniteur de fréquence cardiaque, l'application peut obtenir une lecture correcte de la fréquence cardiaque. Ci-dessous, mettez à jour la valeur de `heartRate` à 74. Imprimez la valeur.
 */
heartRate = 74
print(heartRate)

/*:
Comme vous l'avez fait dans d'autres exercices d'application, créez une variable `hrAverage` de type` Int` et utilisez les valeurs stockées ci-dessous et la valeur de `heartRate` pour calculer une fréquence cardiaque moyenne.
 */
let oldHR1 = 80
let oldHR2 = 76
let oldHR3 = 79 
let oldHR4 = 70

var averageHR:Int = (oldHR1 + oldHR2 + oldHR3 + oldHR4) / 4

print(averageHR)
/*:
 Si vous n'avez pas décompressé la valeur de `heartRate`, vous avez probablement remarqué que vous ne pouvez pas effectuer d'opérations mathématiques sur une valeur facultative. Vous aurez d’abord besoin de décompresser `heartRate`.
   
     Déballez en toute sécurité la valeur de `heartRate` en utilisant une liaison facultative. S'il a une valeur, calculez la fréquence cardiaque moyenne en utilisant cette valeur et les fréquences cardiaques plus anciennes enregistrées ci-dessus. S'il n'a pas de valeur, calculez la fréquence cardiaque moyenne en utilisant uniquement les fréquences cardiaques les plus anciennes. Dans chaque cas, imprimez la valeur de `hrAverage`.
 */
if let unwrappedHeartRate = heartRate {
    let averageHR:Int = (oldHR1 + oldHR2 + oldHR3 + oldHR4 + unwrappedHeartRate) / 4
    print(averageHR)
}

//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Functions and Optionals](@next)
