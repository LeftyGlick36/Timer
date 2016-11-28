//
//  ViewController.swift
//  Timer
//
//  Created by Moses Manning on 11/27/16.
//  Copyright © 2016 Moses Manning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var timer = Timer()
    @IBOutlet weak var counter: UILabel!
    private var num = 0.0
    private var numTen = 10.0
    
    
    func processTimer() {
        counter.text = "\(num)"
        processCount()
        
    }
    
    func processCount() {
        num.add(1.0)
    }
    
    
    @IBAction func reset(_ sender: AnyObject) {
        timer.invalidate()
        num=0.0
        counter.text = "\(num)"
    }
    
    @IBAction func addTen(_ sender: AnyObject) {
        if num==0.0 {
            counter.text = "\(10)"
        }else{
            num = num + numTen
            
            counter.text = "\(num)"
            
        }
    }
    @IBAction func subTen(_ sender: AnyObject) {
        if num-10 >= 0 {
            num = num - numTen
            counter.text = "\(num)"
            
        }
        
    }
    @IBAction func playButton(_ sender: AnyObject) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

