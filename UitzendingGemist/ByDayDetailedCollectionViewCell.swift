//
//  ByDayDetailedCollectionViewCell.swift
//  UitzendingGemist
//
//  Created by Jeroen Wesbeek on 02/08/16.
//  Copyright © 2016 Jeroen Wesbeek. All rights reserved.
//

import Foundation
import UIKit
import NPOKit
import CocoaLumberjack

class ByDayDetailedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var episodeImageView: UIImageView!
    @IBOutlet weak var programNameLabel: UILabel!
    @IBOutlet weak var episodeNameAndTimeLabel: UILabel!

    fileprivate var imageRequest: NPORequest?
    
    // MARK: Lifecycle
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        episodeImageView.image = nil
        programNameLabel.text = nil
        episodeNameAndTimeLabel.text = nil
    }
    
    // MARK: Configuration
    
    func configure(withEpisode episode: NPOEpisode) {
        let names = episode.getNames()
        programNameLabel.text = names.programName
        episodeNameAndTimeLabel.text = names.episodeNameAndInfo
        
        // Somehow in tvOS 10 / Xcode 8 / Swift 3 the frame will initially be 1000x1000
        // causing the images to look compressed so hardcode the dimensions for now...
        // TODO: check if this is solved in later releases...
        //let size = episodeImageView.frame.size
        let size = CGSize(width: 375, height: 211)
        
        // get image
        imageRequest = episode.getImage(ofSize: size) { [weak self] image, _, request in
            guard let imageRequest = self?.imageRequest, request == imageRequest else {
                return
            }
            
            self?.episodeImageView.image = image
        }
    }
    
    // MARK: Focus engine
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        episodeImageView.adjustsImageWhenAncestorFocused = self.isFocused
    }
}
