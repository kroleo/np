//
//  ViewController.swift
//  UIPickerView Example
//
//  Created by syncmac on 21/02/15.
//  Copyright (c) 2015 SourceFreeze. All rights reserved.
//

import UIKit

class RequestServiceView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
    
{
    //@IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    var pickerDataSource = ["General", "Electric", "Plumbing", "Landscape"];
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //pickerView = UIPickerView()
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
/*    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.whiteColor();
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.redColor();
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.greenColor();
        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
        }
    }
*/
    
}

