//
//  CMLPlayerParams.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

public class CMLPlayerParams {
    private var playerType: PlayerType?

    private init() {}
    
    public class Builder {
        private var params = CMLPlayerParams()
        
        public func setType(_ playerType: PlayerType) -> Builder {
            params.playerType = playerType
            return self
        }
        
        public func build() -> CMLPlayerParams {
            return params
        }
    }
}
