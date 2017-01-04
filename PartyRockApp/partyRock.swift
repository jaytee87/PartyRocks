//
//  partyRock.swift
//  PartyRockApp
//
//  Created by Johnny on 12/21/16.
//  Copyright © 2016 Johnny. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageUrl
    }
    
    var videoURL: String {
        return _videoUrl
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    
    init (imageURL: String, videoURL: String, videoTitle: String) {
        _imageUrl = imageURL
        _videoUrl = videoURL
        _videoTitle = videoTitle
        
        
        
    }
    
    
    
    
    
}
