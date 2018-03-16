//
//  ViewController1.swift
//  Calculator
//
//  Created by Nguyen Dong Son on 3/16/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createInterface()
    }
    
    
    private func createInterface(){
        
        let redView = UIView()
        let blueView = UIView()
        let orangeView = UIView()
        let greenView = UIView()
        let whiteView = UIView()
        
        redView.backgroundColor = UIColor.red
        blueView.backgroundColor = UIColor.blue
        orangeView.backgroundColor = UIColor.orange
        greenView.backgroundColor = UIColor.green
        whiteView.backgroundColor = UIColor.white
        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(orangeView)
        view.addSubview(greenView)
        view.addSubview(whiteView)
        
        
        
        //redview with nslayoutconstraint
        let topRed = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let leftRed = NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
        let widthRed = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
        let heightRed = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
        redView.autoresizesSubviews = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topRed,leftRed,widthRed,heightRed])
        
        
        
        //blueview with nslayoutanchor
        blueView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2, constant: 0).isActive=true
        blueView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2, constant: 0).isActive=true
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0).isActive=true
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive=true
        blueView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive=true
        blueView.translatesAutoresizingMaskIntoConstraints=false
        
        
        //orangeview with nslayoutanchor
        orangeView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2, constant: 0).isActive=true
        orangeView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4, constant: 0).isActive=true
        orangeView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0).isActive=true
        orangeView.leftAnchor.constraint(equalTo: blueView.rightAnchor, constant: 0).isActive=true
        orangeView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive=true
        orangeView.translatesAutoresizingMaskIntoConstraints=false
        
        //greenview with nslayoutanchor
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4, constant: 0).isActive=true
        greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 0).isActive=true
        greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive=true
        greenView.leftAnchor.constraint(equalTo: blueView.rightAnchor, constant: 0).isActive=true
        greenView.translatesAutoresizingMaskIntoConstraints=false
        
        //whiteview with nslayoutanchor
        whiteView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        whiteView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4, constant: 0).isActive=true
        whiteView.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 0).isActive=true
        whiteView.leftAnchor.constraint(equalTo: greenView.rightAnchor, constant: 0).isActive=true
        whiteView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive=true
        whiteView.translatesAutoresizingMaskIntoConstraints=false

    }




}
