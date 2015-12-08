//
//  StringExtension.swift
//  ExtensionHub
//
//  Created by HuGang on 15/12/8.
//  Copyright © 2015年 Codans Software. All rights reserved.
//

import UIKit

extension String  {

    /**
     字符串长度
     
     - returns: 字符串长度
     */
    func length() -> Int {
        return self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
    }
    
    /**
     字符串取左边n个字符
     
     - parameter length: 取多少个
     
     - returns: 取左
     */
    func left(length:Int) -> String {
        let index : Index = self.startIndex.advancedBy(length)
        if self.length()>length {
            return self.substringToIndex(index)
        }
        else {
            return self;
        }
        
    }
    
    /**
     字符串取右
     
     - parameter length: n个
     
     - returns: 字符串
     */
    func right(length:Int) -> String {
        if self.length() > length {
            let index = self.endIndex.advancedBy(-length)
            return self.substringFromIndex(index)
        }
        else {
            return self;
        }
    }
    
    /**
     取字符中中间的一部分
     
     - parameter from: 从哪儿开始
     - parameter to:   到哪儿结束
     
     - returns: 字符串
     */
    func substring(from:Int,to:Int) -> String {
        let len = to - from
        let fromIndex = self.startIndex.advancedBy(from)
        let toIndex =  fromIndex.advancedBy(len)
        let range = Range<String.Index>(start: fromIndex ,end: toIndex)
        
        return self.substringWithRange(range)
        
    }

}
