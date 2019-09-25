//
//  ViewController.swift
//  Tic Tac Toe Game
//
//  Created by G.BAFFO on 1/22/17.
//  Copyright © 2017 Gabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var x = true
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    
    @IBAction func resetGamePressed(_ sender: Any) {
        
        button1.setImage(nil, for: .normal)
        button2.setImage(nil, for: .normal)
        button3.setImage(nil, for: .normal)
        button4.setImage(nil, for: .normal)
        button5.setImage(nil, for: .normal)
        button6.setImage(nil, for: .normal)
        button7.setImage(nil, for: .normal)
        button8.setImage(nil, for: .normal)
        button9.setImage(nil, for: .normal)
        
        playAgain.isHidden = true
        winLabel.isHidden = true
    }
    
    @IBAction func playAgainPressed(_ sender: Any) {
        
        button1.setImage(nil, for: .normal)
        button2.setImage(nil, for: .normal)
        button3.setImage(nil, for: .normal)
        button4.setImage(nil, for: .normal)
        button5.setImage(nil, for: .normal)
        button6.setImage(nil, for: .normal)
        button7.setImage(nil, for: .normal)
        button8.setImage(nil, for: .normal)
        button9.setImage(nil, for: .normal)
        
        playAgain.isHidden = true
        winLabel.isHidden = true
    }
    
    func threeInARow() -> Bool {
        
        
        
            
            if button1.currentImage != nil && button2.currentImage != nil && button3.currentImage != nil {
                if (button1.currentImage?.isEqual(button2.currentImage))! && (button2.currentImage?.isEqual(button3.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }
            
            if button4.currentImage != nil && button5.currentImage != nil && button6.currentImage != nil {
                if (button4.currentImage?.isEqual(button5.currentImage))! && (button5.currentImage?.isEqual(button6.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }
            if button7.currentImage != nil && button8.currentImage != nil && button9.currentImage != nil {
                if (button7.currentImage?.isEqual(button8.currentImage))! && (button8.currentImage?.isEqual(button9.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }
            
            if button1.currentImage != nil && button4.currentImage != nil && button7.currentImage != nil {
                if (button1.currentImage?.isEqual(button4.currentImage))! && (button4.currentImage?.isEqual(button7.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }
            
            
            if button2.currentImage != nil && button5.currentImage != nil && button8.currentImage != nil {
                if (button2.currentImage?.isEqual(button5.currentImage))! && (button5.currentImage?.isEqual(button8.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }
            
            if button3.currentImage != nil && button6.currentImage != nil && button9.currentImage != nil {
                if (button3.currentImage?.isEqual(button6.currentImage))! && (button6.currentImage?.isEqual(button9.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }
            
            if button1.currentImage != nil && button5.currentImage != nil && button9.currentImage != nil {
                if (button1.currentImage?.isEqual(button5.currentImage))! && (button5.currentImage?.isEqual(button9.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }
            
            if button3.currentImage != nil && button5.currentImage != nil && button7.currentImage != nil {
                if (button3.currentImage?.isEqual(button5.currentImage))! && (button5.currentImage?.isEqual(button7.currentImage))! {
                    print("Three in a row")
                    return true
                }
            }

        
        
        
    return false
    }
    
    @IBAction func dialconfigTapped(_ sender: UIButton) {
        if threeInARow() {
            
            slideIn()
            return
        }
        print(x)
        switch sender.tag {
            
        case 1:
            
            if button1.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button1.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button1.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
            
        case 2:
            
            if button2.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button2.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button2.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
            
        case 3:
            
            if button3.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button3.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button3.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
            
        case 4:
            
            if button4.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button4.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button4.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
            
        case 5:
            if button5.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button5.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button5.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
            
        case 6:
            
            if button6.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button6.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button6.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
        case 7:
            
            if button7.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button7.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button7.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
        case 8:
            if button8.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button8.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button8.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
        case 9:
            if button9.currentImage != nil {
                print("Cant choose this space!")
                break
            }
            if x {
                button9.setImage(UIImage(named: "cross")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = false
            }else if x == false {
                button9.setImage(UIImage(named: "nought")?.withRenderingMode(.alwaysOriginal), for: .normal)
                x = true
            }
            if threeInARow() {
                slideIn()
            }
            
        default:
            break
        }
    }
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!

    
    func slideIn() {
        winLabel.center = CGPoint(x: winLabel.center.x - 500, y: winLabel.center.y - 500)
        playAgain.center = CGPoint(x: playAgain.center.x - 500, y: playAgain.center.y - 500)
        
        winLabel.isHidden = false
        playAgain.isHidden = false
        
        UIView.animate(withDuration: 1) {
            self.winLabel.center = CGPoint(x: self.winLabel.center.x + 500, y:self.winLabel.center.y + 500)
            
             self.playAgain.center = CGPoint(x: self.playAgain.center.x + 500, y:self.playAgain.center.y + 500)
            
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button1.tag = 1
        button2.tag = 2
        button3.tag = 3
        button4.tag = 4
        button5.tag = 5
        button6.tag = 6
        button7.tag = 7
        button8.tag = 8
        button9.tag = 9
        
        winLabel.isHidden = true
        playAgain.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

