//
//  ViewController.swift
//  1401
//
//  Created by Sri Bande on 12/8/14.
//  Copyright (c) 2014 Sri Bande. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var imageView:UIImageView = UIImageView()
    var harshaAudioPlayer:AVAudioPlayer!
    var andreasAudioPlayer:AVAudioPlayer!
    var andrewAudioPlayer:AVAudioPlayer!
    var samAudioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if var harshaFilePath = NSBundle.mainBundle().pathForResource("harsha_quote", ofType: "mp3"){
            var harshaFilePathUrl = NSURL.fileURLWithPath(harshaFilePath)
            harshaAudioPlayer = AVAudioPlayer(contentsOfURL: harshaFilePathUrl, error: nil)
        }else{
            println("file path is empty")
        }
        if var andreasFilePath = NSBundle.mainBundle().pathForResource("andreas_quote", ofType: "mp3"){
            var andreasFilePathUrl = NSURL.fileURLWithPath(andreasFilePath)
            andreasAudioPlayer = AVAudioPlayer(contentsOfURL: andreasFilePathUrl, error: nil)
        }else{
            println("file path is empty")
        }
        if var andrewFilePath = NSBundle.mainBundle().pathForResource("andrew_quote", ofType: "mp3"){
            var andrewFilePathUrl = NSURL.fileURLWithPath(andrewFilePath)
            andrewAudioPlayer = AVAudioPlayer(contentsOfURL: andrewFilePathUrl, error: nil)
        }else{
            println("file path is empty")
        }
        if var samFilePath = NSBundle.mainBundle().pathForResource("sam_quote", ofType: "mp3"){
            var samFilePathUrl = NSURL.fileURLWithPath(samFilePath)
            samAudioPlayer = AVAudioPlayer(contentsOfURL: samFilePathUrl, error: nil)
        }else{
            println("file path is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func harsha(sender: UIButton) {
        harshaAudioPlayer.stop()
        andreasAudioPlayer.stop()
        andrewAudioPlayer.stop()
        samAudioPlayer.stop()
        
        harshaAudioPlayer.play()
    }
    
    @IBAction func andreas(sender: UIButton) {
        harshaAudioPlayer.stop()
        andreasAudioPlayer.stop()
        andrewAudioPlayer.stop()
        samAudioPlayer.stop()
        
        andreasAudioPlayer.play()
    }
    
    @IBAction func andrew(sender: UIButton) {
        harshaAudioPlayer.stop()
        andreasAudioPlayer.stop()
        andrewAudioPlayer.stop()
        samAudioPlayer.stop()
        
        andrewAudioPlayer.play()
    }
    
    @IBAction func sam(sender: UIButton) {
        harshaAudioPlayer.stop()
        andreasAudioPlayer.stop()
        andrewAudioPlayer.stop()
        samAudioPlayer.stop()
        
        samAudioPlayer.play()
    }
}

