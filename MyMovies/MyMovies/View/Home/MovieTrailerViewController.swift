//
//  MovieTrailerViewController.swift
//  MyMovies
//
//  Created by Wesley Brito on 03/04/20.
//  Copyright © 2020 Wesley Brito. All rights reserved.
//

import UIKit
import YouTubePlayerSwift

class MovieTrailerViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MovieTrailerCoordinator?
    var youtubeKey: String = ""
    
    @IBOutlet weak var playerView: YouTubePlayerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.play(videoID: youtubeKey)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.movieTrailerDidFinish()
    }
    
}
