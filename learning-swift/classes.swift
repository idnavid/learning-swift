//
//  classes.swift
//  learning-swift
//
//  Created by Navid Shokouhi on 28/4/2025.
//

class PersonClass {
    var clothes: String
    
    init(clothes: String) {
        self.clothes = clothes
    }
    
    func describeClothes() {
        print("I am wearing \(clothes)")
    }
}


class ChildClass: PersonClass {
    var toy: String {
        willSet {
            buyToys(request: "I want a new toy")
        }
        
        didSet {
            buyToys(request: "I asked for a new toy")
        }
    }
    
    init(clothes: String, toy: String) {
        self.toy = toy
        super.init(clothes: clothes)
    }
    
    override func describeClothes() {
        print("I am wearing \(clothes) child size")
    }
}

func buyToys(request: String) {
    print("\(request)")
}
