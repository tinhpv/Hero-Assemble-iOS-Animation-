//
//  HeroDetailsViewController.swift
//  Marvel_Prototype_Animation
//
//  Created by TinhPV on 8/11/20.
//  Copyright © 2020 TinhPV. All rights reserved.
//

import UIKit

class HeroDetailsViewController: UIViewController {
    
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var heroDescription: UITextView!
    
    var hero: Hero?
    
    override func viewWillAppear(_ animated: Bool) {
        self.heroImage.image = UIImage(named: hero!.image)
        self.heroName.text = hero?.name
        self.heroDescription.text = hero?.description
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:))))
    }
    
    @objc
    func handleTap(_ tap: UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
