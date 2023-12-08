//
//  MemezApp.swift
//  Memez
//
//  Created by MaKayla Ortega Robinson on 7/15/23.
//

import SwiftUI

@main
struct MemezApp: App {
    
    var memez = Memez()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(memez)
        }
    }
}
