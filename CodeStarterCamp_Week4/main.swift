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

class Routine {
    let name: String
    var exercises: Array<Exercise>
    
    func listUpExercises(exercises: Array<Exercise>) {
        print("--------------------")
        
        print("\(name)을 시작합니다.")
        for exercise in exercises {
            exercise.action()
            print(exercise.name)
        }
        print("--------------------")
    }
    
    func printPresentBodyCondition() {
        print("현재 컨디션은 다음과 같습니다.")
        print("상체근력: \(myBodyCondition.upperBodyStrength)")
        print("하체근력: \(myBodyCondition.lowerBodyStrength)")
        print("근지구력: \(myBodyCondition.muscularEndurance)")
        print("피로도: \(myBodyCondition.fatigue)")
    }
    
    init(name: String, execises: Array<Exercise>) {
        self.name = "myRoutine"
        self.exercises = [sitUp, squat, squat, activeRest, longRun, activeRest]
        
        listUpExercises(exercises: exercises)
        printPresentBodyCondition()
    }
}

var myBodyCondition = BodyCondition(upperBodyStrength: 100, lowerBodyStrength: 100, muscularEndurance: 100, fatigue: 0)

let sitUp: Exercise = Exercise(name: "Sit-Up", action: {
    myBodyCondition.upperBodyStrength += Int.random(in: 10...20)
    myBodyCondition.fatigue += Int.random(in: 10...20)
})

let squat: Exercise = Exercise(name: "Squat", action: {
    myBodyCondition.lowerBodyStrength += Int.random(in: 20...30)
    myBodyCondition.fatigue += Int.random(in: 10...20)
})

let longRun: Exercise = Exercise(name: "Long-Run", action: {
    myBodyCondition.muscularEndurance += Int.random(in: 20...30)
    myBodyCondition.upperBodyStrength += Int.random(in: 5...10)
    myBodyCondition.lowerBodyStrength += Int.random(in: 5...10)
    myBodyCondition.fatigue += Int.random(in: 20...30)
})

let activeRest: Exercise = Exercise(name: "Active-Rest", action: {
    myBodyCondition.fatigue -= Int.random(in: 5...10)
})

var myRoutine: Array<Exercise> = [sitUp, squat, squat, activeRest, longRun, activeRest]
var myRealRoutine: Routine = Routine(name: "hey", execises: myRoutine)






