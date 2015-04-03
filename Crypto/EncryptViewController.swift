//
//  EncryptViewController.swift
//  Crypto
//
//  Created by Kaitlyn Katz on 3/29/15.
//  Copyright (c) 2015 KTKO Apps. All rights reserved.
//

import UIKit
import MessageUI

class EncryptViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate, MFMessageComposeViewControllerDelegate {

    @IBOutlet weak var cipherInputText: UITextView!
    @IBOutlet weak var keyText: UITextField!
    @IBOutlet weak var outputText: UITextView!
    
    weak var currentTextView: UITextView?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem.selectedImage = UIImage(named: "encryptTabBar")
        self.tabBarItem.image = UIImage(named: "encryptTabBar")
        
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        toolbar.barStyle = .Default
        toolbar.items = [UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil),
                         UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "doneEditingPressed")]
        toolbar.sizeToFit()
        cipherInputText.inputAccessoryView = toolbar
//        keyText.inputAccessoryView = toolbar

        outputText.editable = false
        
        cipherInputText.delegate = self
        outputText.delegate = self
        keyText.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func encryptButtonPress(sender: AnyObject) {
        let x = self.cipherInputText.text
        let y = self.keyText.text
        
        let keyCharArray = Array(y)
        var keyArray = [Int]()
        
        for char in keyCharArray{
            if isInt(char){
                keyArray.append(convertInt(char))
            } else if(char != " "){
                    keyArray.append(convertASCII(char))
                }
        }
        
        let inputCharArray = Array(x)
        var inputArray = [Int]()
        var numIndexArray = [Int]()
        var j = 0
        
        for char in inputCharArray{
            if isInt(char){
                numIndexArray.append(j)
                inputArray.append(convertInt(char))
            } else {
                inputArray.append(convertASCII(char))
            }
            j++
        }
        
        var output : String = ""
        var i = 0
        
        for (index, num) in enumerate(inputArray) {
            if find(numIndexArray, index) == nil {
                if num == -1 {
                    output.append(inputCharArray[index])
                }
                else {
                    var a = keyArray[i]
                    var b = num
                    output.append(viginere[a][b])
                    i++
                    i = i % keyArray.count
                }
            } else {
                let z = convertIntChar(num)
                output.append(z)
            }
        }
        
        outputText.text = output
        
//
    }
    
    
    @IBAction func shareButtonPress(sender: AnyObject) {
        
        var messageVC = MFMessageComposeViewController()
        
        messageVC.body = outputText.text;
        messageVC.recipients = ["Enter phone number"]
        messageVC.messageComposeDelegate = self;
        
        self.presentViewController(messageVC, animated: false, completion: nil)
        
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
        switch (result.value) {
        case MessageComposeResultCancelled.value:
            println("Message was cancelled")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultFailed.value:
            println("Message failed")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultSent.value:
            println("Message was sent")
            self.dismissViewControllerAnimated(true, completion: nil)
        default:
            break;
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func doneEditingPressed() {
        if let current = currentTextView {
            current.resignFirstResponder()
        }
    }
    
    // MARK - UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        keyText.resignFirstResponder()
        return true
    }
    
    // MARK - UITextView Delegate
    func textViewDidBeginEditing(textView: UITextView) {
        currentTextView = textView
    }
    
}
