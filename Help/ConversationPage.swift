//
//  ConersationPage.swift
//  Help
//
//  Created by Akim ABDALLAH on 22/03/2023.
//
//
//CODé PAR VALERIE
//

import Foundation
import SwiftUI


struct ConversationPage: View {
    
    
    @State private var conversations = [
        Conversation(date: "   30/03", user: "Bernard ", image: ("Petitboy"), messages: ["Rendez-vous pour le soutien scolaire le 16/04...  "]),
        Conversation(date: "   12/03", user: "     Sia     ", image: ("Petitefille"), messages: ["Atelier loisirs créatif..."]),
        Conversation(date: "   15/03", user: "   Sophia", image: ("enfant"), messages: ["Parlons ensemble en ligne..."]),
        Conversation(date: "   28/12", user: "   Pedro", image:
                        ("Petitboy"), messages: ["Sessions de sport en mars?..."]),
        Conversation(date: "   25/03", user: " Rosario", image: ("Monsieur"), messages: ["Je propose mon aide..."]),
        Conversation(date: "     25/04", user: " Rosie", image: "Petitefille", messages: ["Bonjour besoin de moi?..."]),
    ]
    
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Discussions")
                    .fontWeight(.bold)
                
                ZStack() {
                    Rectangle()
                        .fill(Color("Jordyblue"))
                    Text("Discussion")
                    
                    VStack {
                        NavigationLink {
                            MessagesSPage()
                        } label: {
                            
                            Rectangle()
                                .fill(Color("Lavender"))
                                .ignoresSafeArea(.all)
                                .cornerRadius(21)
                                .frame(width: 292.0, height: 82.0)
                                .padding([.top, .leading], 43.0)
                            Image("Monsieur")
                                .resizable(capInsets: EdgeInsets(top: -43.0, leading: -3.0, bottom: 8.0, trailing: -64.0))
                                .frame(width: 69.0, height: 87.0)
                                .padding(.leading, -303.0)
                                .padding(.top, 39.0)
                            Text("Marcel")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(0)
                                .padding(.leading, -212.0)
                                .padding(.bottom, -113.0)
                                .frame(width: 2.0, height: 2.0)
                          
                            Text("25/05")
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding(-13.0)
                                .frame( height: -23.0)
                                .padding([.leading, .bottom, .trailing],-99.0)
                        }
                        
                        VStack {
                            ForEach(conversations, id: \.id) { convo in
                                ConversationRow(convo: convo)
                            }
                        }
                    }
                }
                .padding(.top)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    struct ConversationPage_Previews:
        PreviewProvider {
        static var previews: some View {
            ConversationPage()
            
        }
    }
    
    struct ConversationRow: View {
        
        let convo: Conversation
        
        var body: some View {
            
            ZStack() {
                
                
                Rectangle()
                    .fill(Color("Lavender"))
                    .ignoresSafeArea(.all)
                    .cornerRadius(21)
                    .frame(width: 294.0, height: 80.0)
                    .padding(.trailing, -12.0)
                    .padding(-1.0)
                
                HStack(alignment: .top) {
                    
                    Image(convo.image)
                        .resizable(capInsets: EdgeInsets(top: -41.0, leading: 0.0, bottom: 2.0, trailing: -61.0))
                        .frame(width: 70.0, height: 75.0)
                        .padding(.horizontal, -60.0)
                    
                    
                    Text(convo.user)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(27.0)
                        .padding(-1.0)
                    
                    HStack() {
                       
                        Text(convo.date)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.trailing)
                            .padding(-24.0)
                            .padding(.top, 36.0)
                            .frame( height: -23.0)
                            .offset(x:12, y: 6)
                    }
                   
                }
                
                
            }
          
        }
    }
}
