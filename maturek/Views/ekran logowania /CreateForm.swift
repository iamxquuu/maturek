//
//  CreateForm.swift
//  Firebase Auth Demo
//
//  Created by Marcel Maciaszek on 30/05/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore
import Firebase

struct CreateForm: View {
    
    @Binding var formShowing: Bool
    
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    
    @State private var errorMessage: String?
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Email", text: $email)
                    TextField("Nazwa użytkownika", text: $name)
                    SecureField("Hasło", text: $password)
                }
                
                if errorMessage != nil {
                    Section{
                        Text(errorMessage!)
                    }
                }
                
                Button {
                    // create acc
                    
                    createAccount()
                } label: {
                    HStack {
                        Spacer()
                        Text("Załóż konto")
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Załóż konto")
        }
        
    }
    
    func createAccount() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            
            DispatchQueue.main.async {
                if error == nil {
                    
                    //save first name
                    
                    saveFirstName()
                    
                    formShowing = false
                }else{
                    errorMessage = error!.localizedDescription
                }
            }
            
        }
    }
    func saveFirstName() {
        
        if let currentUser = Auth.auth().currentUser {
            let cleansedFirstName = name.trimmingCharacters(in: .whitespacesAndNewlines)
                
                let db = Firestore.firestore()
                let path = db.collection("users").document(currentUser.uid)
                path.setData(["name":cleansedFirstName]) { error in
                    
                    if error == nil {
                        
                    }else{
                        
                    }
                    
                    
                    
                }
            }
        }
}

struct CreateForm_Previews: PreviewProvider {
    static var previews: some View {
        CreateForm(formShowing: Binding.constant(true))
    }
}
