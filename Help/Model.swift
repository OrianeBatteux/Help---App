//
//  model.swift
//  Help
//
//  Created by Akim ABDALLAH on 22/03/2023.
//

import Foundation
import MapKit

struct Interest: Identifiable{
    var id = UUID()
    let icon : String
    var imageUser: String
    var description : String
    var category : Category
    var services : [ String ]
    var location : CLLocationCoordinate2D
}

enum Category: String{
    case helper = "Helper disponible"
    case cafe = "Café-Echanges"
    case infos = "Point d'informations"
}

struct Conversation: Identifiable{
    var id = UUID()
    var date: String
    var user: String
    var image: String
    var messages: [String]
}



var array1 = [
    Interest(icon: "person.fill", imageUser: "toto75", description: "blabablabla", category: .helper, services: ["Voiture"], location: CLLocationCoordinate2D(latitude: 48.85569, longitude: 2.43669)),
    Interest(icon: "cup.and.saucer.fill", imageUser: "cafeImage", description: "blabablabla", category: .cafe, services: [""], location: CLLocationCoordinate2D(latitude: 48.84451, longitude: 2.43960)),
    Interest(icon: "questionmark.circle.fill", imageUser: "cafeImage", description: "blabablabla", category: .infos, services: [""], location: CLLocationCoordinate2D(latitude: 48.84180, longitude: 2.41173))
]
