//
//  InfoView.swift
//  HannaCard SwiftUI
//
//  Created by Hanna Putiprawan on 1/26/21.
//

import SwiftUI

struct InfoView: View {
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.white)
            .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(HStack {
                Image(systemName: imageName)
                Text(text)
            }, alignment: .center)
            .foregroundColor(Color("Info Color"))
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "Placeholder")
            .previewLayout(.sizeThatFits)
    }
}
