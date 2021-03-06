// https://github.com/Quick/Quick

import Quick
import Nimble
import UIViewSweets

class FrameSpec: QuickSpec {
    override func spec() {
        var view:UIView!
        beforeEach {
            view = UIView(frame: CGRect(x:10,y:11,width: 12,height: 13))
        }
        describe ("an UIView init with frame"){
            
            it("frame.origin.x equals to x"){
                expect(view.x) == view.frame.origin.x
            }
            
            it("frame.origin.y equals to y"){
                expect(view.y) == view.frame.origin.y
            }
            
            it("frame.size.height equals to height"){
                expect(view.height) == view.frame.size.height
            }
            
            it("frame.size.width equals to width"){
                expect(view.width) == view.frame.size.width
            }
            
            it("frame.size equals to size"){
                expect(view.size) == view.frame.size
            }
            
            it("frame.origin equals to origin"){
                expect(view.origin) == view.frame.origin
            }
        }
        describe("after change frame of view"){
            beforeEach{
                view.frame.origin.x = 7
                view.frame.origin.y = 8
                view.frame.size.height = 9
                view.frame.size.width = 10
            }
            
            it("frame.origin.x now equals to 7"){
                expect(view.frame.origin.x) == 7
            }
            
            it("frame.origin.y now equals to 8"){
                expect(view.frame.origin.y) == 8
            }
            
            it("frame.size.height now equals to 9"){
                expect(view.frame.size.height) == 9
            }
            
            it("frame.size.width now equals to 10"){
                expect(view.frame.size.width) == 10
            }
            
            it("frame.size now equals to (10,9)"){
                expect(view.frame.size) == CGSize(width: 10, height: 9)
            }
            
            it("frame.origin now equals to (7,8)"){
                expect(view.frame.origin) == CGPoint(x: 7, y: 8)
            }
            
            it("frame.origin.x equals to x"){
                expect(view.x) == view.frame.origin.x
            }
            
            it("frame.origin.y equals to y"){
                expect(view.y) == view.frame.origin.y
            }
            
            it("frame.size.height equals to height"){
                expect(view.height) == view.frame.size.height
            }
            
            it("frame.size.width equals to width"){
                expect(view.width) == view.frame.size.width
            }
            
            it("frame.size equals to size"){
                expect(view.size) == view.frame.size
            }
            
            it("frame.origin equals to origin"){
                expect(view.origin) == view.frame.origin
            }
        }
        describe("after change x"){
            beforeEach{
                view.x = 7
                view.y = 8
                view.height = 9
                view.width = 10
            }
            it("x now equals to 7"){
                expect(view.frame.origin.x) == 7
            }
            it("y now equals to 8"){
                expect(view.frame.origin.y) == 8
            }
            it("height now equals to 9"){
                expect(view.frame.size.height) == 9
            }
            it("width now equals to 10"){
                expect(view.frame.size.width) == 10
            }
            it("size now equals to (10,9)"){
                expect(view.frame.size) == CGSize(width: 10, height: 9)
            }
            it("origin now equals to (7,8)"){
                expect(view.frame.origin) == CGPoint(x:7, y:8)
            }
            
            it("frame.origin.x equals to x"){
                expect(view.x) == view.frame.origin.x
            }
            it("frame.origin.y equals to y"){
                expect(view.y) == view.frame.origin.y
            }
            it("frame.size.height equals to height"){
                expect(view.height) == view.frame.size.height
            }
            it("frame.size.width equals to width"){
                expect(view.width) == view.frame.size.width
            }
            it("frame.size equals to size"){
                expect(view.size) == view.frame.size
            }
            it("frame.origin equals to origin"){
                expect(view.origin) == view.frame.origin
            }
            
        }
    }
}

class ViewHieararchySpec: QuickSpec{
    override func spec(){
        var view:UIView!
        beforeEach{
            view = UIView()
            
            let firstSubview = UIView()
            view.addSubview(firstSubview)
            
            let secondSubview = UIView()
            view.addSubview(secondSubview)
        }
        describe("an UIView with two subviews"){

            
            it("subviews count is 2"){
                expect(view.subviews.count) == 2
            }

            it("subviews count is 0"){
                view.removeSubviews()
                expect(view.subviews.count) == 0
                view.removeSubviews()
                expect(view.subviews.count) == 0
            }
        }
    }
}
