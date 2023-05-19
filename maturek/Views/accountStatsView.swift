//
//  accountStatsView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct accountStatsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("KONTO")
                    .bold()
                    .font(.largeTitle)
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            
                
                
            HStack {
            
                Image("pierwszeprof")
                    .resizable()
                    
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.bottom, 20)
                    .padding(.trailing, 30)
                
                VStack(alignment: .leading) {
                    Text("Krzysztof Jaki")
                        .bold()
                        .font(.system(size: 28))
                        
                    Text("@krzsztof32")
                        .bold()
                        .foregroundColor(.gray)
                        .font(.system(size: 24))
                        
                    
                    
                }
                
            }
            
            //czy napewno to potrzeba?
            
            Text("Twój obecny pakiet: ")
                .bold()
                .font(.system(size: 22))
            Text("Pakiet MATUREK+")
                .bold()
                .foregroundColor(.green)
            
            
            
            Group {
                Text("STATYSTYKI")
                    .bold()
                    .font(.largeTitle)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                HStack{
                    Image(systemName: "checkmark")
                    Text("Rozwiazanych zadan: 689")
                    Text("(560)")
                        .foregroundColor(.green)
                }
                HStack{
                    Image(systemName: "clock")
                    Text("Czas spedzony w aplikacji: 54h 20min")
                }
                
                HStack{
                    Image(systemName: "calendar")
                    Text("Jesteś z nami już: 7 miesięcy")
                }
                
            }
            
            Group {
                VStack(alignment: .leading){
                    HStack{
                        Text("ZNAJOMI")
                            .bold()
                            .font(.largeTitle)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        Text("(5)")
                            .bold()
                            .font(.system(size: 17))
                            
                    }
                    
                    HStack{
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            
                    }
                        
                }
                
            }
            Group {
                VStack(alignment: .leading){
                    HStack{
                        Text("ODZNAKI")
                            .bold()
                            .font(.largeTitle)
                            .padding(.bottom, 10)
                        Text("(5/84)")
                            .font(.system(size: 17))
                            .padding(.bottom, 10)
                            .bold()
                    }
                    
                    HStack{
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.bottom, 20)
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.bottom, 20)
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.bottom, 20)
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.bottom, 20)
                        Image("pierwszeprof")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.bottom, 20)
                    }
                        
                }
                
            }
        }.padding()
        
    }
}

struct accountStatsView_Previews: PreviewProvider {
    static var previews: some View {
        accountStatsView()
    }
}
