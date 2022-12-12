//
//  StoryBrain.swift
//  Destini-iOS13
//


import Foundation

struct StoryBrain{
    var storyNumber=0
    let story = [
        Story(storyTitle: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens thepassenger door for you and says: 'Need a ride, boy?'.", choice1: "I'll hop in. Thanks for the help!", choice2: "Well, I don't have many options. Better ask him if he's a murderer.", choice1Destination:2 , choice2Destination:1 ),
        Story(storyTitle: "He nods slowly, unphased by the question.", choice1: "At least he's honest. I'll climb in.", choice2: "Wait, I know how to change a tire.", choice1Destination: 2, choice2Destination: 3),
        Story(storyTitle: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severedfingers, and a cassette tape of Elton John. He reaches for the glove box.", choice1: "I love Elton John! Hand him the cassette tape.", choice2: "It’s him or me. Take the knife and stab him.", choice1Destination: 5, choice2Destination: 4),
        Story(storyTitle: "What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?", choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0),
        Story(storyTitle: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0),
        Story(storyTitle: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply:'Try the pier.'", choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0)
        
        
      
        ]
    func getStoryTitle()->String{
        return story[storyNumber].storyTitle
    }
    func getChoice1() -> String{
        return story[storyNumber].choice1
    }
    func getChoice2() -> String{
        return story[storyNumber].choice2
    }
    mutating func nextStory(userChoice:String){
        let currentStory = story[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
}


