//
//  Story.swift
//  AdventureGame
//
//  Created by Gene Mueller on 6/16/23.
//

import Foundation

struct Story {
    init (_ text: String, _ o_one: String, _ o_two : String, _ n_one : Int, _ n_two : Int) {
        story = text
        option_one = o_one
        option_two = o_two
        next_one = n_one
        next_two = n_two
    }
    
    var story: String
    var option_one: String
    var option_two: String
    var next_one: Int
    var next_two: Int
}
