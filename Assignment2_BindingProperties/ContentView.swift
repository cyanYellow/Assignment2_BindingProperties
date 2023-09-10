//
//  ContentView.swift
//  Assignment2_BindingProperties
//
//  Created by Willie Green on 9/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    @State var name : String = ""
    @State var email : String = ""
    @State var buttonText : String = "Submit"
    
    var body: some View {
        
        VStack{
            Image("notebook")
                .frame(width: 500, height: 500, alignment: .center)
                .overlay(
                    VStack{
                        Text("Willie Green")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame( width: 500, height: 50)
                            .background(
                                Rectangle()
                                    .fill(Color.white)
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
                    }
                )
            Form(content: {
                Text("get in touch")
                TextField("Name", text: $name)
                TextField("email", text: $email)
            })
            .padding(.top, 15.0)
            
            Button(buttonText){
                buttonText = "Sent"
            }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
