//
//  OnboardingView.swift
//  Help
//
//  Created by Nathalie Amoros on 29/03/2023.
//
//
//
//CODé PAR MIKKDAD

import SwiftUI

struct OnboardingView: View {
    
    let image = Image("enfant")
    let imageA = Image("Petitboy")
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.white, Color.white, Color("Jordyblue")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
        VStack {
          HStack {

                image
                  .resizable()
                  .frame(width: 150, height: 200)
                  .offset(x: 0, y: 10)
                  
                imageA
                  .resizable()
                  .frame(width: 150, height: 200)
                  .offset(x: -30, y: -50)
}
    
              Text("Vous avez des enfants qui ont des troubles autistiques diagnostiqués ?")
                  .font(.title)
                  .fontWeight(.black)
                  .multilineTextAlignment(.center)
                  .padding(30)
           

          }
          .padding()

                }
       
      }
  }


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
