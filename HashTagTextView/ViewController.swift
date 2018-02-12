//
//  ViewController.swift
//  HashTagTextView
//
//  Created by Masakazu Sano on 2018/02/11.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import RegeributedTextView

class ViewController: UIViewController {

    @IBOutlet weak var textView: RegeributedTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTextView()
    }
}

extension ViewController {
    fileprivate func prepareTextView() {
        textView.delegate = self
        textView.addAttribute(
            .hashTag,
            attribute: .textColor(.yellow)
        )
    }
}

extension ViewController: RegeributedTextViewDelegate {
    func regeributedTextView(
        _ textView: RegeributedTextView,
        didSelect text: String,
        values: [String : Any]
        ) {
        
        print("👾 selected hashtag: \(text)")
    }
}
