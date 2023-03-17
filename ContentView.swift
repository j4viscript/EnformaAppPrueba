//
//  ContentView.swift
//  Enforma
//
//  Created by Javier Oskar Murillo Cota on 13/03/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var login : UserViewModel
    var body: some View {
        Group{
            if login.aunthenticated == 0{
                Login()
            }else if login.aunthenticated == 1{
                Home()
            }else if login.aunthenticated == 2{
                VStack{
                    Text("Email o contraseña son incorrectos")
                    Button(action: {
                        login.aunthenticated = 0
                    }, label: {
                        Text("Regresar")
                    })
                }
            }
        }
    }
}
