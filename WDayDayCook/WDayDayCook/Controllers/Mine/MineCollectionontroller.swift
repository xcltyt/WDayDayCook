//
//  MineCollectionontroller.swift
//  WDayDayCook
//
//  Created by wangju on 16/9/12.
//  Copyright © 2016年 wangju. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MineCollectionontroller: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView?.backgroundColor = UIColor.green

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)


        
        WDHUD.setContainerView(toView: self.collectionView!, parentView: {(containerView) in
    
                let messageView = ShowHUBMessage()
                containerView.addSubview(messageView)
               
                messageView.frame = containerView.bounds
                messageView.descriptionLabel.text = "看到喜欢的菜谱记得收藏喔"
                messageView.infoButton.setTitle("去逛逛", for: UIControlState())
                messageView.infoButton.addTarget(self, action: #selector(MineCollectionontroller.messageInfoButtonClicked), for: UIControlEvents.touchUpInside)
          
            })
        
        WDHUD.showInView(self.collectionView)
        
//        showHUB()

        // Do any additional setup after loading the view.
    }
    
    func showHUB()
    {
        print(self.collectionView)
        WDHUD.showInView(self.collectionView)

    }
    
    func hideHUB()
    {
        WDHUD.hideInView(self.collectionView)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView?.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        
        
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    // MARK: - 消息的监听
    @objc fileprivate func messageInfoButtonClicked()
    {
        self.tabBarController?.selectedIndex = 0
    
    }

}



