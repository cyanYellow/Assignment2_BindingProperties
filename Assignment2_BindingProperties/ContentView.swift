//
//  ContentView.swift
//  Assignment2_BindingProperties
//
//  Created by Willie Green on 9/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            .frame(width: 500, height: 500, alignment: .center)
            .overlay(
                Text("Willie Green")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame( width: 500, height: 50)
                    .background(
                        Rectangle()
                            .fill(Color.white))
            )
        Menu("portfolio") {
            Text("Web Design")
            Text("Experience Design")
            Text("Graphic Design")
            }
            .frame(width: 500, height: 50, alignment: .center)
            .background(
                Rectangle()
                    .fill(Color.white))
        Form(content: {
            Text("get in touch")
            TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            TextField("email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        })
        .padding(.top, 15.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
