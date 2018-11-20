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
    var seasonNumber = 1
    var espisodeNumber  = 1
    var season1TitleNames = [String]()
    var season2TitleNames = [String]()
    var season3TitleNames = [String]()
    var season4TitleNames = [String]()
    var season5TitleNames = [String]()
    var season6TitleNames = [String]()
    var season7TitleNames = [String]()
   
    
    

    
  override func viewDidLoad() {
    //first entry point
    super.viewDidLoad()
    //This object's delegate and dataSource is refering to GameOfThronesViewController
//    gameOfThronesTableView.dataSource = self
//    gameOfThronesTableView.delegate = self // Optional
    findEpiosdeName(arrForGOT)
    getEpisodeNamesBySeason(episodeNames)
    

    
  }
 //myFucntions
    func findEpiosdeName(_ gameOfThroneArr: [GOTEpisode]) -> [String] {
        
        for name in arrForGOT {
            episodeNames.append(name.name)
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
    
    
    

}
//Table view Data Source Methods
// ShowCell
//extension GameOfThronesViewController: UITableViewDataSource {
//    //this function sets up how many rows per section the tableView has
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
//    //tableView have a 1 section and 0 rows by defualt
//    {
//        return episodeNames.count
//        //returns the number of rows
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = gameOfThronesTableView.dequeueReusableCell(withIdentifier: "ShowCell", for: indexPath)
//         return cell
//    }
//
////    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
////        switch section {
////        case 1:
////         return "Season 1"
////        case 2:
////         return "Season 2"
////        case 3:
////         return "Season 3"
////        case 4:
////         return "Season 4"
////        case 5:
////         return "Season 5"
////        case 6:
////         return "Season 6"
////        case 7:
////         return "Season 7"
////        default:
////         return "Error 560: Something is wrong with your TitleForHeaderSection function"
////        }
////    }
//}

////Table view Delegate Methods
//extension GameOfThronesViewController: UITableViewDelegate {
//    //sets up the cell inside the row
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
//
//}
