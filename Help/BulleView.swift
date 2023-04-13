//
//  BulleView.swift
//  Help
//
//  Created by Nathalie Amoros on 29/03/2023.
//
//CODé PAR FLORENT 
//
import SwiftUI

struct BulleView: View {
    
    var text : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20, style: .circular)
            .foregroundColor(.white)
            .frame(width: 370, height: 40)
            .overlay {
                HStack {
                    Text(text)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .bold()
                        .padding(.leading,20)
                   Spacer()
                }
                   
            }
    }
}

struct BulleView_Previews: PreviewProvider {
    static var previews: some View {
        BulleView(text: "Dadkim")
    }
}
