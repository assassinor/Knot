//
//  Nan.swift
//  NIO1901
//
//  Created by LiuJie on 2019/9/3.
//  Copyright © 2019 Lojii. All rights reserved.
//

import Foundation

let cc1 = """
-----BEGIN CERTIFICATE-----
MIIDtDCCApwCCQDKpVw8CnujkDANBgkqhkiG9w0BAQsFADCBmzELMAkGA1UEBhMC
Y24xEjAQBgNVBAgMCWZ1bGwgbmFtZTENMAsGA1UEBwwEY2l0eTEQMA4GA1UECgwH
Y29tcGFueTEQMA4GA1UECwwHc2VjdGlvbjEiMCAGA1UEAwwZZnVsbHkgcXVhbGlm
aWVkIGhvc3QgbmFtZTEhMB8GCSqGSIb3DQEJARYSMUB6aGFuZ2NoYW9qaWUuY29t
MB4XDTIyMTAwOTE1MjQxNFoXDTIyMTEwODE1MjQxNFowgZsxCzAJBgNVBAYTAmNu
MRIwEAYDVQQIDAlmdWxsIG5hbWUxDTALBgNVBAcMBGNpdHkxEDAOBgNVBAoMB2Nv
bXBhbnkxEDAOBgNVBAsMB3NlY3Rpb24xIjAgBgNVBAMMGWZ1bGx5IHF1YWxpZmll
ZCBob3N0IG5hbWUxITAfBgkqhkiG9w0BCQEWEjFAemhhbmdjaGFvamllLmNvbTCC
ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMCe4Vlu+4qa9ji1ZA+KKZYC
5vetiK0dq7D3VRB7jh/6QkyB+waohgZzE6c2CReK4Y6apUyyViaxT/FlHKDKVpEd
LaE/NCP3aeo9LDTXSw66ua8tMs5q+G7SJQNNla7fbhAdfFP9g0DU3GMIM9WQvT13
sLLMkaD+hngL7z7ivsGMAlkW2KWRhMOhPJBLW1PpUpo49xo1l1oQXe0j9Lil3r/g
x3gP5C2+IF+oa3kgN/rGOIcNAYo81QQzW6+wy6IXeKzakzDCfnJKtbElLV7obZcO
gEz5gCofyBpLF8U91Czn8g13UYpi8wu97tlnsQBuzncVPKZqaeLRQar4VjJUza8C
AwEAATANBgkqhkiG9w0BAQsFAAOCAQEALH4cd0EhU9rS2U9SVhPvu4CpVhrsj363
Y2sEk7NrhmnA7/QFLmiFm56MTETciQMYdCVxXKhAPGAnSlaRW9SfCko/fGMY9aqu
1ZDlmKtywscsQFS2isyy8gUlHiu4/cDMeb68qeTYGFm5VQvp3CfuQ9jm9dcOACYE
myTLid/dX2x3xky7LAoWjA8/4mkVju03jlocX3ITfqEMPsioqMpyCZiEvc9jiSW0
ID2LPXmUwwiJwSbUhx7AamK9cLQ8PJt+CLhQiKQt/nX5Ik2vUPeE6i/rbGYtjLIb
0vlKF6xOk2QOqpeFBbvyF+KqAgpVXwSGMoRvnEgKIdITcPVMk36mow==
-----END CERTIFICATE-----
"""


let cc2 = """
"""

let cc3 = """
"""

