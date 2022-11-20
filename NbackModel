
import Foundation

import Foundation

struct NbackModel {
    var currentPlayer = 1 // cross
    var initialArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var compareArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    var random = ["House","Tree","Ipad","Lights","School","Ice","Car","Fan","Bus"] //["G","Y","Z","R","H","B","O","S","Q"]
    var initialNounArray = ["","","","","","","","","",""] as [String]
    var compareNounArray = ["","","","","","","","","",""] as [String]
    var gameIsActive = true
    var count = 1
    var pointer = 0
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    mutating func resetGame(){
        
        initialArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameIsActive = true
        currentPlayer = 1
        count = 1;
    }
    
    mutating func aMove(position: Int) -> Int{
        if gameIsActive {
             
            initialArray[position] = currentPlayer //fyller på array med en cirkel i obestämd plats
            count = count + 1;
            
            pointer = checkForSamePosistion(compare: compareArray, check: initialArray) ? 1 : 0
            
            compareArray = initialArray
                return 1
        }
        return 0
    }
    
    mutating func sMove(position: Int) -> (noun: String, position: Int){
        if gameIsActive{
            let randomizeNoun = random.randomElement()!
            initialNounArray[position] = randomizeNoun
            count = count + 1;
        
            pointer = checkForSameAudio(letter1: compareNounArray, letter2: initialNounArray) ? 1 : 0
            compareNounArray=initialNounArray
            
            
            return (randomizeNoun, 6)
        }
        
        return ("",0)
    }
    
    func getTile(position: Int) -> Int{
        return initialArray[position];
    }

    func checkForSamePosistion(compare:[Int],check:[Int]) -> Bool 
    {        
        return (compare == check) ? true : false
    }
    //Check For Similiarities in Position
    func checkForSameAudio(letter1:[String],letter2:[String]) -> Bool //Fixa bättre namn
    {
        return (letter1 == letter2) ? true : false
    }

    
    func findPoints()-> Bool
    {
        return (pointer == 1) ? true : false
        
    }
    
    mutating func checkWinner() -> Int{
        for combination in winningCombinations {
            if (initialArray[combination[0]] != 0 && initialArray[combination[0]] == initialArray[combination[1]] && initialArray[combination[1]] == initialArray[combination[2]]){
                gameIsActive = false
                
                if initialArray[combination[0]] == 1{
                    return 1
                }else{
                    return 2
                }
            }
        }
        
        if gameIsActive == true && count > 9{
            gameIsActive = false
            return 3
        }
        return 0
    }
}
