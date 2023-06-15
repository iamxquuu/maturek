//
//  ContentView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct mainScreenView: View {
    
    @Binding var loggedIn: Bool
    
    var body: some View {
        NavigationView {
            TabView {
                
                Centrum()
                    .tabItem {
                        VStack {
                            Image(systemName: "house.fill")
                            Text("Centrum")
                                
                        }
                    }
                
                Odkryj()
                    .tabItem {
                        VStack {
                            Image(systemName: "magnifyingglass")
                            Text("Odkryj")
                                
                        }
                    }
                Biblioteka()
                    .tabItem {
                        VStack {
                            Image(systemName: "bookmark.fill")
                            Text("Biblioteka")
                                
                        }
                    }
            }

        }.navigationBarBackButtonHidden(true)
    }
}

