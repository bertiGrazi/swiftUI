//
//  PageIntro.swift
//  Crypto App
//
//  Created by Grazi  Berti on 03/04/23.
//

import SwiftUI

/// This indicates that this page contains actions such as "Login" or "Sign up"
struct PageIntro: Identifiable, Hashable {
    var id: UUID = .init()
    var introAssetImage: String
    var title: String
    var subTitle: String
    var displaysAction: Bool = false
}

var pageIntro: [PageIntro] = [
    .init(introAssetImage: "Page01", title: "Connect with\nCreators Easily", subTitle: "Thank you for choosing us, we ccan save your lovely time."),
    .init(introAssetImage: "Page02", title: "Get Inspiration\nFrom Creators", subTitle: "Find your favorite creator and get inspired by them"),
    .init(introAssetImage: "Page03", title: "Let's\nGet Started", subTitle: "To register for an account, kindly enter your details.", displaysAction: true),
]
