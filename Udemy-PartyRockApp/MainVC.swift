//
//  ViewController.swift
//  Udemy-PartyRockApp
//
//  Created by Cuong on 2/22/17.
//  Copyright © 2017 Cuong. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var partyRockTableView : UITableView!
    
    var partyRocks = [PartyRock]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        partyRockTableView.delegate = self
        partyRockTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyRockTableViewCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock:partyRock)
        }else{
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

