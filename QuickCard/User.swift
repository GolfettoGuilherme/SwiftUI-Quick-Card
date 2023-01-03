//
//  User.swift
//  QuickCard
//
//  Created by Guilherme Golfetto on 31/12/22.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let title: String
    var email: String
    var companyUrl: String
    var address: String
    
    var visit: Visit
}

extension User {
    static let users = [
        User(
            firstName: "Guilherme",
            lastName: "Golfetto",
title: "iOS Developer",
            email: "gui.golf@me.com",
            companyUrl: "@somehing",
            address:     "Rua da silva sauro",
            visit: Visit(
                views: 50,
                events: 80,
                badges: 9,
                actions: 10,
                duration: 10
            )
        ),
        User(
            firstName: "Guilherme",
            lastName: "Golfetto",
            title: "iOS Developer",
            email: "gui.golf@me.com",
            companyUrl: "@somehing",
            address:     "Rua da silva sauro",
            visit: Visit(
                views: 50,
                events: 80,
                badges: 9,
                actions: 10,
                duration: 10
            )
        ),
        User(
            firstName: "Guilherme",
            lastName: "Golfetto",
            title: "iOS Developer",
            email: "gui.golf@me.com",
            companyUrl: "@somehing",
            address:     "Rua da silva sauro",
            visit: Visit(
                views: 50,
                events: 80,
                badges: 9,
                actions: 10,
                duration: 10
            )
        ),
        User(
            firstName: "Guilherme",
            lastName: "Golfetto",
            title: "iOS Developer",
            email: "gui.golf@me.com",
            companyUrl: "@somehing",
            address:     "Rua da silva sauro",
            visit: Visit(
                views: 50,
                events: 80,
                badges: 9,
                actions: 10,
                duration: 10
            )
        ),
        User(
            firstName: "Guilherme",
            lastName: "Golfetto",
            title: "iOS Developer",
            email: "gui.golf@me.com",
            companyUrl: "@somehing",
            address:     "Rua da silva sauro",
            visit: Visit(
                views: 50,
                events: 80,
                badges: 9,
                actions: 10,
                duration: 10
            )
        ),
        User(
            firstName: "Guilherme",
            lastName: "Golfetto",
            title: "iOS Developer",
            email: "gui.golf@me.com",
            companyUrl: "@somehing",
            address:     "Rua da silva sauro",
            visit: Visit(
                views: 50,
                events: 80,
                badges: 9,
                actions: 10,
                duration: 10
            )
        )
    ]
}
