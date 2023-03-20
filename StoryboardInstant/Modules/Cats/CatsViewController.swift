//
//  CatsViewController.swift
//  StoryboardInstant
//
//  Created by Sergey Polkovnikov.
//

import UIKit

class CatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension CatsViewController: Storyboarded{
    static func containingStoryboard() -> Storyboard {
        return .Cats
    }
}
