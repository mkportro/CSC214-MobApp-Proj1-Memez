//
//  Memez.swift
//  Memez
//
//  Created by MaKayla Ortega Robinson on 7/15/23.
//

import Foundation

class Memez: ObservableObject {
    
    @Published var currMeme: Meme = Meme(image: "memez", caption: "") //default value
    @Published var memeCount: Int = -1 //set to -1 so default value isn't counted as meme shown to user
    
    struct Meme {
        var image: String
        var caption: String
    }
    
    private let images = ["disaster",
                              "dog",
                              "frog",
                              "kermit",
                              "sideeye",
                              "thinking",
                              "wonka",
                              "yelling"]
    private let captions = ["winter is coming",
                            "it is what it is!",
                            "when in rome",
                            "different strokes",
                            "at the end of the day...",
                            "if you can't love yourself, how the hell you gonna love somebody else",
                            "sashay away...",
                            "expecto patronum!"]
    
    /*
     * Selects random indeces from images array and captions array.
     * Assigns a new Meme object to currMeme, updates memeCount.
     */
    func generateMeme() {
        let randImageIndex = Int.random(in: 0..<images.count)
        let randImage = images[randImageIndex]
        
        let randCaptionIndex = Int.random(in: 0..<captions.count)
        let randCaption = captions[randCaptionIndex]
        
        currMeme = Meme(image: randImage, caption: randCaption)
        memeCount += 1
    }
}