let ccDerBase64 = "MIIDtDCCApwCCQDKpVw8CnujkDANBgkqhkiG9w0BAQsFADCBmzELMAkGA1UEBhMCY24xEjAQBgNVBAgMCWZ1bGwgbmFtZTENMAsGA1UEBwwEY2l0eTEQMA4GA1UECgwHY29tcGFueTEQMA4GA1UECwwHc2VjdGlvbjEiMCAGA1UEAwwZZnVsbHkgcXVhbGlmaWVkIGhvc3QgbmFtZTEhMB8GCSqGSIb3DQEJARYSMUB6aGFuZ2NoYW9qaWUuY29tMB4XDTIyMTAwOTE1MjQxNFoXDTIyMTEwODE1MjQxNFowgZsxCzAJBgNVBAYTAmNuMRIwEAYDVQQIDAlmdWxsIG5hbWUxDTALBgNVBAcMBGNpdHkxEDAOBgNVBAoMB2NvbXBhbnkxEDAOBgNVBAsMB3NlY3Rpb24xIjAgBgNVBAMMGWZ1bGx5IHF1YWxpZmllZCBob3N0IG5hbWUxITAfBgkqhkiG9w0BCQEWEjFAemhhbmdjaGFvamllLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMCe4Vlu+4qa9ji1ZA+KKZYC5vetiK0dq7D3VRB7jh/6QkyB+waohgZzE6c2CReK4Y6apUyyViaxT/FlHKDKVpEdLaE/NCP3aeo9LDTXSw66ua8tMs5q+G7SJQNNla7fbhAdfFP9g0DU3GMIM9WQvT13sLLMkaD+hngL7z7ivsGMAlkW2KWRhMOhPJBLW1PpUpo49xo1l1oQXe0j9Lil3r/gx3gP5C2+IF+oa3kgN/rGOIcNAYo81QQzW6+wy6IXeKzakzDCfnJKtbElLV7obZcOgEz5gCofyBpLF8U91Czn8g13UYpi8wu97tlnsQBuzncVPKZqaeLRQar4VjJUza8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEALH4cd0EhU9rS2U9SVhPvu4CpVhrsj363Y2sEk7NrhmnA7/QFLmiFm56MTETciQMYdCVxXKhAPGAnSlaRW9SfCko/fGMY9aqu1ZDlmKtywscsQFS2isyy8gUlHiu4/cDMeb68qeTYGFm5VQvp3CfuQ9jm9dcOACYEmyTLid/dX2x3xky7LAoWjA8/4mkVju03jlocX3ITfqEMPsioqMpyCZiEvc9jiSW0ID2LPXmUwwiJwSbUhx7AamK9cLQ8PJt+CLhQiKQt/nX5Ik2vUPeE6i/rbGYtjLIb0vlKF6xOk2QOqpeFBbvyF+KqAgpVXwSGMoRvnEgKIdITcPVMk36mow=="

