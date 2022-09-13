//
//  ContentView.swift
//  TriviaScoreKeeper
//
//  Created by David on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    @State var count1: Int = 0
    var body: some View {
        ZStack{
            background(Color.red)
                VStack{
                    Image("yam-1")
                        .resizable()
                        .background(Color.gray)
                    Image("yam")
                        .resizable()
                        .background(Color.white)
            
                }
            
            VStack{
                Text("EH5 trivia counter")
                Spacer()
                Text("Team David: \(count) ")
                    .fontWeight(.semibold)
                    .font(.title)
                //first row of buttons
                VStack{
                    Button {
                        self.count += 1
                    } label: {
                        Text("Increment")
                            .font(.title2)
                            .padding()
                            .frame(width: 200, height: 100, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                    Button {
                        self.count -= 1
                    } label: {
                        Text("Minus")
                            .font(.title2)
                            .padding()
                            .frame(width: 200, height: .infinity, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                    
                }
                Button {
                    self.count = 0
                } label: {
                    Text("reset")
                        .font(.title2)
                }
                
                
                Spacer()
    //--------------------------------------------
                Text("Team Not David: \(count1) ")
                    .fontWeight(.semibold)
                    .font(.title)
                VStack{
                    Button {
                        self.count1 += 1
                    } label: {
                        Text("Increment")
                            .font(.title2)
                            .padding()
                            .frame(width: 200, height: .infinity, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                        
                    }
                    Button {
                        self.count1 -= 1
                    } label: {
                        Text("Minus")
                            .font(.title2)
                            .padding()
                            .frame(width: 200, height: .infinity, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }

                }
                
                
                Button {
                    self.count1 = 0
                } label: {
                    Text("reset")
                        .font(.title2)
                }
                Spacer()

            }
        }
    }
}
//-------------------------------------------
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
