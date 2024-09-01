//
//  GameModel.swift
//  who is that pokemon
//
//  Created by Maria Isabel Torres Torres on 14/12/22.
//

import Foundation

struct GameModel {
    var score = 0
    //    revisar si la respuesta es correcta
    mutating func checkAnswer(_ userAnswer: String, _ correctAnswer: String) -> Bool {
        if userAnswer.lowercased() == correctAnswer.lowercased() {
            score += 1
            return true
        }else{
            return false
        }
    }
//    Obtener Score
    func getScore() -> Int {
        return score
    }
//    Cambiar el score por volver a iniciar el juego
    mutating func setScore(score: Int) {
        self.score = score
    }
}
