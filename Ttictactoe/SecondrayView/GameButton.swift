//
//  GameButton.swift
//  Ttictactoe
//
//  Created by Nsreen Alfaifi on 16/07/1444 AH.
//

import SwiftUI

struct GameButton: View {
    let title : String
    let backgruond : Color
    
    var body: some View {
        
         Text(title)
            .font(.title)
            .fontWeight(.semibold)
            .frame(width: 300 , height: 50)
            .background(backgruond)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GameButton(title: "Play", backgruond: .red)
    }
}
