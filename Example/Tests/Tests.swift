// https://github.com/Quick/Quick

import Quick
import Nimble
import UIViewSweets

class OriginSpec: QuickSpec {
    override func spec() {
        var view:UIView!
        beforeEach {
            view = UIView(frame: CGRect(x:10,y:11,width: 12,height: 13))
        }
        describe ("an UIView init with frame"){
            it("frame.origin.x equals to x"){
                expect(view.x) == view.frame.origin.x
            }
        }
        describe("after change frame of view"){
            beforeEach{
                view.frame.origin.x = 7
            }
            
            it("frame.origin.x now equals to 7"){
                expect(view.frame.origin.x) == 7
            }
            it("frame.origin.x equals to x"){
                expect(view.x) == view.frame.origin.x
            }
        }
        describe("after change x"){
            beforeEach{
                view.x = 7
            }
            it("x now equals to 7"){
                expect(view.frame.origin.x) == 7
            }
            it("frame.origin.x equals to x"){
                expect(view.x) == view.frame.origin.x
            }
        }
    }
}


