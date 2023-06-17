//
//  ViewController.swift
//  AdventureGame
//
//  Created by Gene Mueller on 6/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background_view: UIImageView!
    @IBOutlet weak var story_label: UILabel!
    @IBOutlet weak var button_one: UIButton!
    @IBOutlet weak var button_two: UIButton!

    var story_logic = StoryLogic()
    var clock = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
    
    private func refreshUI() {
        // gets a current time for the clock itself on the top
        clock = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:#selector(self.updateUI), userInfo: nil, repeats: true)
    }

    @IBAction func choiceSubmitted(_ sender: UIButton) {
        switch sender {
        case button_one:
            story_logic.progress_story(story_logic.get_next_one())
        case button_two:
            story_logic.progress_story(story_logic.get_next_two())
        default: ()
        }
    }
    
    @objc func updateUI() {
        story_label.text = story_logic.get_story()
        background_view.image = UIImage(named: String(story_logic.get_index()))
        button_one.setTitle(story_logic.get_option_one(), for: .normal)
        button_two.setTitle(story_logic.get_option_two(), for: .normal)
    }
    
}

