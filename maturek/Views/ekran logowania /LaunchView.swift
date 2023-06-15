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
        if !loggedIn {
            //show logged out view
            VStack {
                HStack {
                    VStack(alignment: .leading){
                        Text("maturek")
                            .font(.title)
                            .bold()
                        Text("matura w jednym miejscu")
                    }
                    Spacer()
                    Image("maturek-logo-zaluguj-sie")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 124)
                        
                    
                }
                Spacer()
                
                Text("Zaloguj się!")
                    .font(.title)
                    .bold()
                    
                Text("Aby kontynować, prosimy Cię o")
                Text("zalogowanie się na naszej platformie. :))")
                    .padding(.bottom, 20)
                
                // Sign in BUTTON
                Button {
                    
                    //show login form
                    loginFormShowing = true
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.black)
                            .frame(height: 60)
                        Text("Zaloguj się")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 24))
                    }
                        
                    
                    
                    
                }
                .sheet(isPresented: $loginFormShowing, onDismiss: checkLogin) {
                    LoginForm(formShowing: $loginFormShowing)
            }
            
                // Create acc button
                Button {
                    createFormShowing = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.black)
                            .frame(height: 60)
                        Text("Zarejestruj się")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 24))
                    }
                    
                }.sheet(isPresented: $createFormShowing, onDismiss: checkLogin) { CreateForm(formShowing: $createFormShowing)
                }
                
            }.onAppear {
                checkLogin()
            }.padding(20)
        }
        else {
            //show logged in View
            mainScreenView(loggedIn: $loggedIn)
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
