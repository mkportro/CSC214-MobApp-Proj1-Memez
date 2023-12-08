//
//  ContentView.swift
//  Memez
//
//  Created by MaKayla Ortega Robinson on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var memez: Memez
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("show")
                    .font(.title)
                    .fontWeight(.medium)
                
                NavigationLink {
                    MemeView()
                } label: {
                    Image("memez")
                }
                .onTapGesture() {
                    memez.generateMeme()
                }
                .shadow(radius: 10)
                
                Spacer()
                Spacer()
                
                if memez.memeCount == 1 {
                    Text(String(format: NSLocalizedString("singularCount", comment: ""), memez.memeCount))
                } else {
                    Text(String(format: NSLocalizedString("pluralCount", comment: ""), memez.memeCount))
                }
                
                Button("reset") {
                    memez.memeCount = 0
                }
                .padding()
            }
            .padding()
            .onAppear() {
                memez.generateMeme()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(Memez())
        }
    }
}
