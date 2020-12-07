//
//  DetailView.swift
//  H4KR
//
//  Created by Andres Alcaraz on 19/08/20.
//  Copyright © 2020 Andres Alcaraz. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
