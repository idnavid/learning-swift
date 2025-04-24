//
//  controlFlowDefer.swift
//  learning-swift
//
//  Created by Navid Shokouhi on 25/4/2025.
//

/// gives a temporary bonus to the score, by adding and subtracting 100 inside a chunk of code
func temporaryBonus() {
    var score = 3
    print("The value for score before the if block is: \(score)")
    if score < 100 {
        // defer runs when the scope of if is completed
        print("100 is added to score inside the if block += 100")
        score += 100
        defer {
            score -= 100
        }
        // Other code that uses the score with its bonus goes here.
        print("The last value for score inside the if block is: \(score)")
    }
    print("The value for score outside the if block is: \(score)")
}

/// demonstrates that if you write more than one defer block in the same scope, the first one you specify is the last one to run.
func multipleDefer() {
    var score = 10
    print("The value for score is \(score)")
    defer {
        print("// This is the 1st defer in the function")
        print(score)
    }
    defer {
        print("// This is the 2nd defer in the function")
        print("The score is:")
    }
    print("// +=5 to score is performed outside of both defers")
    score += 5
}
