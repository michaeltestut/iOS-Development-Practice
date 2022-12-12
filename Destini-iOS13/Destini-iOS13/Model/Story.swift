//
//  Sotry.swift
//  Destini-iOS13


import Foundation

struct Story{
    let storyTitle:String
    let choice1:String
    let choice2:String
    let choice1Destination:Int
    let choice2Destination:Int
    
    init(storyTitle:String, choice1:String, choice2:String, choice1Destination:Int, choice2Destination:Int){
        self.storyTitle=storyTitle
        self.choice1=choice1
        self.choice2=choice2
        self.choice1Destination=choice1Destination
        self.choice2Destination=choice2Destination
    }
}
