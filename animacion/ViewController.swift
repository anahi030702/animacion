//
//  ViewController.swift
//  animacion
//
//  Created by imac on 03/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imvAnimacion: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let arreglo:[UIImage] = [UIImage(named: "camina1.png")!,
            //UIImage(named: "camina1.png")!,
            //UIImage(named: "camina2.png")!,
            //UIImage(named: "camina3.png")!,
            //UIImage(named: "camina4.png")!,
            //UIImage(named: "camina5.png")!,
            //UIImage(named: "camina6.png")!,
            //UIImage(named: "camina7.png")!,
            //UIImage(named: "camina8.png")!,
            //UIImage(named: "camina9.png")!
        //]
        
        var arreglo:[UIImage] = []
        for i in 1...9{
            arreglo += [UIImage(named: "camina\(i).png")!]
        }
        
        imvAnimacion.animationImages = arreglo
        imvAnimacion.animationRepeatCount = 0
        imvAnimacion.animationDuration = 1
    }

    @IBAction func cambiarVelocidad(_ sender: UISegmentedControl) {
        let estado = imvAnimacion.isAnimating
        
        imvAnimacion.animationDuration = 1 - 0.5 * Double(sender.selectedSegmentIndex - 1)
        
        if estado{
            imvAnimacion.startAnimating()
        }
        
    }
    
    @IBAction func encenderApagar(_ sender: UISwitch) {
        if sender.isOn{
            imvAnimacion.startAnimating()
        }else{
            imvAnimacion.stopAnimating()
        }
    }
}

