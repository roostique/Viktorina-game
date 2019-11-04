//
//  LanguageViewController.swift
//  Yay or Nay
//
//  Created by Rustem Supayev on 18/10/2019.
//  Copyright © 2019 Zeebagzo Lab. All rights reserved.
//

import UIKit

class LanguageViewController: UIViewController {

    
    //Language selection page parameters
    @IBOutlet weak var selectLabel: UILabel!
    
    @IBOutlet weak var Kazakh: UIButton!
    @IBOutlet weak var Russian: UIButton!
    @IBOutlet weak var English: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        setCustomBackImage()
    
        selectLabel.center.x = self.view.frame.width + 50
        UIView.animate(withDuration: 1.0, delay: 00, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.selectLabel.center.x = self.view.frame.width / 2
        }, completion: nil)
        
    
        English.center.x = self.view.frame.width + 50
        UIView.animate(withDuration: 2.0, delay: 00, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.English.center.x = self.view.frame.width / 2
        }, completion: nil)
        
        Russian.center.x = self.view.frame.width + 50
        UIView.animate(withDuration: 3.0, delay: 00, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.Russian.center.x = self.view.frame.width / 2
        }, completion: nil)
        
        
    }
    
    func setCustomBackImage(){
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
    }
    
}
