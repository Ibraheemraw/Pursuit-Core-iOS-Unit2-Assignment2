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
    var episodeNames = [String]()
    var seasonNumber = 1
    var espisodeNumber  = 1
    var season1TitleNames = [String]()
    let season2TitleNames = [String]()
    let season3TitleNames = [String]()
    let season4TitleNames = [String]()
    let season5TitleNames = [String]()
    let season6TitleNames = [String]()
    let season7TitleNames = [String]()
   
    
    

    
  override func viewDidLoad() {
    //first entry point
    super.viewDidLoad()
    //This object's delegate and dataSource is refering to GameOfThronesViewController
    gameOfThronesTableView.dataSource = self
    gameOfThronesTableView.delegate = self // Optional
    print(getSeason1List(episodeNames))

    
  }
 //myFucntions
    func findEpiosdeName(_ gameOfThroneArr: [GOTEpisode]) -> [String] {
        
        for name in GOTEpisode.allEpisodes {
          episodeNames = episodeNames.append(name.name)
        }
        
        return episodeNames
    }
    
    func getSeason1List(_ listOfEspisodeNames: [String]) -> [String] {
        
        for name in episodeNames {
           season1TitleNames = season1TitleNames.append(name)
            if name == episodeNames[9]{
                break
            }
        }
        return season1TitleNames
        
    }
    
    
    

}
//Table view Data Source Methods
// ShowCell
extension GameOfThronesViewController: UITableViewDataSource {
    //this function sets up how many rows per section the tableView has
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    //tableView have a 1 section and 0 rows by defualt
    {
        return episodeNames.count
        //returns the number of rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = gameOfThronesTableView.dequeueReusableCell(withIdentifier: "ShowCell", for: indexPath)
         return cell
    }
    
    
}

//Table view Delegate Methods
extension GameOfThronesViewController: UITableViewDelegate {
    //sets up the cell inside the row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
    
}
