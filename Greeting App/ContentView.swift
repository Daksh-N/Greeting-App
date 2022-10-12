//
//  ContentView.swift
//  Greeting App
//
//  Created by Daksh Nakra on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var greeting = "Hello"
    @State private var final = ""
    var body: some View {
        VStack{
            Text("Greeting App")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            TextField("Enter Name", text: $name)
                .multilineTextAlignment(.center)
                .padding()
            Button("Say Hello", action: {
                final = "\(greeting), \(name)!"
            })
            .padding()
            Text(final)
                .padding()
            HStack{
            Button("Hello", action: {
                greeting = "Hello"
                final = "\(greeting), \(name)!"
            })
            Button("Goodbye", action: {
                greeting = "Goodbye"
                final = "\(greeting), \(name)!"
            })
            Button("Aloha", action: {
                greeting = "Aloha"
                final = "\(greeting), \(name)!"
            })
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
