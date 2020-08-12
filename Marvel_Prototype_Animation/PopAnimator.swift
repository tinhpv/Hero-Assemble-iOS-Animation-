//
//  PopAnimator.swift
//  Marvel_Prototype_Animation
//
//  Created by TinhPV on 8/11/20.
//  Copyright © 2020 TinhPV. All rights reserved.
//

import UIKit

class PopAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    let animationDuration = 1.0
    var isPresenting = true
    var originFrame = CGRect.zero
    
    var completion: (() -> Void)?
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return animationDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
//        let toView = transitionContext.view(forKey: .to)!
        let heroView = isPresenting ? transitionContext.view(forKey: .to)! : transitionContext.view(forKey: .from)!
        
        let initialFrame = isPresenting ? originFrame : heroView.frame
        let finalFrame = isPresenting ? heroView.frame : originFrame
        
        let xScaleFactor = isPresenting ? initialFrame.width / finalFrame.width : finalFrame.width / initialFrame.width
        let yScaleFactor = isPresenting ? initialFrame.height / finalFrame.height : finalFrame.height / initialFrame.height
        
        let scaleTransform = CGAffineTransform(scaleX: xScaleFactor, y: yScaleFactor)
        if isPresenting {
            heroView.transform = scaleTransform
            heroView.center = CGPoint(x: initialFrame.midX,y: initialFrame.midY)
            heroView.clipsToBounds = true
        }
        
        
        containerView.addSubview(heroView)
        UIView.animate(withDuration: animationDuration, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
            heroView.transform = self.isPresenting ? .identity : scaleTransform
            heroView.center = CGPoint(x: finalFrame.midX, y: finalFrame.midY)
        }) { (_) in
            if (!self.isPresenting) {
                self.completion?()
            }
            transitionContext.completeTransition(true)
        }
        
    
//        toView.alpha = 0.0
//        UIView.animate(withDuration: animationDuration, animations: {
//            toView.alpha = 1.0
//        }) { (_) in
//            transitionContext.completeTransition(true)
//        }
    }
    
    
}
