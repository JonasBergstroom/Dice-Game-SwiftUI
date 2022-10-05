//
//  ContentView.swift
//  Dice-Game-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-05.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image("DiceGameBG")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("DiceGameLogo")
                    .resizable()
                    .scaledToFit()
                    Spacer()
                HStack {
                Image("dice1")
                Image("dice2")
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                }) {
                    Text("Roll")
                        .font(Font.custom("Noteworthy-Bold", size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
