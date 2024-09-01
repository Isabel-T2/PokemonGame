//
//  ResultsViewController.swift
//  who is that pokemon
//
//  Created by Maria Isabel Torres Torres on 3/02/23.
//

import UIKit
import Kingfisher

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var pokemonLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    var pokemonName: String = ""
    var pokemonImageURL: String = ""
    var finalScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = "Perdiste, tu puntaje es de \(finalScore)."
        pokemonLabel.text = "No, es un \(pokemonName)."
        pokemonImageView.kf.setImage(with: URL(string: pokemonImageURL))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playAgainPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
