//
//  ContentView.swift
//  Dice-Game-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-05.
//

import SwiftUI

struct ContentView: View {
    
    @State var lefDiceNumber = 1
    @State var rightDiceNumber = 1
    
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
                    DiceView(n: lefDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.lefDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
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

struct DiceView: View {
    
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


