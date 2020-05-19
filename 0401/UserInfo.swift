

import Foundation

class UserInfo: CustomStringConvertible
{
    var description: String
    {
        get{
            return"\(name),\(pwd)"
        }
    }
    
    var name:String = ""
    var pwd:String = ""
    var isCPM:Bool = false
    var education:String = ""
    var iq:Int = 0
    
    func setEduByIndex(index:Int)
    {
        let eduList = [0:"党员",1:"本科",2:"硕士",3:"博士"]
        if index >= 0 && index <= 3
        {
            education = eduList[index]!
        }
    }
    
}
