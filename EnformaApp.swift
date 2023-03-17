//
//  EnformaApp.swift
//  Enforma
//
//  Created by Javier Oskar Murillo Cota on 13/03/23.
//si

import SwiftUI

@main
struct EnformaApp: App {
    var body: some Scene {
        let login = UserViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
