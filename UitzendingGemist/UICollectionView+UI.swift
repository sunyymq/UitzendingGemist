//
//  UICollectionView+UI.swift
//  UitzendingGemist
//
//  Created by Jeroen Wesbeek on 16/08/16.
//  Copyright © 2016 Jeroen Wesbeek. All rights reserved.
//

import Foundation
import UIKit
import NPOKit
import CocoaLumberjack

extension UICollectionView {
    
    public func update(usingEpisodes episodes: inout [NPOEpisode], withNewEpisodes newEpisodes: [NPOEpisode]) {
        // first determine the old / removed episodes and remove them
        let old = episodes.enumerated().filter({ !newEpisodes.contains($0.element) }).reversed()
        let oldIndexPaths = old.map { IndexPath(row: $0.offset, section: 0) }
        for oldEpisode in old {
            guard oldEpisode.offset >= 0 && oldEpisode.offset < episodes.count else {
                continue
            }
            
            episodes.remove(at: oldEpisode.offset)
        }
        deleteItems(at: oldIndexPaths)

        // determine the new / added episodes and insert them
        let new = newEpisodes.enumerated().filter({ !episodes.contains($0.element) })
        let newIndexPaths = new.map { IndexPath(row: $0.offset, section: 0) }
        for newEpisode in new {
            episodes.insert(newEpisode.element, at: newEpisode.offset)
        }
        insertItems(at: newIndexPaths)
        
        // re-order cells (if needed)
        var done = false
        while !done {
            for newEpisode in newEpisodes.enumerated() {
                guard let offset = episodes.index(of: newEpisode.element), offset != newEpisode.offset else {
                    done = true
                    continue
                }
                
                // move cell
                let from = IndexPath(row: offset, section: 0)
                let to = IndexPath(row: newEpisode.offset, section: 0)
                moveItem(at: from, to: to)
                
                // move array element
                episodes.remove(at: offset)
                episodes.insert(newEpisode.element, at: newEpisode.offset)
                done = false
                break
            }
            
            done = true
        }
    }
    
    public func update(usingTips tips: inout [NPOTip], withNewTips newTips: [NPOTip]) {
        // first determine the old / removed tips and remove them
        let old = tips.enumerated().filter({ !newTips.contains($0.element) }).reversed()
        let oldIndexPaths = old.map { IndexPath(row: $0.offset, section: 0) }
        for oldTip in old {
            guard oldTip.offset >= 0 && oldTip.offset < tips.count else {
                continue
            }
            
            tips.remove(at: oldTip.offset)
        }
        deleteItems(at: oldIndexPaths)
        
        // determine the new / added episodes and insert them
        let new = newTips.enumerated().filter({ !tips.contains($0.element) })
        let newIndexPaths = new.map { IndexPath(row: $0.offset, section: 0) }
        for newTip in new {
            tips.insert(newTip.element, at: newTip.offset)
        }
        insertItems(at: newIndexPaths)
        
        // re-order cells (if needed)
        var done = false
        while !done {
            for newTip in newTips.enumerated() {
                guard let offset = tips.index(of: newTip.element), offset != newTip.offset else {
                    done = true
                    continue
                }
                
                // move cell
                let from = IndexPath(row: offset, section: 0)
                let to = IndexPath(row: newTip.offset, section: 0)
                moveItem(at: from, to: to)
                
                // move array element
                tips.remove(at: offset)
                tips.insert(newTip.element, at: newTip.offset)
                done = false
                break
            }
            
            done = true
        }
    }
}
