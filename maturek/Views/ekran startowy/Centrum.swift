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
                    VStack {
                        reusableTitleWithPhoto(BigTitle: "Centrum", Title: "Newsy", ImageTitle: "person.crop.circle")
                        
                        
                        NavigationLink {
                            widokSubskrypcji()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                                    .frame(height: 60)
                                HStack {
                                    Text("Zasubskrybuj MATUREK+")
                                        .font(.subheadline)
                                    
                                }
                            }
                        }
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
