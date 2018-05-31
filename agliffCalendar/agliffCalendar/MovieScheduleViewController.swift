//
//  MovieScheduleViewController.swift
//  agliffCalendar
//
//  Created by Ryan Hill on 1/4/18.
//  Copyright © 2018 Ryan Hill. All rights reserved.
//

import UIKit


    class MovieScheduleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
        
        // Movie Schedule Segue Buttons

        
        let posters = ["latterDaysPoster", "EvokePoster", "MidnightPoster", "TheTripPoster", "YossiPoster"]
        
        //Number of cells in the TableView
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return (posters.count)
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
            
            cell.myImage.image = UIImage(named: (posters[indexPath.row] + ".jpg"))
            cell.myLabel.text = posters[indexPath.row]
            
            return (cell)
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
        }
        
        
}

