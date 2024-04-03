import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10)
//                .fill(.black)
                .stroke()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            
            
        }.frame(width: 320,height: 700)
    }
}

PlaygroundPage.current.setLiveView(ContentView())
