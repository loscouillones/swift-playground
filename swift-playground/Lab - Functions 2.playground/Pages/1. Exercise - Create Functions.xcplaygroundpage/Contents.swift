/*:
 ## Exercise - Create Functions
 
 Ecrivez une fonction appelée `introduceMySelf` qui imprime une brève introduction de vous-même. Appelez la fonction et observez l'impression.
 */
func introduction() {
    print(
    """
    Ceci est une petite introduction de moi-même.
    Plop plop
    """
    )
}

introduction()

/*:
 Écrivez une fonction appelée `magicEightBall` qui génère un nombre aléatoire, puis utilise une instruction switch ou une instruction if-else-if pour imprimer différentes réponses en fonction du nombre aléatoire généré. `let randomNum = arc4random_uniform (UInt32 (5))` générera un nombre aléatoire de 0 à 4, après quoi vous pourrez imprimer différentes phrases correspondant au nombre généré. Appelez la fonction plusieurs fois et observez les différentes impressions. Notez que la génération de nombres aléatoires ne fonctionnera que si votre fonction est déclarée après l'instruction `import Foundation` ci-dessous. En effet, la fonction `arc4random_uniform (_ :)` est déclarée dans le framework `Foundation`.

 */
import Foundation

func magicEightBall() {
    let randomNum = arc4random_uniform (UInt32 (5))
    
    switch randomNum {
    case 0:
        print("c'est nul: 0")
    case 1:
        print("c'est pas mal mais peut mieux faire: 1")
    case 3:
        print("presque le sommet: 3")
    case 4:
        print("Yeah max!")
    default:
        print("bof bof")
    }
}

magicEightBall()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
