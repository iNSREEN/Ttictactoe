

import SwiftUI

struct MainView: View {
    
   @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        VStack {
            Button {
                viewModel.isGamePresented = true
            } label: {
                GameButton(title: "TicTocTac", backgruond: Color(.systemBrown))
            }
        } .fullScreenCover(isPresented: $viewModel.isGamePresented) {
            GameView(viewModel: GamrViewModel ())
        }
        
     
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
