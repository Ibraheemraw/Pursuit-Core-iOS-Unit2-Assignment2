//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

private enum TableViewSection: Int, CaseIterable {
    case season1 = 1, season2, season3, season4, season5, season6, season7
}

class GameOfThronesViewController: UIViewController {
    //Outlets
    @IBOutlet weak var gameOfThronesTableView: UITableView!
    
    private var gameOfThronesEpisodeSections = [[GOTEpisode]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameOfThronesTableView.dataSource = self
        gameOfThronesEpisodeSections = Array(repeating: [GOTEpisode](),
                                             count: GOTEpisode.allEpisodes.last!.season)
        GOTEpisode.allEpisodes.forEach { gameOfThronesEpisodeSections[$0.season - 1].append($0) }
    }
}
extension GameOfThronesViewController: UITableViewDataSource {
    // section methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return gameOfThronesEpisodeSections.count // 7
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard let tableViewSection = TableViewSection(rawValue: section + 1) else { return "Invalid Season" }
        return "Season \(tableViewSection.rawValue)"
    }
    
    // regular rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameOfThronesEpisodeSections[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = gameOfThronesTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Cell else {return UITableViewCell() }
        let episode = gameOfThronesEpisodeSections[indexPath.section][indexPath.row]
        cell.firstImgView.image = UIImage(named: episode.mediumImageID)
        cell.episodeLabel.text = episode.name
        cell.seasonNumAndEpisodeNum.text = "Season: \(episode.season) Episode: \(episode.number)"
        
        
        return cell
    }
}
