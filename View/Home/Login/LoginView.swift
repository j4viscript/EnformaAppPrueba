//
//  LoginView.swift
//  Enforma
//
//  Created by Javier Oskar Murillo Cota on 13/03/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            Image("pesasbgimage")
                .resizable()
                .scaledToFill()
                .frame(width: 500, height: 100)
            Spacer()
            Login()
                .offset(y: -50)
        }.background(Color("bgLoginColor")).ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
