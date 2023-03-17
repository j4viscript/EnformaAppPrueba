//
//  LoginForm.swift
//  Enforma
//
//  Created by Javier Oskar Murillo Cota on 13/03/23.
//

import SwiftUI

struct LoginForm: View {
    @State private var e: String = ""
    @State private var p: String = ""
    @EnvironmentObject var login : UserViewModel
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Correo Electronico")
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                HStack{
                    TextField("Escriba aquí", text: $e)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding(8)
                        .font(.headline)
                    Spacer()
                    Image(systemName: "envelope")
                }
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.black.opacity(0.5))
            }//:HSTACK
            VStack{
                HStack{
                    Text("Contraseña")
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                HStack{
                    SecureField("Escriba aquí", text: $p)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding(8)
                    Spacer()
                    Image(systemName: "eye")
                }//:HSTACK
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.black.opacity(0.5))
            }
            HStack{
                Spacer()
                Text("¿Olvidaste tu contraseña?")
                    .font(.headline)
            }
            VStack{
                Button(action: {
                    login.login(email: e, password: p)
                }, label: {
                    Text("Acceder")
                        .font(.headline)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 80)
                        .padding(.vertical, 12)
                        .background(Color("btnAccess"))
                        .cornerRadius(12)
                })//:BUTTON
                Text("o bien")
                    .font(.headline)
                    .padding()
                Button(action: {}, label: {
                    Text("Registrate")
                        .font(.headline)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 80)
                        .padding(.vertical, 12)
                        .background(Color.black)
                        .cornerRadius(12)
                })//:BUTTON
            }//:VSTACK
            .padding(.vertical,12)
        }//:VSTACK
        .padding(20)
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
