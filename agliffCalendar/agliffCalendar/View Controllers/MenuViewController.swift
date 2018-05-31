//
//  MenuViewController.swift
//  agliffCalendar
//
//  Created by Ryan Hill on 1/10/18.
//  Copyright © 2018 Ryan Hill. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    enum MenuOption: Int {
        case home
        case movieSchedule
        case eventSchedule
        case aboutAGliff
        case aboutApp
        case venue
    }

    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var movieScheduleButton: UIButton!
    @IBOutlet weak var eventScheduleButton: UIButton!
    @IBOutlet weak var aboutAGliffButton: UIButton!
    @IBOutlet weak var aboutAppButton: UIButton!
    @IBOutlet weak var venueButton: UIButton!

    // MARK: – View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: – Button Actions
    
    @IBAction func menuButtonTapped(_ sender: UIButton) {
     
        guard let parent = parent as? ContainerViewController else {
            return
        }
        
        switch sender {
        case homeButton:
            parent.handleMenuOption(.home)
        case movieScheduleButton:
            parent.handleMenuOption(.movieSchedule)
        case eventScheduleButton:
            parent.handleMenuOption(.eventSchedule)
        case aboutAGliffButton:
            parent.handleMenuOption(.aboutAGliff)
        case aboutAppButton:
            parent.handleMenuOption(.aboutApp)
        case venueButton:
            parent.handleMenuOption(.venue)
        default:
            break
        }
        
        
    }

}
