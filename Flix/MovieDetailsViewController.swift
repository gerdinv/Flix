//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Gerdin Ventura on 2/25/21.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movie: [String: Any]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseUrl = "https://image.tmdb.org/t/p/w500"
        
        // Downloads the Movie's Pictures
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)
        
        // Updates screen elements
        titleLabel.text = movie["title"] as? String
        descriptionLabel.text = movie["overview"] as? String
        posterView.af.setImage(withURL: posterUrl!)
        backdropView.af.setImage(withURL: backdropUrl!)
        
        // Updates label sizes
        titleLabel.sizeToFit()
        descriptionLabel.sizeToFit()
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
