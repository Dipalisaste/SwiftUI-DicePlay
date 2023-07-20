//
//  ContentView.swift
//  DicePlay-SwiftUI
//
//  Created by ranjit dhumal on 20/07/23.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Color(red: 0.00, green: 0.58, blue: 0.20)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Dicelogo").resizable().frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll").font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}
struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}

