//
//  ContentView.swift
//  warGame
//
//  Created by M. A. Alim Mukul on 03.08.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background").resizable().aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
            VStack {
                Spacer() 
                Image("logo").padding()
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    // update the cards
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update the scores
                    /*playerScore += 1
                    cpuScore += 1*/
                    
                    if playerRand > cpuRand {
                      
                        playerScore += 1
                        
                    } else if playerRand < cpuRand {
                        
                        cpuScore += 1
                        
                    }
                    
                }, label: {
                    Image("dealbutton")
                }).padding()
                
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.system(size: 20)).foregroundColor(Color.white).padding(.bottom, 10.0)
                            
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU").font(.system(size: 20)).foregroundColor(Color.white).padding(.bottom, 10.0)
                            
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }.padding()
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
