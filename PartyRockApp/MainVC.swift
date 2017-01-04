//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Johnny on 12/18/16.
//  Copyright © 2016 Johnny. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var partyRocks = [PartyRock]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/RoUY-H5hr8s/hqdefault.jpg?", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/l6HvA4WmOjo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Columbo")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/8h3Bq-kuMAc/hqdefault.jpg?", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8h3Bq-kuMAc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hanoi")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/N47emyWQ-Ok/hqdefault.jpg?", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/N47emyWQ-Ok\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Saigon")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/SS-jWIQ4Kvs/hqdefault.jpg?", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SS-jWIQ4Kvs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Da Lat")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/mFfQIkGjtLQ/hqdefault.jpg?", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mFfQIkGjtLQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Thailand")
        
        let p6 = PartyRock(imageURL: "https://i.ytimg.com/vi/0WFX08xIIXo/hqdefault.jpg?", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0WFX08xIIXo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Malaysia")
        
        //let p7 = PartyRock(imageURL: "https://i.ytimg.com/vi/9gp1qSp5rb4/hqdefault.jpg?", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9gp1qSp5rb4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Texas")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        //partyRocks.append(p7)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
            
        }
    }


}

