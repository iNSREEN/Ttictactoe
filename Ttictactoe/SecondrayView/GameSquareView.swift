//
//  GameSquareView.swift
//  Ttictactoe
//
//  Created by Nsreen Alfaifi on 16/07/1444 AH.
//

import SwiftUI

struct GameSquareView: View {
    
    var proxy : GeometryProxy
    
    var body: some View {
        Rectangle()
            .foregroundColor(.gray.opacity(0.4))
            .frame(width: proxy.size.width / 3 - 15  ,
                   height:  proxy.size.width / 3 - 15  )
    }
}

//struct GameSquareView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameSquareView()
//    }
//}
