//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //UI Elements
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //Init StoryBrain()
    var storyBrain = StoryBrain()
    
    //Run on startup
    override func viewDidLoad() {
        super.viewDidLoad()
        
          updateUI()

    }

    
    // button function
    @IBAction func choiceSelection(_ sender: UIButton) {
       
        //Using method in storyBrain.
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
    
    
    
    
    //Update the UI elements
    func updateUI() {
        
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
    
}

