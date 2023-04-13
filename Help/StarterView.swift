//
//  StarterView.swift
//  Help
//
//  Created by Nathalie Amoros on 30/03/2023.
//
//CODé par FLORENT

import SwiftUI

struct StarterView: View {
    @State private var next = false
   
    
    var body: some View {
        
        VStack {
            if !next {
                OnboardingTaView(next: $next)
            } else {
                TaaView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
