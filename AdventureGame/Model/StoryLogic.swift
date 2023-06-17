//
//  StoryLogic.swift
//  AdventureGame
//
//  Created by Gene Mueller on 6/16/23.
//

import Foundation

struct StoryLogic {

    var stage_index : Int = 0
    
    let story = [
        //0
        Story("A wizard offers you a quest, do you accept?",
              "Yes",
              "No",
               1,
               2),
        //1
        Story("You are transported to the Tombs of A'taun, where you encounter a dragon. What do you do?",
              "Use your lance to stab at it!",
              "Attempt to reason with it.",
              3,
              4),
        //2
        Story("Upon leaving the wizard's tower, you find a unicorn in a nearby meadow!",
              "Approach and ask for a wish.",
              "Attempt to steal his valuable horn.",
              5,
              6),
        //3
        Story("The dragon easily burns you to a crisp. YOU LOSE!",
              "Nooo!",
              "IT BURNS!",
              0,
              0),
        //4
        Story("Grateful for the conversation, the dragon guides you to his gold. YOU WIN!",
              "Awesome!",
              "Yes!",
              0,
              0),
        //5
        Story("The unicorn runs you through for disturbing it! YOU LOSE!",
              "Ouch!",
              "That hurt!",
               0,
               0),
        //6
        Story("After a fight, you obtain the horn and become wealthy selling it. YOU WIN!",
              "I knew it!",
              "There's a reason unicorns are rare!",
              0,
              0)
    ]
    
    mutating func progress_story(_ new_index : Int) {
        stage_index = new_index
    }
    
    func get_index() -> Int {
        return stage_index
    }
    
    func get_story() -> String {
        return story[stage_index].story
    }
    
    func get_option_one() -> String {
        return story[stage_index].option_one
    }
    
    func get_option_two() -> String {
        return story[stage_index].option_two
    }
    
    func get_next_one() -> Int {
        return story[stage_index].next_one
    }
    
    func get_next_two() -> Int {
        return story[stage_index].next_two
    }
        
}
