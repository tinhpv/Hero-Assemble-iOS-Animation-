//
//  ViewController.swift
//  Marvel_Prototype_Animation
//
//  Created by TinhPV on 8/11/20.
//  Copyright © 2020 TinhPV. All rights reserved.
//

import UIKit

let heroes = Hero.all()

class MasterViewController: UIViewController {
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var listView: UIScrollView!

    var selectedImage: UIImageView?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if listView.subviews.count < heroes.count {
          //listView.viewWithTag(0)?.tag = 1000 //prevent confusion when looking up images
          setupList()
        }
    }
    
    private func setupList() {
        
        for i in heroes.indices {
          //create image view
          let imageView  = UIImageView(image: UIImage(named: heroes[i].image))
          imageView.tag = i + 1
          imageView.contentMode = .scaleAspectFill
          imageView.isUserInteractionEnabled = true
          imageView.layer.cornerRadius = 20.0
          imageView.layer.masksToBounds = true
          listView.addSubview(imageView)
          
          //attach tap detector
          imageView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                action: #selector(didTapImageView)))
            
        } // end for i
        
        listView.backgroundColor = UIColor.clear
        positionItemList()
    }
    
    private func positionItemList() {
        
        let listHeight = listView.frame.height
        let itemHeight: CGFloat = listHeight * 1.33
        let aspectRatio = UIScreen.main.bounds.height / UIScreen.main.bounds.width
        let itemWidth: CGFloat = itemHeight / aspectRatio
        
        let horizontalPadding: CGFloat = 8.0
        
        for i in heroes.indices {

            let imageView = listView.viewWithTag(i + 1) as? UIImageView
                imageView?.frame = CGRect(x: CGFloat(i) * itemWidth + CGFloat(i+1) * horizontalPadding,
                                          y: 0.0,
                                          width: itemWidth,
                                          height: itemHeight)
        }
        
        listView.contentSize = CGSize(width: CGFloat(heroes.count) * (itemWidth + horizontalPadding) + horizontalPadding,
                                      height:  0)
    }
    
    @objc
    func didTapImageView(_ tap: UITapGestureRecognizer) {
        selectedImage = tap.view as? UIImageView
        
        let index = tap.view!.tag - 1
        let selectedHero = heroes[index]
        
        //present details view controller
        let heroDetailsVC = storyboard!.instantiateViewController(withIdentifier: "HeroDetailsViewController") as! HeroDetailsViewController
        heroDetailsVC.hero = selectedHero
        present(heroDetailsVC, animated: true, completion: nil)
    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to: size, with: coordinator)
//
//        coordinator.animate(alongsideTransition: { (context) in
//            self.bgImage.alpha = (size.width > size.height) ? 0.25 : 0.55
//            self.positionItemList()
//        }, completion: nil)
//    }


}

