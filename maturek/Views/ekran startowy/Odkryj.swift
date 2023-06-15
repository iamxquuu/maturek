//
//  newsView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct Odkryj: View {
    var body: some View {
        
        GeometryReader { geo in
            ScrollView {
                LazyVStack{
                    HStack {
                        
                        Text("News Feed")
                            .bold()
                            .font(.largeTitle)
                        Image("maturekLogoBlack")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: geo.size.height / 30)
                    }
                    
                    ForEach(0..<6) { index in
                        ZStack{
                            Rectangle()
                                .foregroundColor(.white)
                            Image("obrazek1")
                                .resizable()
                                
                            VStack {
                                Spacer()
                                ZStack(alignment: .center) {
                                    
                                    Rectangle()
                                        .foregroundColor(.white)
                                        
                                        
                                    VStack(alignment: .center) {
                                        Text("-15PLN na kursy z matematyki")
                                            .font(.headline)
                                            .padding(8)
                                        
                                            
                                            
                                    }
                                    
                                }
                                .cornerRadius(15)
                                .padding()
                                .shadow(radius: 5)
                                .frame(height: geo.size.height / 17)

                            }.padding(.bottom, 10)
                                
                                
                        }
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .frame(height: geo.size.height / 5)
                    }
                }
                
                
            }
            
        }
        
    }
}

struct Odkryj_Previews: PreviewProvider {
    static var previews: some View {
        Odkryj()
    }
}
