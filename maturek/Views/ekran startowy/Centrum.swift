//
//  listOfSubjectsView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct Centrum: View {

    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("backgroundColor"))
                ScrollView {
                    VStack(alignment: .leading) {
                        reusableTitleWithPhoto(BigTitle: "Centrum", Title: "Newsy", ImageTitle: "person.crop.circle")
                        
                        VStack(alignment: .leading) {
                            
                            reusableRectangle(cornerRadius: 15, height: 120)
                                .foregroundColor(.white)
                            Text("*aby zobaczyć więcej, rozwiń klikając!")
                                .foregroundColor(.blue)
                                .font(.subheadline)
                                .padding(.leading, 20)
                                
                            
                        }
                        secondSubtitle(title: "Subskrypcja")
                        NavigationLink {
                            widokSubskrypcji()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(.black)
                                    .padding(.horizontal)
                                    .frame(height: 60)
                                HStack {
                                    Text("Zasubskrybuj MATUREK+")
                                        .font(.headline)
                                    
                                }
                            }
                        }
                        secondSubtitle(title: "Nasze Social Media")
                        //Link("Twitter", destination: URL(string: "https://twitter.com/maturekpl")!)
                        
                        Spacer()
                    }
                }
            }

        }
    }
}
struct Centrum_Previews: PreviewProvider {
    static var previews: some View {
        Centrum()
    }
}
