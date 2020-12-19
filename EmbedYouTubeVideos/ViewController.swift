//
//  ViewController.swift
//  EmbedYouTubeVideos
//
//  Created by satorun on 2020/12/19.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView! {
        didSet {
            webView.scrollView.bounces = false
        }
    }
    
    let vid = "M7lc1UVf-VE" // videoID
    lazy var htmlString = """
<!DOCTYPE html>
<html>
<head>
<meta charset=“UTF-8”>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>
body {
    margin: 0px;
}
.youtube {
  position: relative;
  width: 100%;
  padding-top: 56.25%;
}
.youtube iframe {
  position: absolute;
  top: 0;
  right: 0;
  width: 100% !important;
  height: 100% !important;
}
</style>
</head>
<div class="youtube">
<iframe width="375" height="210" src="https://www.youtube.com/embed/\(vid)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
</html>
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
}

