//
//  MessagesPage.swift
//  Help
//
//  Created by Akim ABDALLAH on 22/03/2023.
//

//CODé PAR AMELINE

import Foundation
import SwiftUI

struct MessagesSPage: View {
    @State private var text = ""
    var body: some View {
        
        VStack {
            ZStack {
                
                Image("Monsieur")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, -9.0)
                    .frame(width: 50.0, height: 50.0)
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 1)
                    )
            }
            
               Text("Marcel")
                  .font(.system(size: 18))
            
            
            ZStack {
                
                Color("Jordyblue")
                    .frame(width: 400, height: 498)
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Text("Bonjour Marcel !")
                            .padding(.all, 9.0)
                            .background(Color.white)
                            .cornerRadius(30)
                        
                        
                        Image("Petitefille")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70.0, height: 70.0)
                            .padding(.horizontal, 3.0)
                        
                        
                    }
                    .padding(.trailing, -9.0)
                    
                    
                    HStack {
                        
                        Image("Monsieur")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, -7.0)
                            .frame(width: 70.0, height: 70.0)
                        
                        
                        Text("Bonjour Sia ! Que puis-je faire ?")
                            .padding()
                            .background(Color("Lavender"))
                            .cornerRadius(30)
                            .padding(-10.0)
                        Spacer()
                        
                        
                        
                    }
                    
                    
                    HStack {
                        
                        Text("J'ai besoin d'une aide administrative svp.")
                            .padding(.all, 12.0)
                            .background(Color.white)
                            .cornerRadius(30)
                        
                        
                        
                        Image("Petitefille")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70.0, height: 70.0)
                            .padding(.horizontal, -13.0)
                        
                    }
                    
                    
                    HStack {
                        
                        Image("Monsieur")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .trailing], -15.0)
                            .frame(width: 70.0, height: 70.0)
                        
                        
                        Text("Oui, je suis dispo mardi prochain ")
                            .padding()
                            .background(Color("Lavender"))
                            .cornerRadius(30)
                            .padding(-10.0)
                        Spacer()
                        
                        
                        
                    }
                    
                    
                    HStack {
                        
                        Text("Super, à quelle heure êtes-vous dispo?")
                            .padding(.all, 12.0)
                            .background(Color.white)
                            .cornerRadius(30)
                        
                        
                        
                        Image("Petitefille")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70.0, height: 70.0)
                            .padding(.trailing, -12.0)
                        
                    }
                }
                
                
                Spacer()
                
            }
            
            TextField("Discutez avec votre Helper ici", text: $text)
                .textFieldStyle(.roundedBorder)
                .onAppear {
                    DispatchQueue.main.async {
                        UIApplication.shared.sendAction(#selector(UIResponder.becomeFirstResponder), to: nil, from: nil, for: nil)
                        
                        
                        
                        //
                        //                            ToolbarItem(placement: .keyboard) {
                        //                                Button("Send") {
                        //
                        //                                    print("Envoyer le message: \("messageText")")
                        //                                    "messageText" = ""
                        //
                        //                                }
                    }
                }
        }
        .padding(.bottom, 140.0)
     
    }
    
}
    
    
    struct MessagesSPage_Previews: PreviewProvider {
        static var previews: some View {
            MessagesSPage()
        }
    }
    
    


