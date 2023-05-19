//
//  ContentView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct mainScreenView: View {
    var body: some View {
        TabView {
            
            listOfSubjectsView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        
                    }
                }
            
            newsView()
                .tabItem {
                    VStack {
                        Image(systemName: "newspaper")
                        
                    }
                }
            
            quizView()
                .tabItem {
                    VStack {
                        Image(systemName: "chart.bar.doc.horizontal")
                        
                    }
                }
            
            accountStatsView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle.fill")
                        
                    }
                }
            
            settingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        
                    }
                }
            
            
           
            
        }
    }
}

struct mainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        mainScreenView()
    }
}
