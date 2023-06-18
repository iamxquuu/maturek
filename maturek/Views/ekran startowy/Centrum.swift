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
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                                    .frame(height: 60)
                                HStack {
                                    Text("Subskrypcja MATUREK+")
                                        .font(.headline)
                                    
                                }
                            }
                        }
                        secondSubtitle(title: "Nasze Social Media")
                    // MARK: social media
                        Group{
                            ZStack {
                                reusableRectangle(cornerRadius: 15, height: 60)
                                    .foregroundColor(.white)
                                HStack {
                                    //Twitter
                                    let fixedColumns = Array(repeating: GridItem(.flexible(minimum: 0), spacing: 5, alignment: .center), count: 4)
                                        
                                    LazyVGrid(columns: fixedColumns) {
                                        Link(destination: URL(string: "https://twitter.com/maturekpl")!) {
                                            HStack {
                                                Image("twitter")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(height: 30)
                                            }
                                        }
                                        //Youtube
                                        Link(destination: URL(string: "https://www.youtube.com/@maturek")!) {
                                            HStack {
                                                Image("youtube")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(height: 38)
                                            }
                                        }
                                        //Instagram
                                        Link(destination: URL(string: "https://www.instagram.com/maturekpl")!) {
                                            HStack {
                                                Image("instagram")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(height: 30)
                                            }
                                        }
                                        //tiktok
                                        Link(destination: URL(string: "https://www.tiktok.com/@maturekpl")!) {
                                            HStack {
                                                Image("tiktok")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(height: 30)
                                               
                                                
                                            }
                                            
                                        }
                                    }
                                    
                                    
                                    
                                    Spacer()
                                    
                                    
                                }.padding(.horizontal)
                                
                            }
                            HStack {
                                Text("*możesz kliknąć w ikonkę, aby przejść do wybranej platformy :))")
                                    .foregroundColor(.blue)
                                    .font(.subheadline)
                                    .padding(.leading, 20)
                                Spacer()
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
