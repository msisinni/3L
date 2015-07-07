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
                      story:"This song began in the summer of 2014. Diego was messing around with a slap-back delay effect, inspired by the quick motion and sexy touch of Jai Paul's 'Jasmine', and all of a sudden the main groove was born! For the guitars players among you: \n\n Dm,  Am, B\n B, C, Dm \n\n  Immediately, Marco started referring to it as \"The Sex Song\", although it still lacked words. It stayed just a catchy riff for many months. But there was something that kept that riff fresh in everyone's mind. \n\n The World Music Room \n -----\n The story of Congratulatinos is closely tied to The World Music Room (aka WMR), which is a space at MIT that houses a Balinese gamelan ensemble and a Senegalese drum ensemble led by Lamine Toure, who is among the best West African drummers living today. \n\n The boys of Congratulatinos secured access to this room by playing and helping to teach the Senegalese drum ensemble, learning the ancient art of Sabar along the way. This created several situations in which Marco and Diego were about to rehearse and the room was filled with world-class West African percussionists. This riff seemed to have a pull that kept them in the room for a few minutes to jam, deepening the groove of the song. \n\n Moments like this kept the song alive until eventually the first couplet was written: partially to fulfill Marco's vision, and partially inspired by Diego experiencing new heights of romantic and physical connection: \n\n 'Trapped in the flouresence \n Of your body's essence' \n\n. Some messing around with a loop pedal and the chorus was born. ")]
    var numberOfSongs: Int{
        return songs.count
    }
}