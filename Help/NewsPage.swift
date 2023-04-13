//
//  NewsPage.swift
//  Help
//
//  Created by Akim ABDALLAH on 22/03/2023.
//
//
//CODé PAR AKIM
//
import Foundation
import SwiftUI


struct info: View {
    // @state permet l'action de chaque bouton.
    @State private var definition = ""
    // @state permet l'action de chaque bouton.
       @State private var tedColor: Bool = false
       @State private var kaColor: Bool = false
       @State private var infColor: Bool = false
       @State private var aspColor: Bool = false
       @State private var carColor: Bool = false
       @State private var balColor: Bool = false
       @State private var docColor: Bool = false
       @State private var schoolColor: Bool = false
       @State private var telColor: Bool = false

    var body: some View {
        NavigationView {
            
            // Le Titre "Infos"
            //navigationTitle("info")
            //.navigationBarTitleDisplayMode(.inline)
            
            // Couleur de fond.
            
            ZStack {
                
                Rectangle()
                    .fill(Color("Jordyblue"))
                
                // Le titre "TROUBLES DU SPECTRE DE L’AUTISME (TSA)"
                
            VStack(spacing: 20) {
                
                Group {
                    
            VStack {
                
                Text("TROUBLES DU SPECTRE DE L’AUTISME (TSA)")
                            .navigationBarTitle("Infos")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width : 370, height: 75)
                            .background(Color.white)
                            .cornerRadius(10)
                        
        // Boutons textes TSA
            HStack {
                            
                Button(action: {
                    self.definition = "Ce trouble affecte la communication, les interactions sociales et les comportements. Les personnes atteintes d'un TSA ont souvent des difficultés à comprendre les nuances sociales et à interagir avec les autres de manière appropriée. Ils peuvent également présenter des intérêts restreints et répétitifs."
                                
                            tedColor.toggle()
                                // Action à effectuer quand on appuie sur le bouton Autisme TED
                            }) {
                                Text("*Autisme TED")
                                 .underline(true, color: tedColor ?Color.white :Color.black)
                                    .multilineTextAlignment(.center)
                                    .fontWeight(.bold)
                                    .foregroundColor(tedColor ?Color.white :Color.black)
                                    .controlSize(.large)
                            }
                
                Button(action: {
                    self.definition = "Une forme de TSA caractérisée par des difficultés significatives dans la communication, les interactions sociales et les comportements répétitifs. Les symptômes apparaissent généralement avant l'âge de 3 ans et peuvent inclure un retard ou une absence de langage, d'expression émotionnelle et d’un intérêt intense pour certains objets ou activités."
                                
                            kaColor.toggle()
                                // Action à effectuer quand on appuie sur le bouton Autisme Kanner
                            }) {
                                Text("*Autisme Kanner")
                                    .underline(true, color: kaColor ?Color.white :Color.black)
                                    .fontWeight(.bold)
                                    .foregroundColor(kaColor ?Color.white :Color.black)
                                    .multilineTextAlignment(.center)
                            }
                
                Button(action: {
                    self.definition = "Cette forme de TSA se manifeste chez les enfants de moins de 18 mois. Les symptômes incluent une communication réduite ou absente, un manque d'intérêt pour les interactions sociales et des comportements répétitifs."
                                
                            infColor.toggle()
                                // Action à effectuer quand on appuie sur le bouton Autisme Infantile
                            }) {
                                Text("*Autisme Infantile")
                                    .underline(true, color: infColor ?Color.white :Color.black)
                                    .fontWeight(.bold)
                                    .foregroundColor(infColor ?Color.white :Color.black)
                                    .multilineTextAlignment(.center)
                                
                            }
                
                Button(action: {
                    self.definition = "Cette forme de TSA se caractérise par des difficultés dans les interactions sociales, la communication non verbale, ainsi que des intérêts restreints et répétitifs. Les personnes atteintes du syndrome d'Asperger ont généralement un langage et un développement intellectuel normaux, et peuvent avoir une grande connaissance et un grand intérêt pour un sujet particulier."
                                
                                aspColor.toggle()
                                // Action à effectuer quand on appuie sur le bouton Autisme Asperger
                            }) {
                                Text("*Autisme Asperger")
                                    .underline(true, color: aspColor ?Color.white :Color.black)
                                    //.underline(true, color: .black)
                                    .fontWeight(.bold)
                                    //.fontWeight(.semibold)
                                    .foregroundColor(aspColor ?Color.white :Color.black)
                                // .foregroundColor(Color("Royalblue"))
                                //.foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                        
                    Text("Les différents degrés de sévérité")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
    
                    // Image Flèche de niveau d'autisme
            VStack {
                
            ZStack {
                
                Image("Fleche")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(width: 280, height: 60)
 
            HStack {
                Text("Minimal  Faible  Modéré  Élevé")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                              
                }
                                
            }
      }
 
        //La forme de la definition
            ZStack {
                        
                Text(definition)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding([.top, .leading, .trailing])
                   
            Spacer()
                        .frame(height: 135.0)
                       }
                    }
                   
                Text("AIDES PROPOSÉES")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width : 200)
                        .background(Color.white)
                        .cornerRadius(10)
                         
            VStack{
                        
            HStack {
                            
                //Boutons aides
                Button(action: {
                        self.definition = "Écoute : La personne est à votre écoute, vous donne des astuces et vous conseille dans vos démarches du quotidien."
                        telColor.toggle()
         // Action à effectuer quand on appuie sur le bouton Écoute
                            }, label: {
                                Label("Écoute", systemImage: "figure.stand.line.dotted.figure.stand")
                                    .padding()
                                    .frame(width : 180, height: 30)
                                        .background(.white)
                                        .cornerRadius(100)
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(.black)
                            })
                         
                Button(action: {
                        self.definition = "Soutien scolaire : La personne apporte à votre enfant un soutien scolaire en fonction de ces besoins."
                            schoolColor.toggle()
                        }, label: {
                            Label("Soutien scolaire", systemImage: "book.fill")
                                .padding()
                                .frame(width : 180, height: 30)
                                    .background(.white)
                                    .cornerRadius(100)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                                .foregroundColor(.black)
                          
                            
        // Action à effectuer quand on appuie sur le bouton Soutien scolaire
                            })
                        }
                    }
        HStack {
            
                Button(action: {
                        self.definition = "Aides administratives : La personne vous aide dans vos démarches administratives, afin que vous puissiez bénéficier des aides qui vous sont proposées."
                            docColor.toggle()
                        }, label: {
                            
                            Label("Administratives", systemImage: "list.clipboard.fill")
                                .padding()
                                .frame(width : 180, height: 30)
                                    .background(.white)
                                    .cornerRadius(100)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                                .foregroundColor(.black)
                              
       // Action à effectuer quand on appuie sur le bouton Aides administratives
                        })
                        
                Button(action: {
                        self.definition = "Divertissement : La personne permet de proposer à votre enfant des activités interactives, afin qu’il puisse s’intégrer et s’épanouir socialement."
                            balColor.toggle()
                        }, label: {
                            
                            Label("Divertissement", systemImage: "balloon.fill")
                                .padding()
                                .frame(width : 180, height: 30)
                                    .background(.white)
                                    .cornerRadius(100)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                                .foregroundColor(.black)
                                
      // Action à effectuer quand on appuie sur le bouton Aides divertissement
                        })
                      
                    }
                Button(action: {
                        self.definition = "Transport : Des difficultés à vous déplacer, une personne vous propose de vous accompagner dans vos déplacements quotidiens."
                            carColor.toggle()
                        }, label: {
                                
                            Label("Transport", systemImage: "steeringwheel")
                                    .padding()
                                    .frame(width : 180, height: 30)
                                       .background(.white)
                                       .cornerRadius(100)
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(.black)
                                   
      // Action à effectuer quand on appuie sur le bouton Aides transport
                                
                            })
                    
                        }
                            
                .navigationTitle("INFO")
                 .navigationBarTitleDisplayMode(.inline)
                
                            
                        }
                    }
                }
            }

            
        struct info_Previews: PreviewProvider {
            static var previews: some View {
                info()
            }
        }
        
        

