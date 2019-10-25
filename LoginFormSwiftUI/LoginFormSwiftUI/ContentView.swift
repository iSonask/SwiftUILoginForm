//
//  ContentView.swift
//  LoginFormSwiftUI
//
//  Created by keval dattani on 24/10/19.
//  Copyright © 2019 keval dattani. All rights reserved.
//

import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    @State var userName: String = ""
    @State var password: String = ""
    
    var body: some View {
        KeyboardObservingView {
            VStack {
                WelcomeText()
                ImageView()
                TextField("UserName", text: $userName)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5)
                    .padding(.bottom, 20)
                    .keyboardType(.emailAddress)
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .keyboardType(.default)
                Button("LOGIN") {
                    print("button tapped")
                }.font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
                
                
            }.padding()
        }
    }
}


struct WelcomeText: View {
    var body: some View{
        return Text("Welcome").padding(.bottom, 20).font(.largeTitle)
    }
}

struct ImageView: View {
    var body: some View{
        return Image("warning")
            .resizable()
            .aspectRatio(UIImage(named: "warning")!.size, contentMode: .fill)
            .frame(width: 150, height: 150, alignment: .center)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
