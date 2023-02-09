//
//  GameView.swift
//  Ttictactoe
//
//  Created by Nsreen Alfaifi on 11/07/1444 AH.
//

import SwiftUI

struct GameView: View {

    
    @ObservedObject var viewModel : GamrViewModel
    @Environment(\.presentationMode) var mode : Binding<PresentationMode>
    

    var body: some View {

        GeometryReader{ geometry in
            
            VStack{
             
                    Text("Waiting for the Plyer")
                   // LodingView()
                
                
                Spacer().padding()
                
                VStack{
                    LazyVGrid(columns: viewModel.colums  , spacing: 15){
                            
                            ForEach(0..<9){i in
                                ZStack{
                                   GameSquareView(proxy: geometry)
                                    PlayerIndicatorView(systemImageName: viewModel.game.moves[i]?.indicator ?? "applelogo")
                                    
                                }
                                .onTapGesture {
 
                                    viewModel.processPlayerMove(for: i)
                                    
                                    
                                }
                                
                            }
                        }
                    
                }
                
                
                
                Spacer().padding()
                
                
                
                Button {
                   
                    mode.wrappedValue.dismiss()
                    
                } label: {
                    GameButton(title: "Leave", backgruond: Color.orange)
                }
                
            }
        }
       
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GamrViewModel())
    }
}
