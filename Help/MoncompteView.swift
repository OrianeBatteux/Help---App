//
//  MoncompteView.swift
//  Help
//
//  Created by Nathalie Amoros on 29/03/2023.
//

// CODé PAR MIKKDAD ET NATHALIE 

import SwiftUI

struct MoncompteView: View {
    var body: some View {
            
            ZStack(alignment: .top) {

                Color("Jordyblue")
                    .frame(height: 740)
                
                
            VStack {
                Spacer()
                    
                Text("Mon compte")
                        .font(.system(size: 15))
                        .bold()
                    
                Group {
                
                    VStack {
                            
                            Circle()
                                .foregroundColor(Color.white)
                                .frame(width: 75, height: 75)
                                .overlay {
                                    Image("Monsieur")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                            
                    VStack {
                                
                                BulleView(text: "Nom : Dadkim")
                                BulleView(text: "Prénom : Marcel")
                                BulleView(text: "Date de naissance : 01/02/75")
                                BulleView(text: "Pseudo : Marcel")
                                BulleView(text: "Email : dadkimseb@hotmail.com")
                                BulleView(text: "Localité : 93100")
                                
                    HStack {
                                    
                                Circle()
                                    .foregroundColor(Color.white)
                                    .frame(width: 20.0, height: 172.0)
                                    .offset(x: -50, y: 44)
                                    
                                Text("Je peux apporter mon aide")
                                    .offset(x: -50, y: 44)
                                    .font(.system(size: 20))
                                    .bold()
                                    
                }
                                
                    HStack {
                                    
                                Circle()
                                    .foregroundColor(Color.white)
                                    .frame(width: 20.0, height: 172.0)
                                    .offset(x: -30, y: -80)
                                    
                                Text("J'ai besoin de trouver des infos")
                                    .offset(x: -30, y: -80)
                                    .font(.system(size: 20))
                                    .bold()
                                    
                                }
                                
                            }
                        }
                    }
                    
                }
                
            }
    }
}
   
struct MoncompteView_Previews: PreviewProvider {
    static var previews: some View {
        MoncompteView()
    }
}
