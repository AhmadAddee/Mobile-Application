//
//  TicTacToeVM.swift
//  TicTacToeSwiftUI
//
//  Created by Jonas Wåhslén on 2021-11-22.
//

import Foundation
import AVFoundation

class NbackVM : ObservableObject  {
    let synthesizer = AVSpeechSynthesizer()
    var theModel = NbackModel()
    @Published var markers : [aMarker] = initMarkers()
   
    func resetGame(){
        markers = initMarkers()
        theModel.resetGame()
    }
    
    
    func aMove(position: Int){
        var randomNumber = position
        randomNumber = Int.random(in: 0...8)
        print("aMove: \(position)")
        let res = theModel.aMove(position: randomNumber)
        if res != 0 {
            markers[randomNumber].state = res
          
        }
    }
    
    func checkWinner() -> Int{
        return theModel.checkWinner()
    }
    func findPoints()-> Bool{
        return theModel.findPoints()
    }
    
    func sMove(position: Int)
    {
        var letterPosition = position
        letterPosition = Int.random(in: 0...8)
        let randomGeneratedPosition = theModel.sMove(position: letterPosition)
        let nouns = randomGeneratedPosition.noun
        let number = randomGeneratedPosition.position
        if(number != 0)
            {
            speech(lett:nouns)
        }
        
        
    }
    
    //func points(points:Int) -
    //Ändra namn
    func speech(lett:String){
        if(lett == "House"){
            let G = AVSpeechUtterance(string: "house")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(G)
           
        }else if(lett == "Tree"){
            let Y = AVSpeechUtterance(string: "tree")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(Y)
        }else if(lett == "Ipad"){
            let Z = AVSpeechUtterance(string: "ipad")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(Z)
        }else if(lett == "Lights"){
            let R = AVSpeechUtterance(string: "lights")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(R)
        }else if(lett == "School"){
            let B = AVSpeechUtterance(string: "school")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(B)
        }else if(lett == "Ice"){
            let O = AVSpeechUtterance(string: "ice")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(O)
        }else if(lett == "Car"){
            let S = AVSpeechUtterance(string: "car")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(S)
        }else if(lett == "Fan"){
            let Q = AVSpeechUtterance(string: "fan")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(Q)
        }else if(lett == "Bus"){
            let H = AVSpeechUtterance(string: "Bus")
            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
            synthesizer.speak(H)
        }
        
    }
}

func initMarkers() -> [aMarker] {
    return [
        aMarker(id: 0, state: 0, x: 0, y: 0),
        aMarker(id: 1, state: 0, x: 1, y: 0),
        aMarker(id: 2, state: 0, x: 2, y: 0),
        aMarker(id: 3, state: 0, x: 0, y: 1),
        aMarker(id: 4, state: 0, x: 1, y: 1),
        aMarker(id: 5, state: 0, x: 2, y: 1),
        aMarker(id: 6, state: 0, x: 0, y: 2),
        aMarker(id: 7, state: 0, x: 1, y: 2),
        aMarker(id: 8, state: 0, x: 2, y: 2)
    ]
}


struct aMarker: Hashable, Codable, Identifiable {
    var id: Int
    var state : Int
    var x: Int
    var y: Int
}


