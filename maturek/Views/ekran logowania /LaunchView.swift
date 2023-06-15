//
//  LaunchView.swift
//  Firebase Auth Demo
//
//  Created by Marcel Maciaszek on 30/05/2023.
//

import SwiftUI
import FirebaseAuth


struct LaunchView: View {
    
    @State var loggedIn = false
    @State var loginFormShowing = false
    @State var createFormShowing = false
    
    var body: some View {
        //check the logged in property and show the approprate view
        GeometryReader { geo in
            
            if !loggedIn {
                //show logged out view
                VStack {
                    
                    // Sign in BUTTON
                    Button {
                        
                        //show login form
                        loginFormShowing = true
                        
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: geo.size.width * 0.85, height: geo.size.height * 0.06, alignment: .center)
                                .cornerRadius(10)
                            
                            Text("Zaloguj się")
                                
                                .bold()
                                
                        }
                            
                        
                        
                        
                    }
                    .sheet(isPresented: $loginFormShowing, onDismiss: checkLogin) {
                        LoginForm(formShowing: $loginFormShowing)
                }
                
                    // Create acc button
                    Button {
                        createFormShowing = true
                    } label: {
                        Text("Załóż konto")
                        
                    }.sheet(isPresented: $createFormShowing, onDismiss: checkLogin) { CreateForm(formShowing: $createFormShowing)
                    }
                    
                }.onAppear {
                    checkLogin()
                }.padding(10)
            }
            else {
                //show logged in View
                mainScreenView(loggedIn: $loggedIn)
            }
            
        }
        
        }
        
        
        
        
    func checkLogin() {
            loggedIn = Auth.auth().currentUser == nil ? false : true
        
        
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
