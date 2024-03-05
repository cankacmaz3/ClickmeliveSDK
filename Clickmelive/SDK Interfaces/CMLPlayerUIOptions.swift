//
//  CMLPlayerUIOptions.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

public class CMLPlayerUIOptions {
    private var isViewerCountVisible: Bool = false
    private var isLikeVisible: Bool = false
    private var isProductsVisible: Bool = false
    private var isTitleVisible: Bool = false
    private var isEventTypeVisible: Bool = false
   
    private init() {}
    
    public class Builder {
        
        private var options = CMLPlayerUIOptions()
        
        public init() {}
        
        public func isViewerCountVisible(_ visible: Bool) -> Builder {
            options.isViewerCountVisible = visible
            return self
        }
        
        public func isLikeVisible(_ visible: Bool) -> Builder {
            options.isLikeVisible = visible
            return self
        }
        
        public func isProductsVisible(_ visible: Bool) -> Builder {
            options.isProductsVisible = visible
            return self
        }
        
        public func isTitleVisible(_ visible: Bool) -> Builder {
            options.isTitleVisible = visible
            return self
        }
        
        public func isEventTypeVisible(_ visible: Bool) -> Builder {
            options.isEventTypeVisible = visible
            return self
        }
        
        public func build() -> CMLPlayerUIOptions {
            return options
        }
    }
}
