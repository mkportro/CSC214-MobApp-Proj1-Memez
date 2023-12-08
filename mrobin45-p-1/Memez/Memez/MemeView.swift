//
//  MemeView.swift
//  Memez
//
//  Created by MaKayla Ortega Robinson on 7/15/23.
//

import SwiftUI

struct MemeView: View {
    
    @EnvironmentObject var memez: Memez
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(memez.currMeme.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(memez.currMeme.caption)
                .font(.title2)
                .fontWeight(.heavy)
                .shadow(color: Color.black, radius:1, x:3, y:3)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Back")
                        .font(.title)
                }
            }
        }
    }
}

struct MemeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MemeView()
                .environmentObject(Memez())
        }
    }
}
