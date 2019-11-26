//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Tim Newton on 11/26/19.
//  Copyright © 2019 EduServe, Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNum: leftDiceNumber)
                    DiceView(diceNum: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(Color(.systemGray6))
                        .padding(.horizontal)
                }
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
    let diceNum: Int
    
    var body: some View {
        Image("dice\(diceNum)")
//             .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
