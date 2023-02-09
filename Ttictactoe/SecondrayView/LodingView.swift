//
//  LodingView.swift
//  Ttictactoe
//
//  Created by Nsreen Alfaifi on 16/07/1444 AH.
//

import SwiftUI

struct LodingView: View {
    
//    var placeHolder : String
//    @Binding var show : Bool
    var body: some View {
    
      ZStack{
//
//            VStack(spacing: 30 ){
                Color(.systemBackground).edgesIgnoringSafeArea(.all)
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
                
//                Text("wait")
//                    .fontWeight(.bold)
//
//            }   .background(BlurView())
//                .frame(maxWidth: .infinity , maxHeight: .infinity)
//                .background(
//                    Color.primary.opacity(0.35)
//                        .onTapGesture {
//                            withAnimation {
//                                show.toggle()
//                            }
//                        }
//                ).onAppear{
//
//
//                }
//
        
   //    }
        
        
        
    }
}


//struct BlurView : UIViewRepresentable {
//
//    func makeUIView(context: Context) -> UIVisualEffectView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
//
//        return
//    }
//
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//
//    }
//
//
}

