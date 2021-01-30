//
//  ContentView.swift
//  HannaCard SwiftUI
//
//  Created by Hanna Putiprawan on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.3686, green: 0.3686, blue: 0.3686)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("hanna").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Hanna Putiprawan")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(imageName: "phone.fill", text: "+1(443)-520-3020")
                InfoView(imageName: "envelope.fill", text: "hputiprawan2@gmail.com")
                InfoView(imageName: "globe", text: "Github: hputiprawan2")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
