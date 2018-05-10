//
//  ChannelVC.swift
//  Smack
//
//  Created by Keith Smith on 09/05/2018.
//  Copyright © 2018 Slooks Ltd. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }


}
