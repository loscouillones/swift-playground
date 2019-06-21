/*:
 ## App Exercise - Workout or Nil
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de suivi de la condition physique.
   
 
     Avez-vous déjà accidentellement appuyé sur un bouton dans une application? C'est assez commun. Dans votre application de suivi de la condition physique, vous décidez que si un utilisateur appuie accidentellement sur un bouton pour démarrer un entraînement puis met fin à l'entraînement dans les 10 secondes, vous ne voulez tout simplement pas créer et consigner l'entraînement. Sinon, l'utilisateur devra supprimer l'entraînement du journal.
   
 
     Créez une structure `Workout` ayant les propriétés `startTime` et `endTime` de type `Double`. Il est difficile de travailler avec les dates, vous utiliserez donc des doubles pour représenter le nombre de secondes écoulées depuis minuit, ce qui signifie que 28800 représenterait 28 800 secondes, ce qui correspond exactement à 8 heures. L'heure de départ est donc 8 heures.
   
 
     Ecrivez un initialiseur disponible contenant les paramètres de vos heures de début et de fin, puis vérifiez s'ils sont espacés de moins de 10 secondes. S'ils le sont, votre initialiseur devrait échouer. Sinon, ils doivent définir les propriétés en conséquence.
 */


/*:
Essayez d’initialiser deux instances d’un objet `Workout` et d’imprimer chacune d’elles. L'un d'eux ne doit pas être initialisé car les heures de début et de fin sont trop rapprochées. L'autre devrait initialiser avec succès un objet `Workout`. */


/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 6 of 6
