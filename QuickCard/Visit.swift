//
//  Visit.swift
//  QuickCard
//
//  Created by Guilherme Golfetto on 01/01/23.
//

import Foundation

struct Visit: Identifiable {
    let id = UUID()
    let views: Int
    let events: Int
    let badges: Int
    let actions: Int
    let duration: Int
}
