//
//  LoginView.swift
//  MakiDash
//
//  Created by Wiktor Bramer on 02/05/2025.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                Image("MakiDash_logo_transparent").resizable().scaledToFit()
                
                Text("Login to MakiDash!").font(.largeTitle).fontWeight(.bold)
                
                NavigationLink("Login with PassKey", destination: ContentView().navigationBarBackButtonHidden(true))
                    .font(.headline)
                    .padding()
                    .background(Color.brown.opacity(0.5))
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .padding()

            }

        }
        
    }
}

#Preview {
    LoginView()
}
