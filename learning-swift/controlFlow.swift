//
//  controlFlow.swift
//  learning-swift
//
//  Created by Navid Shokouhi on 25/4/2025.
//

/// print names  provided in a list.
func forLoopNames() {
    let names = ["Alice", "Bob", "Charlie"]
    for name in names {
        print("Hello, \(name)!")
    }
}

/// print integers in a range
/// ```
/// forLoopRange() // prints a value from 1 through 5
/// ```
///
/// - Parameters:
///     - num: end of range
func forLoopRange(till num: Int = 5) {
    for indx in 1...num {
        print("Index is \(indx)")
    }
}

/// print integers in range with hops -- uses stride
///
/// - Parameters:
///     - start: first index
///     - to: end index
///     - step: hop size (aka by)
///
func forLoopStrideTo(start from: Int = 1, to: Int = 5, step by: Int = 2) {
    for indx in stride(from: 1, to: 5, by: 2) {
        print("Index is \(indx)")
    }
}

/// print integers in closed range with hops -- uses stride
///
/// - Parameters:
///     - start: first index
///     - through: end index
///     - step: hop size (aka by)
///
func forLoopStrideThrough(start from: Int = 1, through: Int = 5, step by: Int = 2) {
    for indx in stride(from: 1, through: 5, by: 2) {
        print("Index is \(indx)")
    }
}

/// print key-value pairs in a dictionary
func iterDictionary() {
    let numberOfPets = ["Alice": 2, "Bob": 1, "Charlie": 3]
    for (name, petCount) in numberOfPets {
        print("\(name) has \(petCount) pets.")
    }
}



