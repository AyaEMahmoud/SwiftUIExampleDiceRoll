//
//  ContentView.swift
//  SwiftUIExampleDiceRoll
//
//  Created by Aya Mahmoud on 10/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("diceeLogo")
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 4)
                }
                Button("Roll") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.foregroundColor(.white)
                    .padding()
                    .font(Font.system(size: 50))
                    .fontWeight(.heavy)
                    .background(Color.secondary)
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}
