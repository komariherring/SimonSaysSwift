//
//  SimonSaysViewController.swift
//  SimonSaysSwift
//
//  Created by Komari Herring on 8/18/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

enum colorInt: Int
{
    case redColor = 1
    case blueColor
    case greenColor
    case yellowColor
}

var simonSequence = [String]()
var playerTurns = [String]()


class SimonSaysViewController: UIViewController
    
    
{
    //var redSquare: UIButton!
    //var blueSquare: UIButton!
    //var greenSquare: UIButton!
    //var yellowSquare: UIButton!
    
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
        
        let redSquare = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        let blueSquare = UIButton(frame: CGRect(x: 150, y: 50, width: 100, height: 100))
        let greenSquare = UIButton(frame: CGRect(x: 50, y: 150, width: 100, height: 100))
        let yellowSquare = UIButton(frame: CGRect(x: 150, y: 150, width: 100, height: 100))
        
        redSquare.backgroundColor = UIColor.red
        blueSquare.backgroundColor = UIColor.blue
        greenSquare.backgroundColor = UIColor.green
        yellowSquare.backgroundColor = UIColor.yellow
        
        
        
        view.addSubview(redSquare)
        view.addSubview(blueSquare)
        view.addSubview(greenSquare)
        view.addSubview(yellowSquare)
        
       // let button = TTTButton(frame: CGRect(x: x, y: y, width: buttonHW, height: buttonHW))
        //button.backgroundColor = UIColor.cyan
        //button.row = r
        //button.col = c
        
        redSquare.addTarget(self, action: #selector(SimonSaysViewController.spacePressed(_:)), for: .touchUpInside)
        
        blueSquare.addTarget(self, action: #selector(SimonSaysViewController.spacePressed(_:)), for: .touchUpInside)
        
        greenSquare.addTarget(self, action: #selector(SimonSaysViewController.spacePressed(_:)), for: .touchUpInside)
        
        yellowSquare.addTarget(self, action: #selector(SimonSaysViewController.spacePressed(_:)), for: .touchUpInside)



        //view.addSubview(redSquare)



        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //strings empty and defaults empty for now
    // declare buttonAnimation
    
    func simonsTurn()
    {
        let randomChoice = arc4random_uniform(4) + 1
        var simonChose: Int
        switch randomChoice {
        case 1:
            simonChose = red
            
            simonSequence.append("\()")
            
            buttonAnimation(ColoredButton)
        
        case 2:
            simonChose = blue
            
            simonSequence.append("\()")
            
            buttonAnimation(ColoredButton)
       
        case 3:
            simonChose = green
            simonSequence.append("\()")
            buttonAnimation(ColoredButton)
        
        case 4:
            simonChose = yellow
            simonSequence.append("\()")
            buttonAnimation(ColoredButton)
        
        default:
            print("")
        }
        print(simonSequence)
    }
    //func spacePressed(_ button: UIButton)
    //{
        //if button == redSquare
        //{
            
        //}
        
   // }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//class ColoredButton: UIButton

