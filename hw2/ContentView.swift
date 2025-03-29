//
//  ContentView.swift
//  hw2
//
//  Created by 黃友慧 on 2025/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.offWhite)
                .ignoresSafeArea()
            Text(
                """
                這是一台
                簡單的
                小汽車 🚗
                """)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .lineSpacing(8)
            .offset(y: -180)
            Group {
                // 車頂
                Capsule()
                    .frame(width: 180, height: 160)
                    .foregroundStyle(Color.momo)
                    .offset(y: 3)
                // 車身
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 260, height: 120)
                    .foregroundStyle(Color.momo)
                    .offset(y: 70)
                // 右車輪
                Circle()
                    .frame(width: 90)
                    .foregroundStyle(
                        Color(red: 252 / 255, green: 186 / 255, blue: 3 / 255))
                    .offset(x: 60, y: 130)
                // 左車輪
                Circle()
                    .frame(width: 90)
                    .foregroundStyle(
                        Color(red: 252 / 255, green: 186 / 255, blue: 3 / 255))
                    .offset(x: -50, y: 130)
                // 右內車輪
                Circle()
                    .frame(width: 50)
                    .foregroundStyle(
                        Color(red: 88 / 255, green: 178 / 255, blue: 220 / 255))
                    .offset(x: 60, y: 132)
                // 左內車輪
                Circle()
                    .frame(width: 50)
                    .foregroundStyle(
                        Color(red: 88 / 255, green: 178 / 255, blue: 220 / 255))
                    .offset(x: -50, y: 130)
                // 車燈
                Ellipse()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 40, height: 30)
                    .foregroundStyle(Color(red: 252 / 255, green: 186 / 255, blue: 3 / 255))
                    .offset(x: -60, y: -130)
                    .rotationEffect(.degrees(-90))
                // 車窗
                Capsule()
                    .trim(from: 0.5, to: 1)
                    .frame(width: 130, height: 120)
                    .foregroundStyle(Color(red: 254 / 255,green: 223 / 255, blue: 225 / 255))
                    .offset(y: 5)
                // 車窗分隔線
                Rectangle()
                    .frame(width: 10, height: 90) // 線的寬度與高度
                    .foregroundStyle(Color.momo) // 分隔線顏色（可依需求調整）
                    .offset(y: -10) // 與車窗對齊
                // 飛塵 - 第一個塵土球
                Capsule()
                    .frame(width: 20,height: 60)
                    .foregroundStyle(Color(
                        red: 150 / 255,
                        green: 187 / 255,
                        blue: 187 / 255))
                    .rotationEffect(.degrees(-90))
                    .opacity(0.9)
                    .offset(x: 140, y: 160) // 車子後方右下角
                
                // 飛塵 - 第二個塵土球（比較小一點）
                Circle()
                    .frame(width: 28)
                    .foregroundStyle(Color(
                        red: 150 / 255,
                        green: 187 / 255,
                        blue: 187 / 255))
                    .opacity(0.8)
                    .offset(x: 140, y: 150)
                
                // 飛塵 - 第三個塵土球（模糊感遠一點）
                
                Circle()
                    .frame(width: 40)
                    .foregroundStyle(Color(
                        red: 150 / 255,
                        green: 187 / 255,
                        blue: 187 / 255))
                    .opacity(0.9)
                    .offset(x: 162, y: 147)
                
            }
            .offset(y: 60)
        }
    }
}

#Preview {
    ContentView()
}
