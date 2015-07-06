//
//  File.swift
//  3L
//
//  Created by Diego Ardila on 7/6/15.
//  Copyright (c) 2015 Common Sensing. All rights reserved.
//

import Foundation

class Song{
    var title: String?
    var filename: String?
    var coverFilename: String?
    init(title: String, filename: String, coverFilename: String){
        self.title = title
        self.filename = filename
        self.coverFilename = coverFilename
    }
}

struct Album{
    var songs = [Song(title: "You Got", filename: "3L/You_Got.mp3", coverFilename: "You Got Smaller")]
    var numberOfSongs: Int{
        return songs.count
    }
}