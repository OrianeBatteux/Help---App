//
//  OnboardingView3.swift
//  Help
//
//  Created by Nathalie Amoros on 29/03/2023.
//


//CODé PAR MIKKDAD

import SwiftUI

struct OnboardingView3: View {
    let imageB = Image("Croodcall")
    @Binding var next: Bool
    var body: some View {

          
                ZStack {
                    LinearGradient(colors: [Color.white, Color.white, Color("Jordyblue")], startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    
                    VStack {
                        Group {
                            imageB
                                .resizable()
                                .frame(width: 300, height: 200)
                                .padding(20)
                            
                            Text("Trouvez un Helper grâce à la Map en un clin d'oeil!")
                                .font(.title)
                                .fontWeight(.black)
                                .multilineTextAlignment(.center)
                                .padding(30)
                            
                            
                            Button {
                                next = true
                            } label: {
                                Text("Fermer")
                                    .padding()
                                    .background(.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                            }

                          
                               
                            
                        }
                        
                    }
                    }
                }

                    
//                    NavigationLink {
//                        TaaView()
//                    } label: {
//                        Text("Contacter")
//                            .padding()
//                            .background(.black)
//
//                            .foregroundColor(.black)
//                            .cornerRadius(20)
//
//                    }
                }
              
               
                
            
      
        
        
    

struct OnboardingView3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView3(next: .constant(false))
    }
}
