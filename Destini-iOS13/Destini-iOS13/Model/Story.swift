//
//  Sotry.swift
//  Destini-iOS13


import Foundation

struct Story{
    let storyTitle:String
    let choice1:String
    let choice2:String
    
    init(storyTitle:String, choice1:String, choice2:String){
        self.storyTitle=storyTitle
        self.choice1=choice1
        self.choice2=choice2
    }
}
