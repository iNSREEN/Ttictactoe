//
//  GamrViewModel.swift
//  Ttictactoe
//
//  Created by Nsreen Alfaifi on 17/07/1444 AH.
//

import SwiftUI

final class GamrViewModel: ObservableObject {
    
    let colums : [GridItem] = [GridItem(.flexible())
                               ,GridItem(.flexible())
                               ,GridItem(.flexible())]

    @Published var game = Game(id: UUID().uuidString, Player1Id: "PLAYER1", Player2Id: "PLAYER2", blockMoveForPlayerId: "PLAYER2", winningPlayerId: "", rematchPlayerId: [], moves: Array(repeating: nil, count: 9))
    
    private let winPatterns: Set<Set<Int>> = [ [0,1,2], [3,4,5], [6,7,8]
                                              ,[0,3,6], [1,4,7], [2,5,8],
                                               [0,4,8] ,[2,4,6]  ]
    
    

    
    
    func processPlayerMove ( for position:Int ){
        
        // check if the postion is occipied

        if isSquareoccipied(in: game.moves, forIndex: position){
return}
        game.moves[position] = move(isPlayer1: true , boardIndex: position)

        //block the move
        game.blockMoveForPlayerId = "player2"
        
        
        
        // check for win
        
        if checkForWinCondition(for: true , in: game.moves){
            print("u have won !!!")
            return
        }
        
        
        // check for draw
        
        if checkForDraw(in: game.moves){
            print("u have won !!!")
            return
        }
            
        
    }
    
    
    
    func isSquareoccipied ( in moves: [move?] , forIndex index: Int) -> Bool{
        
        return moves.contains(where: {$0?.boardIndex == index})
    }
    
    
    
    func checkForWinCondition(for player1: Bool, in moves: [move?]) -> Bool {
        // remov all nils
        let playerMoves = moves.compactMap{$0}.filter{$0.isPlayer1 == player1}
        let playerPositions = Set(playerMoves.map { $0.boardIndex})
        
        // combier
        for pattern in winPatterns where pattern.isSubset(of: playerPositions ){
            return true
        }
        
        
        
        return false
    }

    
    func checkForDraw(in moves : [move?]) -> Bool {
        return moves.compactMap{$0}.count == 9
    }
    
    
}

