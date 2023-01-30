//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Michael Testut on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Divider()
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(n:1)
                        .padding()
                    DiceView(n:1)
                        .padding()
                }
                .padding()
                Button(action:{
                    
                }) {
                    Text("Roll")
                        .foregroundColor(.white)
                        .font(.system(size:40))
                        .fontWeight(.heavy)
                        .padding(.horizontal,35)
                }
                .background(Color.red)
                .shadow(radius: 2,x:5,y:5)
                .padding(.vertical, 60)
                Spacer()
                Divider()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

