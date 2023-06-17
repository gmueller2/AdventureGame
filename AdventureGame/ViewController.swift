//
//  ViewController.swift
//  AdventureGame
//
//  Created by Gene Mueller on 6/16/23.
//

import UIKit

struct Stage {
    init (_ text: String, _ o_one: String, _ o_two : String, _ w_state: Bool) {
        story = text
        option_one = o_one
        option_two = o_two
        win_state = w_state
    }
    
    var story: String
    var option_one: String
    var option_two: String
    var win_state: Bool
}

class ViewController: UIViewController {
    
    let story = [
        Stage("A wizard offers you a quest, do you accept?",
              "Yes",
              "No",
              false),
        Stage("You are transported to the Tombs of A'taun, where you encounter a dragon. What do you do?",
              "Use your lance to stab at it!",
              "Attempt to reason with it.",
              false),
        Stage("Upon leaving the wizard's tower, you find a unicorn in a nearby meadow!",
              "Approach and ask for a wish.",
              "Attempt to steal his valuable horn.",
              false),
        Stage("The dragon easily burns you to a crisp.",
              "Nooo!",
              "IT BURNS!",
              false),
        Stage("Grateful for the conversation, the dragon guides you to his gold.",
              "Awesome!",
              "Yes!",
              true),
        Stage("The unicorn runs you through for disturbing it!",
              "Ouch!",
              "That hurt!",
               false),
        Stage("After a fight, you obtain the horn and become wealthy selling it.",
              "I knew it!",
              "There's a reason unicorns are rare!",
              true)
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

