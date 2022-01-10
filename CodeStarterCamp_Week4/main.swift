//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct BodyCondition {
    var upperBodyStrength: Int
    var lowerBodyStrength: Int
    var muscularEndurance: Int
    var fatigue: Int
}

struct Exercise {
    let name: String
    let action: () -> Void
}

let sitUp: Exercise = Exercise(name: "Sit-Up", action: {

})

let squat: Exercise = Exercise(name: "Squat", action: {
    
})

let longRun: Exercise = Exercise(name: "Long-Run", action: {
    
})

let activeRest: Exercise = Exercise(name: "Active-Rest", action: {
    
})




