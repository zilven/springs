//
//  ViewController.swift
//  springs
//
//  Created by Maestro on 22/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwCuadro: UIView!
    @IBOutlet weak var vwCuadroAzul: UIView!
    @IBOutlet weak var vwCuadroRosa: UIView!
    
    var bola = false;
    var bola2 = false;
    
    var originalPos1 : CGFloat = 0;
    var originalPos2 : CGFloat = 0;
    
    var originalPos3 : CGFloat = 0;
    var originalPos4 : CGFloat = 0;
    
    @IBAction func botonisq(_ sender: Any) {
        

        if bola == false
        {
        UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
            
            self.vwCuadroAzul.center.x = self.view.bounds.width / 2
            self.vwCuadroAzul.center.y -= 100
            
            self.vwCuadroAzul.transform = CGAffineTransform(scaleX: 2, y: 2)
            
            self.bola = true
            
        }, completion: nil)
        }
        else
        if bola == true
        {
            UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
                
                self.vwCuadroAzul.center.x = self.originalPos1
                self.vwCuadroAzul.center.y = self.originalPos2
                
                self.vwCuadroAzul.transform = CGAffineTransform(scaleX: 1, y: 1)
                
                self.bola = false
                
            }, completion: nil)
        }
        
        if bola2 == true
        {
            UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
                
                self.vwCuadroRosa.center.x = self.originalPos3
                self.vwCuadroRosa.center.y = self.originalPos4
                
                self.vwCuadroRosa.transform = CGAffineTransform(scaleX: 1, y: 1)
                
                self.bola2 = false
                
            }, completion: nil)
        }
    }
    @IBAction func botonder(_ sender: Any) {
        
        if bola2 == false
        {
            UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
                
                self.vwCuadroRosa.center.x = self.view.bounds.width / 2
                self.vwCuadroRosa.center.y -= 100
                
                self.vwCuadroRosa.transform = CGAffineTransform(scaleX: 2, y: 2)
                
                self.bola2 = true
                
            }, completion: nil)
        }
        else
            if bola2 == true
            {
                UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
                    
                    self.vwCuadroRosa.center.x = self.originalPos3
                    self.vwCuadroRosa.center.y = self.originalPos4
                    
                    self.vwCuadroRosa.transform = CGAffineTransform(scaleX: 1, y: 1)
                    
                    self.bola2 = false
                    
                }, completion: nil)
        }
        
        if bola == true
        {
            UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
                
                self.vwCuadroAzul.center.x = self.originalPos1
                self.vwCuadroAzul.center.y = self.originalPos2
                
                self.vwCuadroAzul.transform = CGAffineTransform(scaleX: 1, y: 1)
                
                self.bola = false
                
            }, completion: nil)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        
        originalPos1 = self.vwCuadroAzul.center.x;
        originalPos2 = self.vwCuadroAzul.center.y;
        
        originalPos3 = self.vwCuadroRosa.center.x;
        originalPos4 = self.vwCuadroRosa.center.y;

        //vwCuadro.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.5, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
        
            self.vwCuadro.center.y += 200
            //self.vwCuadro.alpha = 1.0
            self.vwCuadro.backgroundColor = UIColor.cyan
            
        }, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

