//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/19.
//

import CoreGraphics


/// 用來定義六邊形（hexagon）圖形的參數
struct HexagonParameters {
    struct Segment {            // 線段（代表六邊形每一段的資訊）
        let line: CGPoint       // 直線的終點
        let curve: CGPoint      // 曲線的終點
        let control: CGPoint    // 空制點（貝茲曲線的控制點，用來控制曲線彎曲程度）
    }
    
    static let adjustment: CGFloat = 0.085  // 微調數值，用來讓六邊形看起來更自然，避免完全對稱造成的生硬感
    
    /*
     第一條邊（頂部）：
     
     - 從右上角 (0.60, 0.05) 畫直線到左上角 (0.40, 0.05)
     - 控制點在 (0.50, 0.00)，讓頂部稍微向上彎曲
     
     第二條邊（左上）：
     
     - 從左上角畫到左側中間偏上的位置
     - 加上 adjustment 讓形狀更自然
     
     第三條邊（左下）：
     
     - 從左側中間偏下畫到左下角
     - 減去 adjustment 平衡形狀
     
     第四條邊（底部）：
     
     - 從左下角畫到右下角
     - 控制點讓底部稍微向下彎曲
     
     第五條邊（右下）：
     
     - 從右下角畫到右側中間
     
     第六條邊（右上）：
     
     - 從右側中間畫回到起始點
     */
    static let segments = [
        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),
            curve:   CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
            curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
            control: CGPoint(x: 0.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.40, y: 0.95),
            curve:   CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
            line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
            curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
            control: CGPoint(x: 1.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
            curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]
}
