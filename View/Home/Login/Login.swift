//
//  Login.swift
//  Enforma
//
//  Created by Javier Oskar Murillo Cota on 13/03/23.
//

import SwiftUI

struct Login: View {
    var body: some View {
        VStack{
            HStack{
                Image("enformaLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding(20)
            }//: HSTACK
            VStack{
                Text("Inicia Sesión")
                    .font(.title)
                    .bold()
            }//: VSTACK
            LoginForm()
                .padding()
        }//: VSTACK
        .background(.white).cornerRadius(12).shadow(color: .black.opacity(0.5) ,radius: 5)
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
