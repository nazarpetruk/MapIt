//
//  Constants.swift
//  MapIt
//
//  Created by Nazar Petruk on 20/09/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import Foundation

//MARK: Api key

let apiKey  = "10e07028d973bce4eac5aee7e61850fe"

func flickerUrl (forApiKey key : String, withAnnotation annotation: DroppablePin, numberOfPhotos number : Int ) -> String {
    
    let url = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)8&lon=\(annotation.coordinate.longitude)8&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    
   return url
}

