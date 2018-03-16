//
//  CalculatorViewController.swift
//  LessionTwoAndThree
//
//  Created by Nguyen Dong Son on 3/16/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadFirstView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func loadFirstView(){
        let viewResult = UIView()
        let textResult = UILabel()
        viewResult.backgroundColor=UIColor.darkGray
        textResult.textColor=UIColor.white
        textResult.text="0"
        textResult.textAlignment = .right
        
        let btAC = UIButton()
        let btPercent = UIButton()
        let btNagetive = UIButton()
        let btEqual = UIButton()
        let btDot = UIButton()
        let btZero = UIButton()
        let btOne = UIButton()
        let btTwo = UIButton()
        let btThree = UIButton()
        let btFour = UIButton()
        let btFive = UIButton()
        let btSix = UIButton()
        let btSeven = UIButton()
        let btEight = UIButton()
        let btNine = UIButton()
        let btAddition = UIButton()
        let btSubtraction = UIButton()
        let btMultiplication = UIButton()
        let btDivision = UIButton()
        
        btEqual.backgroundColor=UIColor.orange
        btAddition.backgroundColor=UIColor.orange
        btSubtraction.backgroundColor=UIColor.orange
        btMultiplication.backgroundColor=UIColor.orange
        btDivision.backgroundColor=UIColor.orange
        
        btAC.setTitle("AC", for: .normal)
        btAC.setTitleColor(UIColor.black, for: .normal)
        btAC.borderColor=UIColor.darkGray
        btAC.borderWidth=1
        
        btPercent.setTitle("%", for: .normal)
        btPercent.setTitleColor(UIColor.black, for: .normal)
        btPercent.borderColor=UIColor.darkGray
        btPercent.borderWidth=1
        
        btNagetive.setTitle("+/-", for: .normal)
        btNagetive.setTitleColor(UIColor.black, for: .normal)
        btNagetive.borderColor=UIColor.darkGray
        btNagetive.borderWidth=1
        
        btAddition.setTitle("+", for: .normal)
        btAddition.setTitleColor(UIColor.white, for: .normal)
        btAddition.borderColor=UIColor.darkGray
        btAddition.borderWidth=1
        
        btSubtraction.setTitle("-", for: .normal)
        btSubtraction.setTitleColor(UIColor.white, for: .normal)
        btSubtraction.borderColor=UIColor.darkGray
        btSubtraction.borderWidth=1
        
        btMultiplication.setTitle("x", for: .normal)
        btMultiplication.setTitleColor(UIColor.white, for: .normal)
        btMultiplication.borderColor=UIColor.darkGray
        btMultiplication.borderWidth=1
        
        
        btDivision.setTitle(":", for: .normal)
        btDivision.setTitleColor(UIColor.white, for: .normal)
        btDivision.borderColor=UIColor.darkGray
        btDivision.borderWidth=1
        
        btEqual.setTitle("=", for: .normal)
        btEqual.setTitleColor(UIColor.white, for: .normal)
        btEqual.borderColor=UIColor.darkGray
        btEqual.borderWidth=1
        
        btDot.setTitle(".", for: .normal)
        btDot.setTitleColor(UIColor.black, for: .normal)
        btDot.borderColor=UIColor.darkGray
        btDot.borderWidth=1
        
        btOne.setTitle("1", for: .normal)
        btOne.setTitleColor(UIColor.black, for: .normal)
        btOne.borderColor=UIColor.darkGray
        btOne.borderWidth=1
        
        
        btTwo.setTitle("2", for: .normal)
        btTwo.setTitleColor(UIColor.black, for: .normal)
        btTwo.borderColor=UIColor.darkGray
        btTwo.borderWidth=1
        
        
        btThree.setTitle("3", for: .normal)
        btThree.setTitleColor(UIColor.black, for: .normal)
        btThree.borderColor=UIColor.darkGray
        btThree.borderWidth=1
        
        btFour.setTitle("4", for: .normal)
        btFour.setTitleColor(UIColor.black, for: .normal)
        btFour.borderColor=UIColor.darkGray
        btFour.borderWidth=1
        
        btFive.setTitle("5", for: .normal)
        btFive.setTitleColor(UIColor.black, for: .normal)
        btFive.borderColor=UIColor.darkGray
        btFive.borderWidth=1
        
        btSix.setTitle("6", for: .normal)
        btSix.setTitleColor(UIColor.black, for: .normal)
        btSix.borderColor=UIColor.darkGray
        btSix.borderWidth=1
        
        btSeven.setTitle("7", for: .normal)
        btSeven.setTitleColor(UIColor.black, for: .normal)
        btSeven.borderColor=UIColor.darkGray
        btSeven.borderWidth=1
        
        btEight.setTitle("8", for: .normal)
        btEight.setTitleColor(UIColor.black, for: .normal)
        btEight.borderColor=UIColor.darkGray
        btEight.borderWidth=1
        
        btNine.setTitle("9", for: .normal)
        btNine.setTitleColor(UIColor.black, for: .normal)
        btNine.borderColor=UIColor.darkGray
        btNine.borderWidth=1

        btZero.setTitle("0", for: .normal)
        btZero.setTitleColor(UIColor.black, for: .normal)
        btZero.borderColor=UIColor.darkGray
        btZero.borderWidth=1


        
        
        let stackView1 = UIStackView(arrangedSubviews: [btAC,btPercent,btNagetive,btDivision])
        let stackView2 = UIStackView(arrangedSubviews: [btSeven,btEight,btNine,btMultiplication])
        let stackView3 = UIStackView(arrangedSubviews: [btFour,btFive,btSix,btSubtraction])
        let stackView4 = UIStackView(arrangedSubviews: [btOne,btTwo,btThree,btAddition])
        let stackView5 = UIStackView(arrangedSubviews: [btZero,btDot,btEqual])

        
        //set for stackview1
        btAC.widthAnchor.constraint(equalTo: stackView1.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btAC.heightAnchor.constraint(equalTo: stackView1.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btAC.topAnchor.constraint(equalTo: stackView1.topAnchor)
        btAC.leftAnchor.constraint(equalTo: stackView1.leftAnchor)
        btAC.translatesAutoresizingMaskIntoConstraints=false
        
        
        btPercent.widthAnchor.constraint(equalTo: stackView1.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btPercent.heightAnchor.constraint(equalTo: stackView1.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btPercent.topAnchor.constraint(equalTo: stackView1.topAnchor)
        btPercent.leftAnchor.constraint(equalTo: btAC.rightAnchor)
        btPercent.translatesAutoresizingMaskIntoConstraints=false
        
        btNagetive.widthAnchor.constraint(equalTo: stackView1.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btNagetive.heightAnchor.constraint(equalTo: stackView1.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btNagetive.topAnchor.constraint(equalTo: stackView1.topAnchor)
        btNagetive.leftAnchor.constraint(equalTo: btPercent.rightAnchor)
        btNagetive.translatesAutoresizingMaskIntoConstraints=false
        
        btDivision.widthAnchor.constraint(equalTo: stackView1.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btDivision.heightAnchor.constraint(equalTo: stackView1.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btDivision.topAnchor.constraint(equalTo: stackView1.topAnchor)
        btDivision.leftAnchor.constraint(equalTo: btNagetive.rightAnchor)
        btDivision.rightAnchor.constraint(equalTo: stackView1.rightAnchor)
        btDivision.translatesAutoresizingMaskIntoConstraints=false

        
        //set for stackview2
        btSeven.widthAnchor.constraint(equalTo: stackView2.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btSeven.heightAnchor.constraint(equalTo: stackView2.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btSeven.topAnchor.constraint(equalTo: stackView2.topAnchor)
        btSeven.leftAnchor.constraint(equalTo: stackView2.leftAnchor)
        btSeven.translatesAutoresizingMaskIntoConstraints=false
        
        
        btEight.widthAnchor.constraint(equalTo: stackView2.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btEight.heightAnchor.constraint(equalTo: stackView2.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btEight.topAnchor.constraint(equalTo: stackView2.topAnchor)
        btEight.leftAnchor.constraint(equalTo: btSeven.rightAnchor)
        btEight.translatesAutoresizingMaskIntoConstraints=false
        
        btNine.widthAnchor.constraint(equalTo: stackView2.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btNine.heightAnchor.constraint(equalTo: stackView2.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btNine.topAnchor.constraint(equalTo: stackView2.topAnchor)
        btNine.leftAnchor.constraint(equalTo: btEight.rightAnchor)
        btNine.translatesAutoresizingMaskIntoConstraints=false
        
        btMultiplication.widthAnchor.constraint(equalTo: stackView2.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btMultiplication.heightAnchor.constraint(equalTo: stackView2.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btMultiplication.topAnchor.constraint(equalTo: stackView2.topAnchor)
        btMultiplication.leftAnchor.constraint(equalTo: btNine.rightAnchor)
        btMultiplication.rightAnchor.constraint(equalTo: stackView2.rightAnchor)
        btMultiplication.translatesAutoresizingMaskIntoConstraints=false
        
        
        // set for stackview3
        btFour.widthAnchor.constraint(equalTo: stackView3.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btFour.heightAnchor.constraint(equalTo: stackView3.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btFour.topAnchor.constraint(equalTo: stackView3.topAnchor)
        btFour.leftAnchor.constraint(equalTo: stackView3.leftAnchor)
        btFour.translatesAutoresizingMaskIntoConstraints=false
        
        
        btFive.widthAnchor.constraint(equalTo: stackView3.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btFive.heightAnchor.constraint(equalTo: stackView3.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btFive.topAnchor.constraint(equalTo: stackView3.topAnchor)
        btFive.leftAnchor.constraint(equalTo: btFour.rightAnchor)
        btFive.translatesAutoresizingMaskIntoConstraints=false
        
        btSix.widthAnchor.constraint(equalTo: stackView3.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btSix.heightAnchor.constraint(equalTo: stackView3.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btSix.topAnchor.constraint(equalTo: stackView3.topAnchor)
        btSix.leftAnchor.constraint(equalTo: btFive.rightAnchor)
        btSix.translatesAutoresizingMaskIntoConstraints=false
        
        btSubtraction.widthAnchor.constraint(equalTo: stackView3.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btSubtraction.heightAnchor.constraint(equalTo: stackView3.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btSubtraction.topAnchor.constraint(equalTo: stackView3.topAnchor)
        btSubtraction.leftAnchor.constraint(equalTo: btSix.rightAnchor)
        btSubtraction.rightAnchor.constraint(equalTo: stackView3.rightAnchor)
        btSubtraction.translatesAutoresizingMaskIntoConstraints=false
        
        
        
        //set cho stackview4
        btOne.widthAnchor.constraint(equalTo: stackView4.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btOne.heightAnchor.constraint(equalTo: stackView4.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btOne.topAnchor.constraint(equalTo: stackView4.topAnchor)
        btOne.leftAnchor.constraint(equalTo: stackView4.leftAnchor)
        btOne.translatesAutoresizingMaskIntoConstraints=false
        
        
        btTwo.widthAnchor.constraint(equalTo: stackView4.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btTwo.heightAnchor.constraint(equalTo: stackView4.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btTwo.topAnchor.constraint(equalTo: stackView4.topAnchor)
        btTwo.leftAnchor.constraint(equalTo: btOne.rightAnchor)
        btTwo.translatesAutoresizingMaskIntoConstraints=false
        
        btThree.widthAnchor.constraint(equalTo: stackView4.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btThree.heightAnchor.constraint(equalTo: stackView4.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btThree.topAnchor.constraint(equalTo: stackView4.topAnchor)
        btThree.leftAnchor.constraint(equalTo: btTwo.rightAnchor)
        btThree.translatesAutoresizingMaskIntoConstraints=false
        
        btAddition.widthAnchor.constraint(equalTo: stackView4.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btAddition.heightAnchor.constraint(equalTo: stackView4.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btAddition.topAnchor.constraint(equalTo: stackView4.topAnchor)
        btAddition.leftAnchor.constraint(equalTo: btThree.rightAnchor)
        btAddition.rightAnchor.constraint(equalTo: stackView4.rightAnchor)
        btAddition.translatesAutoresizingMaskIntoConstraints=false
        
        
        //set for stackview5
        btZero.widthAnchor.constraint(equalTo: stackView5.widthAnchor, multiplier: 1/2, constant: 0).isActive=true
        btZero.heightAnchor.constraint(equalTo: stackView5.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btZero.topAnchor.constraint(equalTo: stackView5.topAnchor)
        btZero.leftAnchor.constraint(equalTo: stackView5.leftAnchor)
        btZero.translatesAutoresizingMaskIntoConstraints=false
        
        btDot.widthAnchor.constraint(equalTo: stackView5.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btDot.heightAnchor.constraint(equalTo: stackView5.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btDot.topAnchor.constraint(equalTo: stackView5.topAnchor)
        btDot.leftAnchor.constraint(equalTo: btZero.rightAnchor)
        btDot.translatesAutoresizingMaskIntoConstraints=false
        
        btEqual.widthAnchor.constraint(equalTo: stackView5.widthAnchor, multiplier: 1/4, constant: 0).isActive=true
        btEqual.heightAnchor.constraint(equalTo: stackView5.heightAnchor, multiplier: 1, constant: 0).isActive=true
        btEqual.topAnchor.constraint(equalTo: stackView5.topAnchor)
        btEqual.leftAnchor.constraint(equalTo: btDot.rightAnchor)
        btEqual.rightAnchor.constraint(equalTo: stackView5.rightAnchor)
        btEqual.translatesAutoresizingMaskIntoConstraints=false
        
        
        

        stackView1.axis = .horizontal
        stackView1.distribution = .fillEqually
        stackView1.alignment = .fill
        stackView1.translatesAutoresizingMaskIntoConstraints = false

        stackView2.axis = .horizontal
        stackView2.distribution = .fillEqually
        stackView2.alignment = .fill
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        
        stackView3.axis = .horizontal
        stackView3.distribution = .fillEqually
        stackView3.alignment = .fill
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        
        stackView4.axis = .horizontal
        stackView4.distribution = .fillEqually
        stackView4.alignment = .fill
        stackView4.translatesAutoresizingMaskIntoConstraints = false
        
        stackView5.axis = .horizontal
        stackView5.distribution = .fillEqually
        stackView5.alignment = .fill
        stackView5.translatesAutoresizingMaskIntoConstraints = false
        

        view.addSubview(stackView1)
        view.addSubview(stackView2)
        view.addSubview(stackView3)
        view.addSubview(stackView4)
        view.addSubview(stackView5)
        view.addSubview(viewResult)
        viewResult.addSubview(textResult)
        
        viewResult.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive=true
        viewResult.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive=true
        viewResult.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6, constant: 0).isActive=true
        viewResult.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1, constant: 0).isActive=true
        viewResult.translatesAutoresizingMaskIntoConstraints=false
        
        textResult.topAnchor.constraint(equalTo: viewResult.topAnchor, constant: 8).isActive=true
        textResult.leftAnchor.constraint(equalTo: viewResult.leftAnchor, constant: 20).isActive=true
        textResult.rightAnchor.constraint(equalTo: viewResult.rightAnchor, constant: 20).isActive=true
        textResult.bottomAnchor.constraint(equalTo: viewResult.bottomAnchor, constant: 8).isActive=true
        textResult.translatesAutoresizingMaskIntoConstraints=false
        
        stackView1.topAnchor.constraint(equalTo: viewResult.bottomAnchor).isActive=true
        stackView1.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        stackView1.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        stackView1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6).isActive=true
        stackView1.translatesAutoresizingMaskIntoConstraints=false

        
        stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor).isActive=true
        stackView2.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        stackView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        stackView2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6).isActive=true
        stackView2.translatesAutoresizingMaskIntoConstraints=false
        
        
        stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor).isActive=true
        stackView3.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        stackView3.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        stackView3.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6).isActive=true
        stackView3.translatesAutoresizingMaskIntoConstraints=false
        
        stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor).isActive=true
        stackView4.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        stackView4.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        stackView4.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6).isActive=true
        stackView4.translatesAutoresizingMaskIntoConstraints=false
        
        
        stackView5.topAnchor.constraint(equalTo: stackView4.bottomAnchor).isActive=true
        stackView5.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        stackView5.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        stackView5.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6).isActive=true
        stackView5.translatesAutoresizingMaskIntoConstraints=false
        

    }
    

}
