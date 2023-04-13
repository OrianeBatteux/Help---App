//
//  HelperPage.swift
//  Help
//
//  Created by Akim ABDALLAH on 22/03/2023.
//

//CODé PAR ORIANE

import Foundation
import SwiftUI

struct HelperPageView: View {
    @State private var closeView = "Fermer"
    @Binding var activateModal: Bool
    
    var body: some View {
        
        NavigationView {
           
            ZStack(alignment: .top) {

                Rectangle()
                        .foregroundColor(Color("Jordyblue"))
                        .edgesIgnoringSafeArea(.all)
            
                Circle()
                        .padding(.top, 62.0)
                        .foregroundColor(Color.white)
                        .frame(width: 172.0, height: 172.0)
                
                VStack(spacing: 20) {
                    Image("Monsieur")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 115.0, height: 104.0)
                    
                ZStack {
                    
                    Rectangle()
                        .padding(.bottom, 100.0)
                        .frame(width: 220.0, height: 55.0)
                        .cornerRadius(100)
                    
                    Text("Marcel").bold()
            }
                    
                VStack() {
                    
                    Text("""
Bonjour,
je m'appelle Marcel, j'ai 75 ans et j'adore jardiner et m'occuper des enfants.
""")
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing])
                        
            }
                    
                    Spacer()
                    Text("Services proposés:").bold()
                    
                HStack {
                
                    Spacer()
                    
                VStack {
                    
                    Image(systemName: "book.fill")
                        .resizable()
                        .frame(width: 30, height: 26)
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Text("Soutien scolaire")
            }
                    
                        Spacer()
                    
                VStack(alignment: .center) {
                            
                    Image(systemName: "steeringwheel")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Text("Transport")
            }
                    
                        Spacer()
                    
                VStack(alignment: .center) {
                    Image(systemName: "balloon.fill")
                        .resizable()
                        .frame(width: 18, height: 30)
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Text("Divertissement")
            }
                    
                        Spacer()
            }
                    
                    VStack(alignment: .center) {
                        
                        Spacer()
                        Spacer()
                        
                        NavigationLink {
                            MessagesSPage()
                        } label: {
                            Text("Contacter")
                        }
                        .padding()
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        
                    }
                    
                       Spacer()
                       Button {
                        activateModal.toggle()
                    } label: {
                        Label("Fermer", systemImage: "xmark.circle.fill")
                    }
                        .padding()
                        .foregroundColor(.black)
                        .cornerRadius(20)
                    
                }
                        .padding(.top, 60)
                        .navigationTitle("Helper")
                        .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}


    struct HelperPageView_Previews: PreviewProvider {
        static var previews: some View {
            HelperPageView(activateModal: .constant(true))
        }
    }


