//
//  SelectionViewController.swift
//  StoryboardInstant
//
//  Created by Sergey Polkovnikov.
//

import UIKit

// TODO: step 5. Set Storyboard ID as class name.

class SelectionViewController: UIViewController {
    
    internal var contentView: SelectionView! {
        guard isViewLoaded else { return nil }
        return (view as! SelectionView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    
    @IBAction func selectCat(_ sender: UIButton) {
        self.navigationController?.pushViewController(CatsViewController.instantiate(), animated: true)
    }
    
    @IBAction func selectDog(_ sender: Any) {
        self.navigationController?.pushViewController(DogsViewController.instantiate(), animated: true)
    }
    
}

extension SelectionViewController: Storyboarded{
    static func containingStoryboard() -> Storyboard {
        return .Selection
    }
}
