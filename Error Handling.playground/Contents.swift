import UIKit

//СОздание ошибки
// 4 способа обрабоки ошибки
//1 - ПРоброс ошибки
//2 - do catch
//3 - конвертация в опциональное значение
//4 - утверждение безошибошности - не безопасный способ
    

enum AuthError: Error {
    case wrongPassword
    case dataNotExists
    case serverLost
}

//1) передается коду который вызвал ошибку

func aut (login: String, pwd: String) throws {
    let trueLogin = "Alla"
    let truePass = "123"
    
    guard login == trueLogin else {
        throw AuthError.dataNotExists
    }
    
    guard pwd == truePass else {
        throw AuthError.wrongPassword
    }
    
    print("Hello World")
}
//DO catch

do {
    try aut(login: "Alla", pwd: "123123")
} catch AuthError.dataNotExists {
    print("No Data")
} catch AuthError.wrongPassword {
    print("Wrong Password")
} catch {
    print("Some error")
}

//Optional
//try? aut(login: "Alla", pwd: "123123")


//4 - утверждение безошибошности
try! aut(login: "Alla", pwd: "123123")
