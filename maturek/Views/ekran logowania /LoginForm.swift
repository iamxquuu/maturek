//
//  LoginForm.swift
//  Firebase Auth Demo
//
//  Created by Marcel Maciaszek on 30/05/2023.
//

import SwiftUI
import FirebaseAuth

struct LoginForm: View {
    
    @Binding var formShowing: Bool
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String?
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    
                }
                if errorMessage != nil {
                    Section {
                        Text(errorMessage!)
                    }
                }
                
                
                
                Button {
                    //perform login
                    signIn()
                } label: {
                    HStack {
                        Spacer()
                        Text("Zaloguj się")
                        Spacer()
                    }
                    
                }

                
                
            }
            .navigationBarTitle("Zaloguj się")
        }
    }
    
    func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            DispatchQueue.main.async {
                if error == nil {
                    formShowing = false
                }
                else {
                    // if there's an issue with logging in
                    errorMessage = error!.localizedDescription
                }
            }
            
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm(formShowing: Binding.constant(true))
    }
}
