//
//  DetailView.swift
//  H4XOR News
//
//  Created by Aguilar, Julio on 10/28/19.
//  Copyright © 2019 Julio Cesar. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
