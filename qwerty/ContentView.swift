//
//  ContentView.swift
//  qwerty
//
//  Created by Jan Hovland on 13/11/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    @State var shown: Bool = false
    @State var msg = ""
    
    // @State var Status = ""
    
    var body: some View {
        VStack {
            
            TextField("Email", text: $email)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                
                Button(action: {
                    
                    // self.Status = CheckUser()
                    
                    if CheckUser() == "true" {
                    // if self.Status == "true" {
                        self.msg = "You are now logged in"
                    }
                    
                    self.shown.toggle()
                    
                }) {
                    Text("Signin")
                }
                
                Button(action: {
                    
                    
                    self.shown.toggle()
                    
                }) {
                    Text("Signup")
                }

            }
            .alert(isPresented: $shown) {
                return Alert(title: Text(self.msg))
            }
            
        }
    }
}

