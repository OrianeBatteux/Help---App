//
//  MapPage.swift
//  Help
//
//  Created by Akim ABDALLAH on 22/03/2023.
//

//CODé PAR NATHALIE

import SwiftUI
import MapKit

struct MapPage: View {

    @State private var text : String = ""

    @State private var isEditing = false

    @State private var region: MKCoordinateRegion =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.85569, longitude: 2.43669), span: MKCoordinateSpan(latitudeDelta: 0.06, longitudeDelta: 0.06))

    @State private var activateModal = false

    var body: some View {

          ZStack {

//        MAP
           Map (coordinateRegion: $region, annotationItems: array1) {

//        MAPANNOTATION
            item in
            MapAnnotation(coordinate: item.location) {

//        ACTION MODAL => HELPERPAGE
                Button {
                activateModal.toggle()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .foregroundColor(.red)
                        .frame(width: 30, height: 30)
                }
                .sheet(isPresented: $activateModal, content: {
                        HelperPageView(activateModal: $activateModal)
                })
            }
        }
                       .edgesIgnoringSafeArea(.top)

//         SEARCH BAR
            VStack{

                HStack {

                    TextField("Recherche...", text: $text)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.white))
                        .cornerRadius(8)
                        .overlay(
                            
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)

                    if isEditing {
                    Button(action: {
                        self.text = ""
                    }) {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.gray)
                        .padding(.trailing, 8)
                }
            }
                    })
                        .padding(.horizontal, 10)
                        .onTapGesture {
                         self.isEditing = true
                        }

                    if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
                        }) {
                    Text("Annuler")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                }
            }

                    Spacer()

//          ICON BOTTOM
                   VStack(alignment: .leading, spacing: 0.0) {

                   HStack {
                       
                   Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.red)
                   Text("Helper")
                        .multilineTextAlignment(.center)
                        .bold()
                    }
                }
                        .padding(.vertical, -7.0)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
            }
        }
    }
}



    struct MapPage_Previews: PreviewProvider {
        static var previews: some View {
            MapPage()
        }
    }

