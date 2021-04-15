//
//  ContentView.swift
//  Shared
//
//  Created by Eric Li on 2021/4/15.
//

import SwiftUI

struct ContentView: View {
    @State private var breathIn = true
    @State private var breathOut = false
    var body: some View {
        VStack{
            VStack{
                Text("沉静下来,")
                    .font(.largeTitle)
                    .bold()
                Text("将注意力放在呼吸上")
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }
            .padding()
            VStack{
                FlowerView()
                HStack{
                    Text("呼气")
                        .font(.title)
                        .opacity(breathOut ? 0.1 : 1)
                        .animation(Animation.easeInOut(duration: 4.5).delay(0.5).repeatForever())
                        .onAppear{
                            breathOut.toggle()
                        }
                        .padding()
                    Text("吸气")
                        .font(.title)
                        .opacity(breathIn ? 0.1 : 1)
                        .animation(Animation.easeInOut(duration: 4.5).delay(0.5).repeatForever())
                        .onAppear{
                            breathIn.toggle()
                        }
                }
               
            }.padding()

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

