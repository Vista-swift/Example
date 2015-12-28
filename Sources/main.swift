//
//  main.swift
//  Vista
//
//  Created by Patrick Horlebein on 06.12.15.
//  Copyright © 2015 Piay Softworks. All rights reserved.
//

import Foundation
import Vista

#if os(Linux)
import CGLX.Glx
import CGLX.X
#endif

#if os(Linux)
extension NSRect {
	init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
		self.origin = CGPoint(x: x, y: y)
		self.size = CGSize(width: width, height: height)
	}
	init(x: Double, y: Double, width: Double, height: Double) {
		self.origin = CGPoint(x: CGFloat(x), y: CGFloat(y))
		self.size = CGSize(width: CGFloat(width), height: CGFloat(height))
	}
}
#endif


var window = Window(withRect: NSRect(x: 5.0, y: 5.0, width: 1024.0, height: 768.0),
                       title: "🗻")!

for event in Application.sharedInstance.events() {
    switch event {
    case 2: Application.sharedInstance.terminate(); break;
    default: break;
    }
}

/*
class AppDelegate: ApplicationDelegate, WindowDelegate, OpenGLKernel {

    var window: Window? = nil

    func applicationDidFinishLaunching() {
        window = Window(withRect: NSRect(x: 5, y: 5, width: 1024, height: 768),
                           title: "🗻",
                        delegate: self,
                          kernel: self)
        window?.makeCurrent()
    }

    // MARK: - Window Delegate

    func windowWillClose() {
        Application.sharedInstance.terminate()
    }

    func windowWillMiniaturize() {
    }

    func prepareOpenGL() {
        glEnable(GLenum(GL_BLEND));
        glBlendFunc(GLenum(GL_DST_ALPHA), GLenum(GL_ONE_MINUS_DST_ALPHA));

        print("Version: ", glGetString(GLenum(GL_VERSION)))
        print("Vendor: ", glGetString(GLenum(GL_VENDOR)))
        print("Renderer: ", glGetString(GLenum(GL_RENDERER)))
        print("Extensions: ", glGetString(GLenum(GL_EXTENSIONS)))
        print("Shading language version: ", glGetString(GLenum(GL_SHADING_LANGUAGE_VERSION)))
    }
}

let application = Application(withDelegate: AppDelegate())
application.run()

for event in application.events() {

}
*/
