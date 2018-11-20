//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class GameOfThronesViewController: UIViewController {
    //Outlets
    
    @IBOutlet weak var gameOfThronesTableView: UITableView!
    
    //variable&constants
    let arrForGOT = GOTEpisode.allEpisodes
    var episodeNames = [String]()
    var mediumImgpictures = [String]()
    var seasonNumber = 1
    var espisodeNumber  = 1
    var season1TitleNames = [String]()
    var season2TitleNames = [String]()
    var season3TitleNames = [String]()
    var season4TitleNames = [String]()
    var season5TitleNames = [String]()
    var season6TitleNames = [String]()
    var season7TitleNames = [String]()
    var season1mediumpics = [String]()
    var season2mediumpics = [String]()
    var season3mediumpics = [String]()
    var season4mediumpics = [String]()
    var season5mediumpics = [String]()
    var season6mediumpics = [String]()
    var season7mediumpics = [String]()
   
    let gameOfThronesNameMatrix = [[season1TitleNames],[season2TitleNames],[season3TitleNames],[season4TitleNames],[season5TitleNames],[season6TitleNames],[season7TitleNames]]
    let gameOfThroneMediumMatrix = [[season1mediumpics],[season2mediumpics],[season3mediumpics],[season4mediumpics],[season5mediumpics],[season6mediumpics],[season7mediumpics]]

    
  override func viewDidLoad() {
    //first entry point
    super.viewDidLoad()
    //This object's delegate and dataSource is refering to GameOfThronesViewController
//    gameOfThronesTableView.dataSource = self
//    gameOfThronesTableView.delegate = self // Optional
    findItemsInGOT(arrForGOT)
    getEpisodeNamesBySeason(episodeNames)
  }
 //myFucntions
    func findItemsInGOT(_ gameOfThroneArr: [GOTEpisode]) -> [String] {
        for item in arrForGOT {
            episodeNames.append(item.name)
            mediumImgpictures.append(item.mediumImageID)
        }
        return episodeNames
    }
    func getEpisodeNamesBySeason(_ listOfEspisodeNames: [String]){
        season1TitleNames += episodeNames.prefix(9)
        season2TitleNames += episodeNames.suffix(from: 10).prefix(19)
        season3TitleNames += episodeNames.suffix(from: 20).prefix(29)
        season4TitleNames += episodeNames.suffix(from: 30).prefix(39)
        season5TitleNames += episodeNames.suffix(from: 40).prefix(49)
        season6TitleNames += episodeNames.suffix(from: 50).prefix(59)
        season7TitleNames += episodeNames.suffix(from: 60).prefix(66)
}
    func getMediumPicsBySeason(_ listOfEspisodeNames: [String]){
        season1mediumpics += mediumImgpictures.prefix(9)
        season2mediumpics += mediumImgpictures.suffix(from: 10).prefix(19)
        season3mediumpics += mediumImgpictures.suffix(from: 20).prefix(29)
        season4mediumpics += mediumImgpictures.suffix(from: 30).prefix(39)
        season5mediumpics += mediumImgpictures.suffix(from: 40).prefix(49)
        season6mediumpics += mediumImgpictures.suffix(from: 50).prefix(59)
        season7mediumpics += mediumImgpictures.suffix(from: 60).prefix(66)
    }
    
    

}
