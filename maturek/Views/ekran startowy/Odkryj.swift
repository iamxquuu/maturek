//
//  newsView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct Odkryj: View {
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("backgroundColor"))
            ScrollView {
                VStack {
                    reusableTitle(BigTitle: "Odkyj", Title: "Szukaj")
                    // przycisk wyszukaj
                    Button {
                        
                    } label: {
                        ZStack() {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .frame(height: 60)
                            HStack {
                                Text("Czego chcesz się dzisiaj nauczyć?")
                                    .font(.subheadline)
                                Spacer()
                                Image(systemName: "magnifyingglass")
                            }.padding(.horizontal, 30)
                        }
                    }
                    Spacer()
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
