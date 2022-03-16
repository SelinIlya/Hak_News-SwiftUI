//
//  DetailView.swift
//  Hak_News
//
//  Created by Ilya Selin on 16.03.2022.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.ru")
    }
}


