//
//  ViewController.swift
//  Ejemplo_Segment_Control
//
//  Created by Academia on 14/01/19.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var cityControl: UISegmentedControl!
    @IBOutlet weak var imgContainer: UIImageView!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var txtDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       //process()
        cityControl.selectedSegmentIndex=1
       cityControlChanged(self)
    }

    @IBAction func cityControlChanged(_ sender: Any) {
        process()
    }
    func process(){
        let index:Int = cityControl.selectedSegmentIndex
        switch index {
        case 0:
            imgContainer.image = UIImage(named: "lima")
            lblCity.text = "Ciudad de Reyes"
            txtDescription.text = limaDesc
        case 1:
            imgContainer.image = UIImage(named: "arequipa")
            lblCity.text = "Ciudad Blanca"
            txtDescription.text = areqDesc
        default:
            imgContainer.image = UIImage(named: "cusco")
            lblCity.text = "Cuidad Imperial"
            txtDescription.text = cuscDesc
            
        }
    }
    
    
    let limaDesc = "Lima, the capital of Peru, lies on the country's arid Pacific coast. Though its colonial center is preserved, it's a bustling metropolis and one of South America’s largest cities. It's home to the Museo Larco collection of pre-Columbian art and the Museo de la Nación, tracing the history of Peru’s ancient civilizations. The Plaza de Armas and the 16th-century cathedral are the heart of old Lima Centro."
    let areqDesc =  "Arequipa is the colonial-era capital of Peru’s Arequipa Region. Framed by 3 volcanoes, it's filled with baroque buildings constructed from sillar, a white volcanic stone. Its historic center is anchored by the Plaza de Armas, a stately main square flanked on its north by the 17th-century neoclassical Basilica Cathedral, which houses a museum displaying religious objects and artwork."
    let cuscDesc =  "Cusco, a city in the Peruvian Andes, was once capital of the Inca Empire, and is now known for its archaeological remains and Spanish colonial architecture. Plaza de Armas is the central square in the old city, with arcades, carved wooden balconies and Incan wall ruins. The baroque Santo Domingo Convent was built on top of the Incan Temple of the Sun (Qoricancha), and has archaeological remains of Inca stonework."
    
}

