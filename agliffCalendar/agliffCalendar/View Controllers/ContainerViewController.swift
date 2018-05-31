//
//  ContainerViewController.swift
//  agliffCalendar
//
//  Created by Ryan Hill on 1/10/18.
//  Copyright © 2018 Ryan Hill. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
        
    // MARK: – Variables
    
    @IBOutlet weak var viewConstraint: NSLayoutConstraint!
    @IBOutlet weak var blurView: UIVisualEffectView!
    var navigationContainerController: UINavigationController?

    // MARK: – View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewConstraint.constant = -175
        
    }    
    
    // MARK: – Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.destination {
            
        case let navigationController as UINavigationController:
            
            navigationContainerController = navigationController
            navigationContainerController?.setNavigationBarHidden(true, animated: false)

        default:
            break
        }
    }
    
    // MARK: – Button Actions
    
    func handleMenuOption(_ menuOption: MenuViewController.MenuOption) {
        
        navigationContainerController?.popToRootViewController(animated: false)

        switch menuOption {
        case .movieSchedule:

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if let viewController = storyboard.instantiateViewController(withIdentifier: "MovieScheduleViewController") as? MovieScheduleViewController {
                navigationContainerController?.pushViewController(viewController, animated: false)
            }

        case .eventSchedule:
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if let viewController = storyboard.instantiateViewController(withIdentifier: "EventScheduleViewController") as? EventScheduleViewController {
                navigationContainerController?.pushViewController(viewController, animated: false)
            }
            
        case .venue:
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if let viewController = storyboard.instantiateViewController(withIdentifier: "VenueViewController") as? VenueViewController {
                navigationContainerController?.pushViewController(viewController, animated: false)
            }
            
        case .aboutAGliff:
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if let viewController = storyboard.instantiateViewController(withIdentifier: "AboutAgliffViewController") as? AboutAgliffViewController {
                navigationContainerController?.pushViewController(viewController, animated: false)
            }
            
        case .aboutApp:
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if let viewController = storyboard.instantiateViewController(withIdentifier: "AboutAppViewController") as? AboutAppViewController {
                navigationContainerController?.pushViewController(viewController, animated: false)
            }
            
        default:
            break
        }

    }
    
    // MARK: – Gestures
    
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed {
            
            let translation = sender.translation(in: self.view).x
            
            if translation > 0 { // swipe right
                
                if viewConstraint.constant < 20 {
                    UIView.animate(withDuration: 0.2, animations: {
                        
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                        
                    })
                }
                
            }else {             // swipe left
                if viewConstraint.constant > -175 {
                    UIView.animate(withDuration: 0.2, animations: {
                        
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                        
                    })
                }
            }
            
            
        } else if sender.state == .ended {
            
            if viewConstraint.constant < -100 {
                UIView.animate(withDuration: 0.2, animations: {
                    
                    self.viewConstraint.constant = -175
                    self.view.layoutIfNeeded()
                    
                })
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    
                    self.viewConstraint.constant = 0
                    self.view.layoutIfNeeded()
                    
                })
            }
            
        }
        
    }


}
