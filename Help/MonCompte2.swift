//
//  MonCompte2.swift
//  Help
//
//  Created by test on 30/03/2023.
//

// CODé PAR FLORENT 

import SwiftUI

struct MonCompte2: View {
    var body: some View {
        
        NavigationView() {
            ZStack {
                Color("Jordyblue")
                
                VStack(spacing: 20) {
                    
                    Circle()
                        .foregroundColor(Color.white)
                        .frame(width: 75, height: 75)
                        .overlay {
                            Image("Monsieur")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }.padding(.top,10)

                    Spacer()
                    
                    BulleView(text: "Nom : Dadkim")
                    BulleView(text: "Prénom : Marcel")
                    BulleView(text: "Date de naissance : 01/02/75")
                    BulleView(text: "Pseudo : Marcel")
                    BulleView(text: "Email : dadkimseb@hotmail.com")
                    BulleView(text: "Localité : 93100")
                    
                    Spacer()
                    
                    Group {
                        HStack {
                            Circle()
                                .fill(.white)
                                .frame(width: 20, height: 20)
                            Text("Je peux apporter mon aide")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        .padding(.leading,20)
                        HStack {
                            Circle()
                                .fill(.white)
                                .frame(width: 20, height: 20)
                            Text("J'ai besoin de trouver des infos")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        .padding(.leading,20)
                   
                    Spacer()
                        }
                    }
                }
            }
            .navigationTitle("Mon Compte")
            .navigationBarTitleDisplayMode(.inline)
        }
    }


struct MonCompte2_Previews: PreviewProvider {
    static var previews: some View {
        MonCompte2()
    }
}
