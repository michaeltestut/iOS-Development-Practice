//
//  DiceView.swift
//  DiceeSwiftUI
//
//  Created by Michael Testut on 1/30/23.
//

import SwiftUI

struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .shadow(color:.black,radius:5,x:5,y:5)
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(n:1)
            .previewLayout(.sizeThatFits)
    }
}
