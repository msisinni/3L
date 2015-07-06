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
    var story: String?
    init(title: String, filename: String, coverFilename: String, story: String){
        self.title = title
        self.filename = filename
        self.coverFilename = coverFilename
        self.story = story
    }
}

struct Album{
    var songs = [Song(title: "You Got",
                      filename: "/Users/ardila/Downloads/You_Got.mp3",
                      coverFilename: "You Got Smaller",
                      story:"This is just a test story. I want to write a better one with Marco!")]
    var numberOfSongs: Int{
        return songs.count
    }
}