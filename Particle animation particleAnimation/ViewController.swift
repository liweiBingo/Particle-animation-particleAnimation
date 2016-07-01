//
//  ViewController.swift
//  Particle animation particleAnimation
//
//  Created by 李伟 on 16/7/1.
//  Copyright © 2016年 李伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var emitterLayer:CAEmitterLayer!;

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI();
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setUpUI(){
        emitterLayer  = CAEmitterLayer();
        self.view.layer.addSublayer(emitterLayer);
        emitterLayer.backgroundColor = UIColor.blackColor().CGColor;
        let screenWidth = self.view.bounds.size.width;
        emitterLayer.frame = CGRectMake(0, 0, screenWidth, screenWidth);
        emitterLayer.position  = self.view.center;
        emitterLayer.emitterPosition = CGPointMake(emitterLayer.bounds.size.width/2, emitterLayer.bounds.size.height/2);
        emitterLayer.renderMode = kCAEmitterLayerUnordered;
        emitterLayer.emitterMode = kCAEmitterLayerPoint; //发射器形状
        emitterLayer.emitterSize = CGSizeMake(200, 200);  //发射器大小
        
        let emitterCell   = CAEmitterCell();
        emitterCell.scale = 0.2;
        emitterCell.contents = UIImage(named: "pin_red")?.CGImage;
        emitterCell.birthRate = 100;  //出生率
        emitterCell.lifetime = 5;     //生存时间
        emitterCell.velocity = 50;    //发射速度
        emitterCell.velocityRange  = 100;   //发射范围
        emitterCell.alphaSpeed = -0.4;    //透明度递增速度
        emitterCell.emissionRange = CGFloat(M_PI * 2.0); //发射角度
        emitterLayer.emitterCells = [emitterCell];
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

