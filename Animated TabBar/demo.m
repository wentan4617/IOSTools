一、描述：可以实现tabbar点击后的动画效果（抖动一下）
二、用法：
1、将文件导入工程中
2、创建RAMAnimatedTabBarItem
private func tabBarControllerAddChildViewController(childView: UIViewController, title: String, imageName: String, selectedImageName: String, tag: Int) {
    //必须是RAMAnimatedTabBarItem才可以实现动态效果
    let vcItem = RAMAnimatedTabBarItem(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName))
    vcItem.tag = tag
    vcItem.animation = RAMBounceAnimation()
    childView.tabBarItem = vcItem
    
    let navigationVC = BaseNavigationController(rootViewController:childView)
    addChildViewController(navigationVC)
}
3、设置图片
override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    super.iconsImageName = ["v2_home", "v2_order", "shopCart", "v2_my"]
    super.iconsSelectedImageName = ["v2_home_r", "v2_order_r", "shopCart_r", "v2_my_r"]
    if fristLoadMainTabBarController {
        let containers = createViewContainers()
        createCustomIcons(containers)
        fristLoadMainTabBarController = false
    }
}


