//
//  TabView.swift
//  Help
//
//  Created by Nathalie Amoros on 29/03/2023.
//
//
//CODé PAR NATHALIE

import SwiftUI

struct TaaView: View {
    
    
    var body: some View {
        
        TabView {
            
            MapPage()
                .tabItem {
                    Image(systemName: "mappin.circle")
                    Text("Carte")
                }
            
            info()
                .tabItem {
                    Image(systemName: "text.book.closed")
                    Text("Infos")
                }
            
            ConversationPage()
                .tabItem {
                    Image(systemName: "ellipsis.message")
                    Text("Conversations")
                }
            
          MonCompte2()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Compte")
                }
            
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(Color("IndiaRed"))
//        .tint(Color("IndiaRed"))
    }

}


struct TaaView_Previews: PreviewProvider {
    static var previews: some View {
        TaaView()
    }
}
