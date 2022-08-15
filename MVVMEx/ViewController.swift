//
//  ViewController.swift
//  MVVMEx
//
//  Created by Вячеслав Квашнин on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: ViewModel!

    @IBOutlet weak var labelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBindings()
        
    }
    
    func setBindings() {
        viewModel?.didChangeValue = { [unowned self] viewModel in
            self.labelLabel.text = viewModel.value
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        viewModel?.addSomething()
    }
}

extension ViewController {
    static func instantiate(storyboardName: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateInitialViewController() as! Self
    }
}
