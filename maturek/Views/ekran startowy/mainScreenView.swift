//
//  ContentView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct mainScreenView: View {
    var body: some View {
        NavigationView {
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
                accountStatsView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.circle.fill")
                            
                        }
                    }
            }

        }.navigationBarBackButtonHidden(true)
    }
}

struct mainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        mainScreenView()
    }
}
