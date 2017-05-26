//
//  FirstViewController.swift
//  Uhome
//
//  Created by 程荣刚 on 2017/5/26.
//  Copyright © 2017年 menhao. All rights reserved.
//

import UIKit


class FirstViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 添加导航栏右侧按钮
        self.addRightBarButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Custom Method
    func addRightBarButtonItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "ic_tab_information_default"), style: UIBarButtonItemStyle.done, target: self, action: #selector(FirstViewController.touchRightBarButtonItem))
    }
    
    func touchRightBarButtonItem() {
        let scanVC = YTFScanToolController()
        if scanVC.isCameraValid() && scanVC.isCameraAllowed() {
            self.present(scanVC, animated: true)
        }
        
        scanVC.cameraCodeString = {[unowned self] str in
            print(str ?? "二维码扫描失败")
            self.dismiss(animated: true, completion: nil)
        }
        scanVC.albumCodeString = {[unowned self] str in
            print(str ?? "二维码扫描失败")
            self.dismiss(animated: true, completion: nil)
        }
    }
}
