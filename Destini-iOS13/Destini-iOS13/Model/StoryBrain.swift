//
//  StoryBrain.swift
//  Destini-iOS13
//


import Foundation

struct StoryBrain{
    var storyNumber=0
    let story = [
        Story(storyTitle: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(storyTitle: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(storyTitle: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
        ]
    
    mutating func nextStory(userChoice:String){
        storyNumber+=1;
    }
}


