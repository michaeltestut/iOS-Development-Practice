//
//  ContentView.swift
//  I Am Rich
//
//  Created by Michael Testut on 1/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.red)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("I am Rich")
                    .font(.smallCaps(.title)())
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