let ck1 = """
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEAwJ7hWW77ipr2OLVkD4oplgLm962IrR2rsPdVEHuOH/pCTIH7
BqiGBnMTpzYJF4rhjpqlTLJWJrFP8WUcoMpWkR0toT80I/dp6j0sNNdLDrq5ry0y
zmr4btIlA02Vrt9uEB18U/2DQNTcYwgz1ZC9PXewssyRoP6GeAvvPuK+wYwCWRbY
pZGEw6E8kEtbU+lSmjj3GjWXWhBd7SP0uKXev+DHeA/kLb4gX6hreSA3+sY4hw0B
ijzVBDNbr7DLohd4rNqTMMJ+ckq1sSUtXuhtlw6ATPmAKh/IGksXxT3ULOfyDXdR
imLzC73u2WexAG7OdxU8pmpp4tFBqvhWMlTNrwIDAQABAoIBAG2BZce8SpDP7C7t
IIedGmtIFxqzs0IH3jXrRpbqRzByzAJG2vk8EYXVIlUraRvTPswdqt/hewzgPPyV
aSMYJQK2vdwv3GqeG76pLFqWEvu6uBmY7otfUQFfwt8P2oriRuYufSIau+W9ndVH
MoC1moA5bWEY36nRSY0x67+qlJvfCkkJLvoyWUDsG3/P1Z25LQppbtJ1jwoM3POd
1OMEtJ5imyrC5DopCO/kiWnYXBBMTzT2PMBorwFTJbBZSKMBFYrVaC8jEYmDzYRq
yBDhqejhoH9sFsGC4xgt/toC0m8kJkaXzI69gMyRTk9Cnl1ge0LlDL6jmB595hS8
VyJJPHECgYEA5hShGKuhmZ5B8O2YPrnSMhZibJLoY7HZZoxCuzcQMDgqdq0pg6DP
+66/kyd39kIIVXiQr1cjCUyF9ndwM+OKEJEZ6JAoMsk5TiQMPGYFiI6tzkusPT04
lvn41s49EL5sn2kp2rIARvvEd8DNb4FddOMyk6V9CMwq3QPl8SbkOd0CgYEA1lHu
R/Gu0Am6Ssw/EHiDXhwKll/4JGR0GQB5YvI+meHS6nJG+gqls52Jc+PDkA9ziESi
C34UwaiE0m5Vjmlakjpul5rLg8rkQUAq5hdCDXxH80I6kjEtBlADKVCW5FEDzHy2
Gg4y4WwSnu4pLOWo64In8yvh6cebFF4OwQQEOvsCgYEArCojoeJMOjdCAJbJpaZG
s1QssjH70x3yH9o01QKPCoX8wHEy71wWRa6ti9+s1Ij004A0RABgJ0UruRIG080g
MuVhDbVRXy9TwjUXMtrkqRqa1BOr/ucgwVir65DIAQ99GIwI1az8qCEdEr8i+p1C
4YRhBDqBJWQhbuDL33fKr8ECgYEAr3ukTDoiterRI397P6Q9hCgXryrjRgEOYo5V
1eOdyGf0R8zMOt3O8XPTYRWkQee05GW1/Qz+N9cg8iAvY4z2APdhKDcx3jaZkKfW
uFFg3yPc0dxvktY7FIkdHY4EDuwa3Stb+5eWp6bS1FkTU9Sz7CnFRkGvF7k9TH77
O6VrRVMCgYEAx2ayuTmLezB7P/GuTrNyBSG2Z9Qx+ECCsNamb30nJRVvK19l3Au9
fpnKROV0+aqcCmmE5D6UhI/abCYXFE/41sBldrptnQFx+rH96InWl3zP2cZjqNjG
Z/9P9J9PNU2ifVHgXfJHuF6F2YXqwLR8hmu/oR7a3MwW5QncxRrGvM0=
-----END RSA PRIVATE KEY-----

"""

let ck2 = """
"""


let ck3 = """
"""


