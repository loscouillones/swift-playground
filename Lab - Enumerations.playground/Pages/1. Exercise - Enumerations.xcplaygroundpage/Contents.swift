/*:
 ## Exercise - Enumerations
 
 Définissez une énumération `Suit` avec quatre cas possibles: `clubs`, `piques`, `diamants` et `coeurs`.
 */
enum Suit {
    case pique, coeur, carreau, treffle
}

/*:
 Imaginez qu'un tour de cartes vous soit présenté et que vous deviez piocher une carte et vous souvenir de la couleur de la couleur. Créez une instance variable de `Suit` appelée `cardInHand` et affectez-la à la casse `hearts`. Imprimez l'instance.
 */
var cardInHand: Suit = .coeur
print(cardInHand)

/*:
 Maintenant, imaginez que vous deviez remettre la carte que vous aviez tirée et en tirer une autre. Mettez à jour la variable pour qu'elle soit un chat plutôt qu'un coeur. */
cardInHand = .pique

/*:
 Imaginez que vous écrivez une application qui affichera une fortune amusante (par exemple, quelque chose comme "Vous allez bientôt trouver ce que vous cherchez") à partir de cartes tirées. Ecrivez une fonction appelée `getFortune(cardSuit: )` qui prend un paramètre de type `Suit`. Dans le corps de la fonction, écrivez une instruction switch basée sur la valeur de `cardSuit`. Imprimez une fortune différente pour chaque valeur `Suit`. Appelez la fonction plusieurs fois en transmettant différentes valeurs pour `cardSuit` à chaque fois.
 */
func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .carreau:
        print("Avec carreau vous avez de la chance")
    case .coeur:
        print("Dites-le avec le coeur")
    case .pique:
        print("Aie, ça pique")
    case .treffle:
        print("Aujourd'hui est votre jour de chance")
    }
}

getFortune(cardSuit: .carreau)
cardInHand = .carreau
getFortune(cardSuit: cardInHand)
cardInHand = .treffle
getFortune(cardSuit: cardInHand)
/*:
 Créer une struct `Card` ci-dessous. Il devrait y avoir deux propriétés, un pour `suit` de type `Suit` et une autre pour `value` de type `Int`. */
enum Value {
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
}

struct Card {
    var suit: Suit
    var value: Value
}

/*:
 Combien de valeurs peuvent jouer aux cartes? Combien de valeurs `Int` peut-il être? Il serait plus sûr d’avoir une énumération correspondant à la valeur de la carte. Dans la structure ci-dessus, créez une énumération pour `Value`. Il devrait avoir des cas pour `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Changez le type de `value` de  `Int` en `Value`. Initialisez deux objets `Card` et imprimez pour chacun d'eux une déclaration détaillant la valeur et la couleur de la carte.
 */
// 8 cartes possibles, Int: 2^32 - 1 ?
let card1 = Card(suit: .carreau, value: .ace)
print("couleur: \(card1.suit), carte: \(card1.value)")
let card2 = Card(suit: .treffle, value: .four)
print("couleur: \(card2.suit), carte: \(card2.value)")
//: page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
