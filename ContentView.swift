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
            VStack{
                
                Image("eric3")
                    .resizable()
                    .ignoresSafeArea()
                    
                Image("eric2")
                    .resizable()
                    .ignoresSafeArea()
                
            }
        
            
            VStack{
                Text("EH5 trivia counter")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .background(Color.white)
                
                Text("\(count) ")
                    .font(.custom("Helvetica",size:80))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .shadow(color:.white,radius: 20)
                    .padding()
                //first row of buttons
                HStack{
                    Button {
                        self.count += 1
                    } label: {
                        Text("+")
                            .font(.custom("Helvetica",size:90))
                            .fontWeight(.heavy)
                            .padding()
                            .frame(width: 200, height: 100, alignment: .center)
                            .foregroundColor(Color.green)
                            .background(Color.clear)
                            .shadow(color: .black, radius:10)
                            .border(.green,width: 5)
                            .cornerRadius(20)
                    }
                    Button {
                        self.count -= 1
                    } label: {
                        Text("-")
                            .font(.custom("Helvetica",size:90))
                            .padding()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(Color.red)
                            .background(Color.clear)
                            .shadow(color: .black, radius:10)
                            .border(.red,width: 5)
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
                Text("\(count1) ")
                    .font(.custom("Helvetica",size:80))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .frame(width: 100.0, height: 105.0)
                    .shadow(color:.white,radius: 20)
                HStack{
                    Button {
                        self.count1 += 1
                    } label: {
                        Text("+")
                            .font(.custom("Helvetica",size:90))
                            .fontWeight(.heavy)
                            .padding()
                            .frame(width: 200, height: 100, alignment: .center)
                            .foregroundColor(Color.green)
                            .background(Color.clear)
                            .shadow(color: .black, radius:10)
                            .border(.green,width: 5)
                            .cornerRadius(20)
                    }
                    Button {
                        self.count1 -= 1
                    } label: {
                        Text("-")
                            .font(.custom("Helvetica",size:90))
                            .padding()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(Color.red)
                            .background(Color.clear)
                            .shadow(color: .black, radius:10)
                            .border(.red,width: 5)
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
        }//Zstack
        
        
    }
}
//-------------------------------------------
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
            .previewInterfaceOrientation(.portrait)
    }
}
