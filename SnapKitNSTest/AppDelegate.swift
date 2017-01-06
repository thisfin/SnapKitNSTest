//
//  AppDelegate.swift
//  SnapKitNSTest
//
//  Created by wenyou on 2017/1/6.
//  Copyright © 2017年 wenyou. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window = NSWindow(contentRect: NSRect.zero,
                          styleMask: [.closable, .resizable, .miniaturizable, .titled],
                          backing: .buffered,
                          defer: false)
        window.contentViewController = ViewController()
        window.center()
        window.makeKeyAndOrderFront(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
