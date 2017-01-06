//
//  ViewController.swift
//  HostsManager
//
//  Created by wenyou on 2016/12/23.
//  Copyright © 2016年 wenyou. All rights reserved.
//

import Cocoa
import SnapKit

class ViewController: NSViewController {
    let margin: CGFloat = 20

    override func viewDidLoad() {
        super.viewDidLoad()

        view.wantsLayer = true
        view.layer?.backgroundColor = CGColor.white
        view.frame = NSRect(origin: NSPoint.zero, size: AppDelegate.windowSize)

        let view1 = NSView()
        view1.wantsLayer = true
        view1.layer?.backgroundColor = NSColor.red.cgColor
        view.addSubview(view1)

        let view2 = NSView()
        view2.wantsLayer = true
        view2.layer?.backgroundColor = NSColor.blue.cgColor
        view.addSubview(view2)

        let view3 = NSView()
        view3.wantsLayer = true
        view3.layer?.backgroundColor = NSColor.yellow.cgColor
        view.addSubview(view3)

        let view4 = NSView()
        view4.wantsLayer = true
        view4.layer?.backgroundColor = NSColor.green.cgColor
        view.addSubview(view4)

        view1.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(margin)
            make.top.equalToSuperview().offset(margin)
            make.height.equalTo(100)
        }

        view2.snp.makeConstraints { (make) in
            make.left.equalTo(view1)
            make.width.equalTo(view1)
            make.top.equalTo(view1.snp.bottom).offset(margin)
            make.bottom.equalToSuperview().offset(0 - margin)
        }

        view3.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(0 - margin)
            make.top.equalTo(view1)
            make.width.equalTo(view1).multipliedBy(2)
            make.left.equalTo(view1.snp.right).offset(margin)
            make.bottom.equalTo(view1)
        }

        view4.snp.makeConstraints { (make) in
            make.width.equalTo(view3)
            make.right.equalTo(view3)
            make.top.equalTo(view2)
            make.bottom.equalTo(view2)
        }
    }

    override var representedObject: Any? {
        didSet {
        }
    }

    override func loadView() {
        view = NSView()
    }
}
