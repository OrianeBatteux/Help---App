//
//  OnboardingView2.swift
//  Help
//
//  Created by Nathalie Amoros on 29/03/2023.
//

//CODé PAR MIKKDAD

import SwiftUI

struct OnboardingView2: View {
    let imageC = Image("Croodechange")
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.white, Color.white, Color("Jordyblue")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                
                imageC
                    .resizable()
                    .frame(width: 300, height: 200)
                    .padding(20)
                
                Text("Besoin d'aide ? Retrouvez ici des personnes prêtes à vous aider.")
                    .font(.title)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .padding(30)
            }
        }
    }
}
struct OnboardingView2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView2()
    }
}