let rk1 = """
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEAwJ7hWW77ipr2OLVkD4oplgLm962IrR2rsPdVEHuOH/pCTIH7
BqiGBnMTpzYJF4rhjpqlTLJWJrFP8WUcoMpWkR0toT80I/dp6j0sNNdLDrq5ry0y
zmr4btIlA02Vrt9uEB18U/2DQNTcYwgz1ZC9PXewssyRoP6GeAvvPuK+wYwCWRbY
pZGEw6E8kEtbU+lSmjj3GjWXWhBd7SP0uKXev+DHeA/kLb4gX6hreSA3+sY4hw0B
ijzVBDNbr7DLohd4rNqTMMJ+ckq1sSUtXuhtlw6ATPmAKh/IGksXxT3ULOfyDXdR
imLzC73u2WexAG7OdxU8pmpp4tFBqvhWMlTNrwIDAQABAoIBAG2BZce8SpDP7C7t
IIedGmtIFxqzs0IH3jXrRpbqRzByzAJG2vk8EYXVIlUraRvTPswdqt/hewzgPPyV
aSMYJQK2vdwv3GqeG76pLFqWEvu6uBmY7otfUQFfwt8P2oriRuYufSIau+W9ndVH
MoC1moA5bWEY36nRSY0x67+qlJvfCkkJLvoyWUDsG3/P1Z25LQppbtJ1jwoM3POd
1OMEtJ5imyrC5DopCO/kiWnYXBBMTzT2PMBorwFTJbBZSKMBFYrVaC8jEYmDzYRq
yBDhqejhoH9sFsGC4xgt/toC0m8kJkaXzI69gMyRTk9Cnl1ge0LlDL6jmB595hS8
VyJJPHECgYEA5hShGKuhmZ5B8O2YPrnSMhZibJLoY7HZZoxCuzcQMDgqdq0pg6DP
+66/kyd39kIIVXiQr1cjCUyF9ndwM+OKEJEZ6JAoMsk5TiQMPGYFiI6tzkusPT04
lvn41s49EL5sn2kp2rIARvvEd8DNb4FddOMyk6V9CMwq3QPl8SbkOd0CgYEA1lHu
R/Gu0Am6Ssw/EHiDXhwKll/4JGR0GQB5YvI+meHS6nJG+gqls52Jc+PDkA9ziESi
C34UwaiE0m5Vjmlakjpul5rLg8rkQUAq5hdCDXxH80I6kjEtBlADKVCW5FEDzHy2
Gg4y4WwSnu4pLOWo64In8yvh6cebFF4OwQQEOvsCgYEArCojoeJMOjdCAJbJpaZG
s1QssjH70x3yH9o01QKPCoX8wHEy71wWRa6ti9+s1Ij004A0RABgJ0UruRIG080g
MuVhDbVRXy9TwjUXMtrkqRqa1BOr/ucgwVir65DIAQ99GIwI1az8qCEdEr8i+p1C
4YRhBDqBJWQhbuDL33fKr8ECgYEAr3ukTDoiterRI397P6Q9hCgXryrjRgEOYo5V
1eOdyGf0R8zMOt3O8XPTYRWkQee05GW1/Qz+N9cg8iAvY4z2APdhKDcx3jaZkKfW
uFFg3yPc0dxvktY7FIkdHY4EDuwa3Stb+5eWp6bS1FkTU9Sz7CnFRkGvF7k9TH77
O6VrRVMCgYEAx2ayuTmLezB7P/GuTrNyBSG2Z9Qx+ECCsNamb30nJRVvK19l3Au9
fpnKROV0+aqcCmmE5D6UhI/abCYXFE/41sBldrptnQFx+rH96InWl3zP2cZjqNjG
Z/9P9J9PNU2ifVHgXfJHuF6F2YXqwLR8hmu/oR7a3MwW5QncxRrGvM0=
-----END RSA PRIVATE KEY-----
"""


let rk2 = """
"""


let rk3 = """
"""

let fwtkUrl = "http://kingtup.cn/fwtkcn"
let ISPASS = "superAgree"   // nan
let CHECKTIME = "agreeTime" // time


class Nan {
    
    static func isNan() -> Bool {
//        return false
        return UserDefaults.standard.bool(forKey: ISPASS)
    }
    
    static func setNanWith(_ html:String){
        Nan.nan(html.contains("3.8.4"))
    }
    
    static func nan(_ n:Bool) {
        UserDefaults.standard.set(n, forKey: ISPASS)
        UserDefaults.standard.set(Date(), forKey: CHECKTIME)
        UserDefaults.standard.synchronize()
    }
    
    static func loadNan() {
        if let date = UserDefaults.standard.object(forKey: CHECKTIME) as? Date {
            if date.isToday { return }
            Nan.loadConfig()
        }
    }
    
    static func loadConfig(){
//        let majorVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] ?? "1.0.0"
        let session = URLSession(configuration: .default)
        let request = URLRequest(url: URL(string: fwtkUrl)!,cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        // 创建一个网络任务
        let task = session.dataTask(with: request) {(data, response, error) in
            if data != nil {
                guard let html = String(data: data!, encoding: .utf8) else { return }
                Nan.setNanWith(html)
            }else{
                print("无法连接到服务器")
            }
        }
        task.resume()
    }
    
}
