//
//  ContentView.swift
//  Firebase Auth Demo
//
//  Created by Marcel Maciaszek on 29/05/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct ContentView: View {
    
    @Binding var loggedIn: Bool
    
    @State private var firstname: String = ""
    
    var body: some View {
        NavigationView {
            VStack (spacing: 20){
                Text("Welcome")
                
                TextField("Name", text: $firstname)
                
                Button {
                    saveFirstName()
                } label: {
                    Text("Save")
                }
                
                
                
                Button {
                    
                    try! Auth.auth().signOut()
                    loggedIn = false
                } label: {
                    Text("Sign Out")
                }
               
                NavigationLink {
                    // destination view to navigation to
                    mainScreenView()
                } label: {
                    Text("Przejdz do maturka")
                        .foregroundColor(.gray)
                }
                
            }
        }
        
    }
        func saveFirstName() {
            
            if let currentUser = Auth.auth().currentUser {
                let cleansedFirstName = firstname.trimmingCharacters(in: .whitespacesAndNewlines)
                    
                    let db = Firestore.firestore()
                    let path = db.collection("users").document(currentUser.uid)
                    path.setData(["firstname":cleansedFirstName]) { error in
                        
                        if error == nil {
                            
                        }else{
                            
                        }
                        
                        
                        
                    }
                }
            }
        }
    

