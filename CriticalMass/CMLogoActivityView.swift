//
//  CriticalMapsActivityView.swift
//  CriticalMaps
//
//  Created by Malte Bünz on 20.07.19.
//  Copyright © 2019 Pokus Labs. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable public class CMLogoActivityView: UIView {
    private var timer: Timer?
    private var angle: CGFloat = 0

    public override func draw(_: CGRect) {
        CriticalMapsLoader.drawCMLogo(rotation: angle)
    }

    public func stopAnimating() {
        timer?.invalidate()
        timer = nil
        angle = 0
        setNeedsDisplay()
    }

    public func startAnimating() {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 0.04,
                                         target: self,
                                         selector: #selector(updateViewParameter),
                                         userInfo: nil,
                                         repeats: true)
        } else {
            print("Animation Already running")
        }
    }

    @objc
    private func updateViewParameter() {
        angle -= 1.0
        setNeedsDisplay()
    }
}

public struct CriticalMapsLoader {
    static func drawCMLogo(rotation angle: CGFloat = 0, isMonochrome: Bool = true) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        var yellowFill: UIColor {
            if isMonochrome {
                return UIColor.clear
            } else {
                return .cmYellow
            }
        }
        var whiteFill: UIColor {
            if isMonochrome {
                return UIColor.clear
            } else {
                return .white
            }
        }
        var blackFill: UIColor {
            if isMonochrome {
                return .gray
            } else {
                return .black
            }
        }

        //// cm-logo.ai Group
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 5, y: 5, width: 90, height: 90))
        yellowFill.setFill()
        ovalPath.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 34.17, y: 91.6))
        bezierPath.addLine(to: CGPoint(x: 37.69, y: 69.01))
        bezierPath.addLine(to: CGPoint(x: 25.56, y: 49.06))
        bezierPath.addLine(to: CGPoint(x: 34.17, y: 31.5))
        bezierPath.addLine(to: CGPoint(x: 37.69, y: 33.09))
        bezierPath.addLine(to: CGPoint(x: 45.89, y: 22.98))
        bezierPath.addLine(to: CGPoint(x: 57.46, y: 28.24))
        bezierPath.addLine(to: CGPoint(x: 71.26, y: 45.76))
        bezierPath.addLine(to: CGPoint(x: 66.36, y: 53.09))
        bezierPath.addLine(to: CGPoint(x: 68.45, y: 62.85))
        bezierPath.addLine(to: CGPoint(x: 61.24, y: 70.7))
        bezierPath.addLine(to: CGPoint(x: 66.36, y: 91.6))
        bezierPath.addLine(to: CGPoint(x: 55.49, y: 95.2))
        bezierPath.addLine(to: CGPoint(x: 45.89, y: 95.2))
        bezierPath.addLine(to: CGPoint(x: 34.17, y: 91.6))
        bezierPath.close()
        bezierPath.usesEvenOddFillRule = true
        whiteFill.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 61.7, y: 54.6))
        bezier2Path.addLine(to: CGPoint(x: 68.28, y: 46.37))
        bezier2Path.addLine(to: CGPoint(x: 65.63, y: 43.73))
        bezier2Path.addLine(to: CGPoint(x: 59.02, y: 52.71))
        bezier2Path.addLine(to: CGPoint(x: 61.7, y: 54.6))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 50.08, y: 27.6))
        bezier2Path.addLine(to: CGPoint(x: 46.82, y: 26.15))
        bezier2Path.addLine(to: CGPoint(x: 41.35, y: 32.62))
        bezier2Path.addLine(to: CGPoint(x: 44.45, y: 34.17))
        bezier2Path.addLine(to: CGPoint(x: 50.08, y: 27.6))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 58.38, y: 31.51))
        bezier2Path.addLine(to: CGPoint(x: 54.85, y: 28.76))
        bezier2Path.addLine(to: CGPoint(x: 48.48, y: 36.19))
        bezier2Path.addLine(to: CGPoint(x: 53.41, y: 38.66))
        bezier2Path.addLine(to: CGPoint(x: 58.38, y: 31.51))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 55.44, y: 50.18))
        bezier2Path.addLine(to: CGPoint(x: 63.71, y: 38.96))
        bezier2Path.addLine(to: CGPoint(x: 60.49, y: 36.14))
        bezier2Path.addLine(to: CGPoint(x: 52.28, y: 47.95))
        bezier2Path.addLine(to: CGPoint(x: 55.44, y: 50.18))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 50.89, y: 42.28))
        bezier2Path.addLine(to: CGPoint(x: 34.42, y: 34.05))
        bezier2Path.addLine(to: CGPoint(x: 28.19, y: 48.39))
        bezier2Path.addLine(to: CGPoint(x: 39.4, y: 69.33))
        bezier2Path.addLine(to: CGPoint(x: 35.49, y: 92.04))
        bezier2Path.addLine(to: CGPoint(x: 31.18, y: 91.29))
        bezier2Path.addLine(to: CGPoint(x: 34.84, y: 70.07))
        bezier2Path.addLine(to: CGPoint(x: 23.33, y: 48.58))
        bezier2Path.addLine(to: CGPoint(x: 32.25, y: 28.07))
        bezier2Path.addLine(to: CGPoint(x: 37.32, y: 30.61))
        bezier2Path.addLine(to: CGPoint(x: 45.6, y: 20.82))
        bezier2Path.addLine(to: CGPoint(x: 53.06, y: 24.13))
        bezier2Path.addLine(to: CGPoint(x: 54.24, y: 22.75))
        bezier2Path.addLine(to: CGPoint(x: 64.34, y: 30.61))
        bezier2Path.addLine(to: CGPoint(x: 63.01, y: 32.53))
        bezier2Path.addLine(to: CGPoint(x: 69.62, y: 38.31))
        bezier2Path.addLine(to: CGPoint(x: 68.26, y: 40.16))
        bezier2Path.addLine(to: CGPoint(x: 74.14, y: 46.05))
        bezier2Path.addLine(to: CGPoint(x: 68.91, y: 52.59))
        bezier2Path.addLine(to: CGPoint(x: 70.49, y: 65.26))
        bezier2Path.addLine(to: CGPoint(x: 63.77, y: 71.24))
        bezier2Path.addLine(to: CGPoint(x: 68.05, y: 91.21))
        bezier2Path.addLine(to: CGPoint(x: 63.77, y: 92.12))
        bezier2Path.addLine(to: CGPoint(x: 58.96, y: 69.67))
        bezier2Path.addLine(to: CGPoint(x: 65.87, y: 63.52))
        bezier2Path.addLine(to: CGPoint(x: 65.1, y: 57.36))
        bezier2Path.addLine(to: CGPoint(x: 62.54, y: 60.55))
        bezier2Path.addLine(to: CGPoint(x: 48.55, y: 50.67))
        bezier2Path.addLine(to: CGPoint(x: 39.39, y: 50.67))
        bezier2Path.addLine(to: CGPoint(x: 39.39, y: 46.3))
        bezier2Path.addLine(to: CGPoint(x: 48.1, y: 46.3))
        bezier2Path.addLine(to: CGPoint(x: 50.89, y: 42.28))
        bezier2Path.close()
        blackFill.setFill()
        bezier2Path.fill()


        //// gear
        context.saveGState()
        context.translateBy(x: 50, y: 50)
        context.rotate(by: -angle * CGFloat.pi/180)



        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 20.8, y: -33.94))
        bezier3Path.addCurve(to: CGPoint(x: 25.16, y: -34.64), controlPoint1: CGPoint(x: 21.81, y: -35.34), controlPoint2: CGPoint(x: 23.77, y: -35.65))
        bezier3Path.addCurve(to: CGPoint(x: 25.86, y: -30.27), controlPoint1: CGPoint(x: 26.56, y: -33.62), controlPoint2: CGPoint(x: 26.87, y: -31.67))
        bezier3Path.addCurve(to: CGPoint(x: 21.49, y: -29.58), controlPoint1: CGPoint(x: 24.84, y: -28.87), controlPoint2: CGPoint(x: 22.89, y: -28.57))
        bezier3Path.addCurve(to: CGPoint(x: 20.8, y: -33.94), controlPoint1: CGPoint(x: 20.09, y: -30.59), controlPoint2: CGPoint(x: 19.78, y: -32.55))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: -40.72, y: 13.23))
        bezier3Path.addCurve(to: CGPoint(x: -38.71, y: 9.29), controlPoint1: CGPoint(x: -41.25, y: 11.59), controlPoint2: CGPoint(x: -40.35, y: 9.83))
        bezier3Path.addCurve(to: CGPoint(x: -34.77, y: 11.3), controlPoint1: CGPoint(x: -37.07, y: 8.76), controlPoint2: CGPoint(x: -35.31, y: 9.66))
        bezier3Path.addCurve(to: CGPoint(x: -36.78, y: 15.24), controlPoint1: CGPoint(x: -34.24, y: 12.94), controlPoint2: CGPoint(x: -35.14, y: 14.7))
        bezier3Path.addCurve(to: CGPoint(x: -40.72, y: 13.23), controlPoint1: CGPoint(x: -38.42, y: 15.77), controlPoint2: CGPoint(x: -40.18, y: 14.87))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: -21.49, y: -29.58))
        bezier3Path.addCurve(to: CGPoint(x: -25.86, y: -30.27), controlPoint1: CGPoint(x: -22.89, y: -28.57), controlPoint2: CGPoint(x: -24.84, y: -28.87))
        bezier3Path.addCurve(to: CGPoint(x: -25.16, y: -34.64), controlPoint1: CGPoint(x: -26.87, y: -31.67), controlPoint2: CGPoint(x: -26.56, y: -33.62))
        bezier3Path.addCurve(to: CGPoint(x: -20.8, y: -33.94), controlPoint1: CGPoint(x: -23.77, y: -35.65), controlPoint2: CGPoint(x: -21.81, y: -35.34))
        bezier3Path.addCurve(to: CGPoint(x: -21.49, y: -29.58), controlPoint1: CGPoint(x: -19.79, y: -32.55), controlPoint2: CGPoint(x: -20.09, y: -30.59))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 36.78, y: 15.24))
        bezier3Path.addCurve(to: CGPoint(x: 34.77, y: 11.3), controlPoint1: CGPoint(x: 35.14, y: 14.7), controlPoint2: CGPoint(x: 34.24, y: 12.94))
        bezier3Path.addCurve(to: CGPoint(x: 38.71, y: 9.29), controlPoint1: CGPoint(x: 35.31, y: 9.66), controlPoint2: CGPoint(x: 37.07, y: 8.76))
        bezier3Path.addCurve(to: CGPoint(x: 40.72, y: 13.23), controlPoint1: CGPoint(x: 40.35, y: 9.83), controlPoint2: CGPoint(x: 41.25, y: 11.59))
        bezier3Path.addCurve(to: CGPoint(x: 36.78, y: 15.24), controlPoint1: CGPoint(x: 40.18, y: 14.87), controlPoint2: CGPoint(x: 38.42, y: 15.77))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: -0, y: 42.81))
        bezier3Path.addCurve(to: CGPoint(x: -3.13, y: 39.69), controlPoint1: CGPoint(x: -1.73, y: 42.81), controlPoint2: CGPoint(x: -3.13, y: 41.41))
        bezier3Path.addCurve(to: CGPoint(x: -0, y: 36.56), controlPoint1: CGPoint(x: -3.13, y: 37.96), controlPoint2: CGPoint(x: -1.73, y: 36.56))
        bezier3Path.addCurve(to: CGPoint(x: 3.12, y: 39.69), controlPoint1: CGPoint(x: 1.73, y: 36.56), controlPoint2: CGPoint(x: 3.12, y: 37.96))
        bezier3Path.addCurve(to: CGPoint(x: -0, y: 42.81), controlPoint1: CGPoint(x: 3.12, y: 41.41), controlPoint2: CGPoint(x: 1.73, y: 42.81))
        bezier3Path.close()
        whiteFill.setFill()
        bezier3Path.fill()


        //// Bezier 4 Drawing
        context.saveGState()

        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 2.75, y: -50))
        bezier4Path.addCurve(to: CGPoint(x: 5.97, y: -49.72), controlPoint1: CGPoint(x: 3.83, y: -49.94), controlPoint2: CGPoint(x: 4.91, y: -49.85))
        bezier4Path.addCurve(to: CGPoint(x: 6.67, y: -46.61), controlPoint1: CGPoint(x: 5.92, y: -48.48), controlPoint2: CGPoint(x: 6.18, y: -47.37))
        bezier4Path.addCurve(to: CGPoint(x: 9.68, y: -46.09), controlPoint1: CGPoint(x: 7.68, y: -46.47), controlPoint2: CGPoint(x: 8.69, y: -46.3))
        bezier4Path.addCurve(to: CGPoint(x: 11.39, y: -48.77), controlPoint1: CGPoint(x: 10.4, y: -46.63), controlPoint2: CGPoint(x: 11.02, y: -47.59))
        bezier4Path.addCurve(to: CGPoint(x: 14.52, y: -47.94), controlPoint1: CGPoint(x: 12.45, y: -48.53), controlPoint2: CGPoint(x: 13.49, y: -48.25))
        bezier4Path.addCurve(to: CGPoint(x: 14.66, y: -44.76), controlPoint1: CGPoint(x: 14.25, y: -46.73), controlPoint2: CGPoint(x: 14.31, y: -45.59))
        bezier4Path.addCurve(to: CGPoint(x: 17.54, y: -43.71), controlPoint1: CGPoint(x: 15.63, y: -44.44), controlPoint2: CGPoint(x: 16.59, y: -44.09))
        bezier4Path.addCurve(to: CGPoint(x: 19.69, y: -46.05), controlPoint1: CGPoint(x: 18.34, y: -44.12), controlPoint2: CGPoint(x: 19.12, y: -44.95))
        bezier4Path.addCurve(to: CGPoint(x: 22.62, y: -44.69), controlPoint1: CGPoint(x: 20.68, y: -45.63), controlPoint2: CGPoint(x: 21.66, y: -45.17))
        bezier4Path.addCurve(to: CGPoint(x: 22.21, y: -41.53), controlPoint1: CGPoint(x: 22.15, y: -43.54), controlPoint2: CGPoint(x: 22.01, y: -42.41))
        bezier4Path.addCurve(to: CGPoint(x: 24.85, y: -40), controlPoint1: CGPoint(x: 23.11, y: -41.04), controlPoint2: CGPoint(x: 23.99, y: -40.53))
        bezier4Path.addCurve(to: CGPoint(x: 27.39, y: -41.93), controlPoint1: CGPoint(x: 25.72, y: -40.26), controlPoint2: CGPoint(x: 26.63, y: -40.95))
        bezier4Path.addCurve(to: CGPoint(x: 30.03, y: -40.07), controlPoint1: CGPoint(x: 28.29, y: -41.34), controlPoint2: CGPoint(x: 29.17, y: -40.72))
        bezier4Path.addCurve(to: CGPoint(x: 29.09, y: -37.03), controlPoint1: CGPoint(x: 29.37, y: -39.02), controlPoint2: CGPoint(x: 29.04, y: -37.93))
        bezier4Path.addCurve(to: CGPoint(x: 31.41, y: -35.07), controlPoint1: CGPoint(x: 29.88, y: -36.4), controlPoint2: CGPoint(x: 30.66, y: -35.75))
        bezier4Path.addCurve(to: CGPoint(x: 34.25, y: -36.53), controlPoint1: CGPoint(x: 32.31, y: -35.18), controlPoint2: CGPoint(x: 33.33, y: -35.69))
        bezier4Path.addCurve(to: CGPoint(x: 36.53, y: -34.25), controlPoint1: CGPoint(x: 35.03, y: -35.8), controlPoint2: CGPoint(x: 35.8, y: -35.03))
        bezier4Path.addCurve(to: CGPoint(x: 35.07, y: -31.41), controlPoint1: CGPoint(x: 35.69, y: -33.33), controlPoint2: CGPoint(x: 35.18, y: -32.31))
        bezier4Path.addCurve(to: CGPoint(x: 37.03, y: -29.09), controlPoint1: CGPoint(x: 35.75, y: -30.66), controlPoint2: CGPoint(x: 36.4, y: -29.88))
        bezier4Path.addCurve(to: CGPoint(x: 40.07, y: -30.03), controlPoint1: CGPoint(x: 37.93, y: -29.04), controlPoint2: CGPoint(x: 39.02, y: -29.37))
        bezier4Path.addCurve(to: CGPoint(x: 41.93, y: -27.39), controlPoint1: CGPoint(x: 40.72, y: -29.17), controlPoint2: CGPoint(x: 41.34, y: -28.29))
        bezier4Path.addCurve(to: CGPoint(x: 40, y: -24.85), controlPoint1: CGPoint(x: 40.95, y: -26.63), controlPoint2: CGPoint(x: 40.26, y: -25.72))
        bezier4Path.addCurve(to: CGPoint(x: 41.53, y: -22.21), controlPoint1: CGPoint(x: 40.53, y: -23.99), controlPoint2: CGPoint(x: 41.04, y: -23.11))
        bezier4Path.addCurve(to: CGPoint(x: 44.69, y: -22.62), controlPoint1: CGPoint(x: 42.41, y: -22.01), controlPoint2: CGPoint(x: 43.54, y: -22.15))
        bezier4Path.addCurve(to: CGPoint(x: 46.05, y: -19.69), controlPoint1: CGPoint(x: 45.17, y: -21.66), controlPoint2: CGPoint(x: 45.63, y: -20.68))
        bezier4Path.addCurve(to: CGPoint(x: 43.71, y: -17.54), controlPoint1: CGPoint(x: 44.95, y: -19.12), controlPoint2: CGPoint(x: 44.12, y: -18.34))
        bezier4Path.addCurve(to: CGPoint(x: 44.76, y: -14.66), controlPoint1: CGPoint(x: 44.09, y: -16.59), controlPoint2: CGPoint(x: 44.44, y: -15.63))
        bezier4Path.addCurve(to: CGPoint(x: 47.94, y: -14.52), controlPoint1: CGPoint(x: 45.59, y: -14.31), controlPoint2: CGPoint(x: 46.73, y: -14.25))
        bezier4Path.addCurve(to: CGPoint(x: 48.77, y: -11.39), controlPoint1: CGPoint(x: 48.25, y: -13.49), controlPoint2: CGPoint(x: 48.53, y: -12.45))
        bezier4Path.addCurve(to: CGPoint(x: 46.09, y: -9.68), controlPoint1: CGPoint(x: 47.59, y: -11.02), controlPoint2: CGPoint(x: 46.63, y: -10.4))
        bezier4Path.addCurve(to: CGPoint(x: 46.61, y: -6.67), controlPoint1: CGPoint(x: 46.3, y: -8.69), controlPoint2: CGPoint(x: 46.47, y: -7.68))
        bezier4Path.addCurve(to: CGPoint(x: 49.72, y: -5.97), controlPoint1: CGPoint(x: 47.37, y: -6.18), controlPoint2: CGPoint(x: 48.48, y: -5.92))
        bezier4Path.addCurve(to: CGPoint(x: 50, y: -2.75), controlPoint1: CGPoint(x: 49.85, y: -4.91), controlPoint2: CGPoint(x: 49.94, y: -3.83))
        bezier4Path.addCurve(to: CGPoint(x: 47.06, y: -1.52), controlPoint1: CGPoint(x: 48.77, y: -2.59), controlPoint2: CGPoint(x: 47.72, y: -2.14))
        bezier4Path.addCurve(to: CGPoint(x: 47.08, y: 0), controlPoint1: CGPoint(x: 47.08, y: -1.01), controlPoint2: CGPoint(x: 47.08, y: -0.51))
        bezier4Path.addCurve(to: CGPoint(x: 47.06, y: 1.52), controlPoint1: CGPoint(x: 47.08, y: 0.51), controlPoint2: CGPoint(x: 47.08, y: 1.01))
        bezier4Path.addCurve(to: CGPoint(x: 50, y: 2.75), controlPoint1: CGPoint(x: 47.72, y: 2.14), controlPoint2: CGPoint(x: 48.77, y: 2.59))
        bezier4Path.addCurve(to: CGPoint(x: 49.72, y: 5.97), controlPoint1: CGPoint(x: 49.94, y: 3.83), controlPoint2: CGPoint(x: 49.85, y: 4.91))
        bezier4Path.addCurve(to: CGPoint(x: 46.61, y: 6.67), controlPoint1: CGPoint(x: 48.48, y: 5.92), controlPoint2: CGPoint(x: 47.37, y: 6.18))
        bezier4Path.addCurve(to: CGPoint(x: 46.09, y: 9.68), controlPoint1: CGPoint(x: 46.47, y: 7.68), controlPoint2: CGPoint(x: 46.3, y: 8.69))
        bezier4Path.addCurve(to: CGPoint(x: 48.77, y: 11.39), controlPoint1: CGPoint(x: 46.63, y: 10.4), controlPoint2: CGPoint(x: 47.59, y: 11.02))
        bezier4Path.addCurve(to: CGPoint(x: 47.94, y: 14.52), controlPoint1: CGPoint(x: 48.53, y: 12.45), controlPoint2: CGPoint(x: 48.25, y: 13.49))
        bezier4Path.addCurve(to: CGPoint(x: 44.76, y: 14.66), controlPoint1: CGPoint(x: 46.73, y: 14.25), controlPoint2: CGPoint(x: 45.59, y: 14.31))
        bezier4Path.addCurve(to: CGPoint(x: 43.71, y: 17.54), controlPoint1: CGPoint(x: 44.44, y: 15.63), controlPoint2: CGPoint(x: 44.09, y: 16.59))
        bezier4Path.addCurve(to: CGPoint(x: 46.05, y: 19.69), controlPoint1: CGPoint(x: 44.12, y: 18.34), controlPoint2: CGPoint(x: 44.95, y: 19.12))
        bezier4Path.addCurve(to: CGPoint(x: 44.69, y: 22.62), controlPoint1: CGPoint(x: 45.63, y: 20.68), controlPoint2: CGPoint(x: 45.17, y: 21.66))
        bezier4Path.addCurve(to: CGPoint(x: 41.53, y: 22.21), controlPoint1: CGPoint(x: 43.54, y: 22.15), controlPoint2: CGPoint(x: 42.41, y: 22.01))
        bezier4Path.addCurve(to: CGPoint(x: 40, y: 24.85), controlPoint1: CGPoint(x: 41.04, y: 23.11), controlPoint2: CGPoint(x: 40.53, y: 23.99))
        bezier4Path.addCurve(to: CGPoint(x: 41.93, y: 27.38), controlPoint1: CGPoint(x: 40.26, y: 25.72), controlPoint2: CGPoint(x: 40.95, y: 26.63))
        bezier4Path.addCurve(to: CGPoint(x: 40.07, y: 30.03), controlPoint1: CGPoint(x: 41.34, y: 28.29), controlPoint2: CGPoint(x: 40.72, y: 29.17))
        bezier4Path.addCurve(to: CGPoint(x: 37.03, y: 29.09), controlPoint1: CGPoint(x: 39.02, y: 29.37), controlPoint2: CGPoint(x: 37.93, y: 29.04))
        bezier4Path.addCurve(to: CGPoint(x: 35.07, y: 31.41), controlPoint1: CGPoint(x: 36.4, y: 29.88), controlPoint2: CGPoint(x: 35.75, y: 30.66))
        bezier4Path.addCurve(to: CGPoint(x: 36.53, y: 34.25), controlPoint1: CGPoint(x: 35.18, y: 32.31), controlPoint2: CGPoint(x: 35.69, y: 33.33))
        bezier4Path.addCurve(to: CGPoint(x: 34.25, y: 36.53), controlPoint1: CGPoint(x: 35.8, y: 35.03), controlPoint2: CGPoint(x: 35.03, y: 35.8))
        bezier4Path.addCurve(to: CGPoint(x: 31.41, y: 35.07), controlPoint1: CGPoint(x: 33.33, y: 35.7), controlPoint2: CGPoint(x: 32.31, y: 35.18))
        bezier4Path.addCurve(to: CGPoint(x: 29.09, y: 37.03), controlPoint1: CGPoint(x: 30.66, y: 35.75), controlPoint2: CGPoint(x: 29.88, y: 36.4))
        bezier4Path.addCurve(to: CGPoint(x: 30.03, y: 40.07), controlPoint1: CGPoint(x: 29.04, y: 37.93), controlPoint2: CGPoint(x: 29.37, y: 39.02))
        bezier4Path.addCurve(to: CGPoint(x: 27.39, y: 41.93), controlPoint1: CGPoint(x: 29.17, y: 40.72), controlPoint2: CGPoint(x: 28.29, y: 41.34))
        bezier4Path.addCurve(to: CGPoint(x: 24.85, y: 40), controlPoint1: CGPoint(x: 26.63, y: 40.95), controlPoint2: CGPoint(x: 25.72, y: 40.26))
        bezier4Path.addCurve(to: CGPoint(x: 22.21, y: 41.53), controlPoint1: CGPoint(x: 23.99, y: 40.53), controlPoint2: CGPoint(x: 23.11, y: 41.04))
        bezier4Path.addCurve(to: CGPoint(x: 22.62, y: 44.69), controlPoint1: CGPoint(x: 22.01, y: 42.41), controlPoint2: CGPoint(x: 22.15, y: 43.54))
        bezier4Path.addCurve(to: CGPoint(x: 19.69, y: 46.05), controlPoint1: CGPoint(x: 21.66, y: 45.17), controlPoint2: CGPoint(x: 20.68, y: 45.63))
        bezier4Path.addCurve(to: CGPoint(x: 17.54, y: 43.71), controlPoint1: CGPoint(x: 19.12, y: 44.95), controlPoint2: CGPoint(x: 18.34, y: 44.12))
        bezier4Path.addCurve(to: CGPoint(x: 14.66, y: 44.76), controlPoint1: CGPoint(x: 16.59, y: 44.09), controlPoint2: CGPoint(x: 15.63, y: 44.44))
        bezier4Path.addCurve(to: CGPoint(x: 14.52, y: 47.94), controlPoint1: CGPoint(x: 14.31, y: 45.59), controlPoint2: CGPoint(x: 14.25, y: 46.73))
        bezier4Path.addCurve(to: CGPoint(x: 11.39, y: 48.77), controlPoint1: CGPoint(x: 13.49, y: 48.25), controlPoint2: CGPoint(x: 12.45, y: 48.53))
        bezier4Path.addCurve(to: CGPoint(x: 9.68, y: 46.09), controlPoint1: CGPoint(x: 11.02, y: 47.59), controlPoint2: CGPoint(x: 10.4, y: 46.63))
        bezier4Path.addCurve(to: CGPoint(x: 6.67, y: 46.61), controlPoint1: CGPoint(x: 8.69, y: 46.29), controlPoint2: CGPoint(x: 7.68, y: 46.47))
        bezier4Path.addCurve(to: CGPoint(x: 5.97, y: 49.72), controlPoint1: CGPoint(x: 6.18, y: 47.37), controlPoint2: CGPoint(x: 5.92, y: 48.48))
        bezier4Path.addCurve(to: CGPoint(x: 2.75, y: 50), controlPoint1: CGPoint(x: 4.91, y: 49.85), controlPoint2: CGPoint(x: 3.83, y: 49.94))
        bezier4Path.addCurve(to: CGPoint(x: 1.52, y: 47.06), controlPoint1: CGPoint(x: 2.59, y: 48.77), controlPoint2: CGPoint(x: 2.14, y: 47.72))
        bezier4Path.addCurve(to: CGPoint(x: 0, y: 47.08), controlPoint1: CGPoint(x: 1.01, y: 47.08), controlPoint2: CGPoint(x: 0.51, y: 47.08))
        bezier4Path.addCurve(to: CGPoint(x: -1.52, y: 47.06), controlPoint1: CGPoint(x: -0.51, y: 47.08), controlPoint2: CGPoint(x: -1.01, y: 47.08))
        bezier4Path.addCurve(to: CGPoint(x: -2.75, y: 50), controlPoint1: CGPoint(x: -2.14, y: 47.72), controlPoint2: CGPoint(x: -2.59, y: 48.77))
        bezier4Path.addCurve(to: CGPoint(x: -5.97, y: 49.72), controlPoint1: CGPoint(x: -3.83, y: 49.94), controlPoint2: CGPoint(x: -4.91, y: 49.85))
        bezier4Path.addCurve(to: CGPoint(x: -6.67, y: 46.61), controlPoint1: CGPoint(x: -5.92, y: 48.48), controlPoint2: CGPoint(x: -6.18, y: 47.37))
        bezier4Path.addCurve(to: CGPoint(x: -9.68, y: 46.09), controlPoint1: CGPoint(x: -7.68, y: 46.47), controlPoint2: CGPoint(x: -8.69, y: 46.29))
        bezier4Path.addCurve(to: CGPoint(x: -11.39, y: 48.77), controlPoint1: CGPoint(x: -10.4, y: 46.63), controlPoint2: CGPoint(x: -11.02, y: 47.59))
        bezier4Path.addCurve(to: CGPoint(x: -14.52, y: 47.94), controlPoint1: CGPoint(x: -12.45, y: 48.53), controlPoint2: CGPoint(x: -13.49, y: 48.25))
        bezier4Path.addCurve(to: CGPoint(x: -14.66, y: 44.76), controlPoint1: CGPoint(x: -14.25, y: 46.73), controlPoint2: CGPoint(x: -14.31, y: 45.59))
        bezier4Path.addCurve(to: CGPoint(x: -17.54, y: 43.71), controlPoint1: CGPoint(x: -15.63, y: 44.44), controlPoint2: CGPoint(x: -16.59, y: 44.09))
        bezier4Path.addCurve(to: CGPoint(x: -19.69, y: 46.05), controlPoint1: CGPoint(x: -18.34, y: 44.12), controlPoint2: CGPoint(x: -19.12, y: 44.95))
        bezier4Path.addCurve(to: CGPoint(x: -22.62, y: 44.69), controlPoint1: CGPoint(x: -20.68, y: 45.63), controlPoint2: CGPoint(x: -21.66, y: 45.17))
        bezier4Path.addCurve(to: CGPoint(x: -22.21, y: 41.53), controlPoint1: CGPoint(x: -22.15, y: 43.54), controlPoint2: CGPoint(x: -22.01, y: 42.41))
        bezier4Path.addCurve(to: CGPoint(x: -24.85, y: 40), controlPoint1: CGPoint(x: -23.11, y: 41.04), controlPoint2: CGPoint(x: -23.99, y: 40.53))
        bezier4Path.addCurve(to: CGPoint(x: -27.38, y: 41.93), controlPoint1: CGPoint(x: -25.72, y: 40.26), controlPoint2: CGPoint(x: -26.63, y: 40.95))
        bezier4Path.addCurve(to: CGPoint(x: -30.03, y: 40.07), controlPoint1: CGPoint(x: -28.29, y: 41.34), controlPoint2: CGPoint(x: -29.17, y: 40.72))
        bezier4Path.addCurve(to: CGPoint(x: -29.09, y: 37.03), controlPoint1: CGPoint(x: -29.37, y: 39.02), controlPoint2: CGPoint(x: -29.04, y: 37.93))
        bezier4Path.addCurve(to: CGPoint(x: -31.41, y: 35.07), controlPoint1: CGPoint(x: -29.88, y: 36.4), controlPoint2: CGPoint(x: -30.66, y: 35.75))
        bezier4Path.addCurve(to: CGPoint(x: -34.25, y: 36.53), controlPoint1: CGPoint(x: -32.31, y: 35.18), controlPoint2: CGPoint(x: -33.33, y: 35.7))
        bezier4Path.addCurve(to: CGPoint(x: -36.53, y: 34.25), controlPoint1: CGPoint(x: -35.03, y: 35.8), controlPoint2: CGPoint(x: -35.8, y: 35.03))
        bezier4Path.addCurve(to: CGPoint(x: -35.07, y: 31.41), controlPoint1: CGPoint(x: -35.7, y: 33.33), controlPoint2: CGPoint(x: -35.18, y: 32.31))
        bezier4Path.addCurve(to: CGPoint(x: -37.03, y: 29.09), controlPoint1: CGPoint(x: -35.75, y: 30.66), controlPoint2: CGPoint(x: -36.4, y: 29.88))
        bezier4Path.addCurve(to: CGPoint(x: -40.07, y: 30.03), controlPoint1: CGPoint(x: -37.93, y: 29.04), controlPoint2: CGPoint(x: -39.02, y: 29.37))
        bezier4Path.addCurve(to: CGPoint(x: -41.93, y: 27.38), controlPoint1: CGPoint(x: -40.72, y: 29.17), controlPoint2: CGPoint(x: -41.34, y: 28.29))
        bezier4Path.addCurve(to: CGPoint(x: -40, y: 24.85), controlPoint1: CGPoint(x: -40.95, y: 26.63), controlPoint2: CGPoint(x: -40.26, y: 25.72))
        bezier4Path.addCurve(to: CGPoint(x: -41.53, y: 22.21), controlPoint1: CGPoint(x: -40.53, y: 23.99), controlPoint2: CGPoint(x: -41.04, y: 23.11))
        bezier4Path.addCurve(to: CGPoint(x: -44.69, y: 22.62), controlPoint1: CGPoint(x: -42.41, y: 22.01), controlPoint2: CGPoint(x: -43.54, y: 22.15))
        bezier4Path.addCurve(to: CGPoint(x: -46.05, y: 19.69), controlPoint1: CGPoint(x: -45.17, y: 21.66), controlPoint2: CGPoint(x: -45.63, y: 20.68))
        bezier4Path.addCurve(to: CGPoint(x: -43.71, y: 17.54), controlPoint1: CGPoint(x: -44.95, y: 19.12), controlPoint2: CGPoint(x: -44.12, y: 18.34))
        bezier4Path.addCurve(to: CGPoint(x: -44.76, y: 14.66), controlPoint1: CGPoint(x: -44.09, y: 16.59), controlPoint2: CGPoint(x: -44.44, y: 15.63))
        bezier4Path.addCurve(to: CGPoint(x: -47.94, y: 14.52), controlPoint1: CGPoint(x: -45.59, y: 14.31), controlPoint2: CGPoint(x: -46.73, y: 14.25))
        bezier4Path.addCurve(to: CGPoint(x: -48.77, y: 11.39), controlPoint1: CGPoint(x: -48.25, y: 13.49), controlPoint2: CGPoint(x: -48.53, y: 12.45))
        bezier4Path.addCurve(to: CGPoint(x: -46.09, y: 9.68), controlPoint1: CGPoint(x: -47.59, y: 11.02), controlPoint2: CGPoint(x: -46.63, y: 10.4))
        bezier4Path.addCurve(to: CGPoint(x: -46.61, y: 6.67), controlPoint1: CGPoint(x: -46.29, y: 8.69), controlPoint2: CGPoint(x: -46.47, y: 7.68))
        bezier4Path.addCurve(to: CGPoint(x: -49.72, y: 5.97), controlPoint1: CGPoint(x: -47.37, y: 6.18), controlPoint2: CGPoint(x: -48.48, y: 5.92))
        bezier4Path.addCurve(to: CGPoint(x: -50, y: 2.75), controlPoint1: CGPoint(x: -49.85, y: 4.91), controlPoint2: CGPoint(x: -49.94, y: 3.83))
        bezier4Path.addCurve(to: CGPoint(x: -47.06, y: 1.52), controlPoint1: CGPoint(x: -48.77, y: 2.59), controlPoint2: CGPoint(x: -47.72, y: 2.14))
        bezier4Path.addCurve(to: CGPoint(x: -47.08, y: 0), controlPoint1: CGPoint(x: -47.08, y: 1.01), controlPoint2: CGPoint(x: -47.08, y: 0.51))
        bezier4Path.addCurve(to: CGPoint(x: -47.06, y: -1.52), controlPoint1: CGPoint(x: -47.08, y: -0.51), controlPoint2: CGPoint(x: -47.08, y: -1.01))
        bezier4Path.addCurve(to: CGPoint(x: -50, y: -2.75), controlPoint1: CGPoint(x: -47.72, y: -2.14), controlPoint2: CGPoint(x: -48.77, y: -2.59))
        bezier4Path.addCurve(to: CGPoint(x: -49.72, y: -5.97), controlPoint1: CGPoint(x: -49.94, y: -3.83), controlPoint2: CGPoint(x: -49.85, y: -4.91))
        bezier4Path.addCurve(to: CGPoint(x: -46.61, y: -6.67), controlPoint1: CGPoint(x: -48.48, y: -5.92), controlPoint2: CGPoint(x: -47.37, y: -6.18))
        bezier4Path.addCurve(to: CGPoint(x: -46.09, y: -9.68), controlPoint1: CGPoint(x: -46.47, y: -7.68), controlPoint2: CGPoint(x: -46.29, y: -8.69))
        bezier4Path.addCurve(to: CGPoint(x: -48.77, y: -11.39), controlPoint1: CGPoint(x: -46.63, y: -10.4), controlPoint2: CGPoint(x: -47.59, y: -11.02))
        bezier4Path.addCurve(to: CGPoint(x: -47.94, y: -14.52), controlPoint1: CGPoint(x: -48.53, y: -12.45), controlPoint2: CGPoint(x: -48.25, y: -13.49))
        bezier4Path.addCurve(to: CGPoint(x: -44.76, y: -14.66), controlPoint1: CGPoint(x: -46.73, y: -14.25), controlPoint2: CGPoint(x: -45.59, y: -14.31))
        bezier4Path.addCurve(to: CGPoint(x: -43.71, y: -17.54), controlPoint1: CGPoint(x: -44.44, y: -15.63), controlPoint2: CGPoint(x: -44.09, y: -16.59))
        bezier4Path.addCurve(to: CGPoint(x: -46.05, y: -19.69), controlPoint1: CGPoint(x: -44.12, y: -18.34), controlPoint2: CGPoint(x: -44.95, y: -19.12))
        bezier4Path.addCurve(to: CGPoint(x: -44.69, y: -22.62), controlPoint1: CGPoint(x: -45.63, y: -20.68), controlPoint2: CGPoint(x: -45.17, y: -21.66))
        bezier4Path.addCurve(to: CGPoint(x: -41.53, y: -22.21), controlPoint1: CGPoint(x: -43.54, y: -22.15), controlPoint2: CGPoint(x: -42.41, y: -22.01))
        bezier4Path.addCurve(to: CGPoint(x: -40, y: -24.85), controlPoint1: CGPoint(x: -41.04, y: -23.11), controlPoint2: CGPoint(x: -40.53, y: -23.99))
        bezier4Path.addCurve(to: CGPoint(x: -41.93, y: -27.39), controlPoint1: CGPoint(x: -40.26, y: -25.72), controlPoint2: CGPoint(x: -40.95, y: -26.63))
        bezier4Path.addCurve(to: CGPoint(x: -40.07, y: -30.03), controlPoint1: CGPoint(x: -41.34, y: -28.29), controlPoint2: CGPoint(x: -40.72, y: -29.17))
        bezier4Path.addCurve(to: CGPoint(x: -37.03, y: -29.09), controlPoint1: CGPoint(x: -39.02, y: -29.37), controlPoint2: CGPoint(x: -37.93, y: -29.04))
        bezier4Path.addCurve(to: CGPoint(x: -35.07, y: -31.41), controlPoint1: CGPoint(x: -36.4, y: -29.88), controlPoint2: CGPoint(x: -35.75, y: -30.66))
        bezier4Path.addCurve(to: CGPoint(x: -36.53, y: -34.25), controlPoint1: CGPoint(x: -35.18, y: -32.31), controlPoint2: CGPoint(x: -35.7, y: -33.33))
        bezier4Path.addCurve(to: CGPoint(x: -34.25, y: -36.53), controlPoint1: CGPoint(x: -35.8, y: -35.03), controlPoint2: CGPoint(x: -35.03, y: -35.8))
        bezier4Path.addCurve(to: CGPoint(x: -31.41, y: -35.07), controlPoint1: CGPoint(x: -33.33, y: -35.69), controlPoint2: CGPoint(x: -32.31, y: -35.18))
        bezier4Path.addCurve(to: CGPoint(x: -29.09, y: -37.03), controlPoint1: CGPoint(x: -30.66, y: -35.75), controlPoint2: CGPoint(x: -29.88, y: -36.4))
        bezier4Path.addCurve(to: CGPoint(x: -30.03, y: -40.07), controlPoint1: CGPoint(x: -29.04, y: -37.93), controlPoint2: CGPoint(x: -29.37, y: -39.02))
        bezier4Path.addCurve(to: CGPoint(x: -27.38, y: -41.93), controlPoint1: CGPoint(x: -29.17, y: -40.72), controlPoint2: CGPoint(x: -28.29, y: -41.34))
        bezier4Path.addCurve(to: CGPoint(x: -24.85, y: -40), controlPoint1: CGPoint(x: -26.63, y: -40.95), controlPoint2: CGPoint(x: -25.72, y: -40.26))
        bezier4Path.addCurve(to: CGPoint(x: -22.21, y: -41.53), controlPoint1: CGPoint(x: -23.99, y: -40.53), controlPoint2: CGPoint(x: -23.11, y: -41.04))
        bezier4Path.addCurve(to: CGPoint(x: -22.62, y: -44.69), controlPoint1: CGPoint(x: -22.01, y: -42.41), controlPoint2: CGPoint(x: -22.15, y: -43.54))
        bezier4Path.addCurve(to: CGPoint(x: -19.69, y: -46.05), controlPoint1: CGPoint(x: -21.66, y: -45.17), controlPoint2: CGPoint(x: -20.68, y: -45.63))
        bezier4Path.addCurve(to: CGPoint(x: -17.54, y: -43.71), controlPoint1: CGPoint(x: -19.12, y: -44.95), controlPoint2: CGPoint(x: -18.34, y: -44.12))
        bezier4Path.addCurve(to: CGPoint(x: -14.66, y: -44.76), controlPoint1: CGPoint(x: -16.59, y: -44.09), controlPoint2: CGPoint(x: -15.63, y: -44.44))
        bezier4Path.addCurve(to: CGPoint(x: -14.52, y: -47.94), controlPoint1: CGPoint(x: -14.31, y: -45.59), controlPoint2: CGPoint(x: -14.25, y: -46.73))
        bezier4Path.addCurve(to: CGPoint(x: -11.39, y: -48.77), controlPoint1: CGPoint(x: -13.49, y: -48.25), controlPoint2: CGPoint(x: -12.45, y: -48.53))
        bezier4Path.addCurve(to: CGPoint(x: -9.68, y: -46.09), controlPoint1: CGPoint(x: -11.02, y: -47.59), controlPoint2: CGPoint(x: -10.4, y: -46.63))
        bezier4Path.addCurve(to: CGPoint(x: -6.67, y: -46.61), controlPoint1: CGPoint(x: -8.69, y: -46.3), controlPoint2: CGPoint(x: -7.68, y: -46.47))
        bezier4Path.addCurve(to: CGPoint(x: -5.97, y: -49.72), controlPoint1: CGPoint(x: -6.18, y: -47.37), controlPoint2: CGPoint(x: -5.92, y: -48.48))
        bezier4Path.addCurve(to: CGPoint(x: -2.75, y: -50), controlPoint1: CGPoint(x: -4.91, y: -49.85), controlPoint2: CGPoint(x: -3.83, y: -49.94))
        bezier4Path.addCurve(to: CGPoint(x: -1.52, y: -47.06), controlPoint1: CGPoint(x: -2.59, y: -48.77), controlPoint2: CGPoint(x: -2.14, y: -47.72))
        bezier4Path.addCurve(to: CGPoint(x: 0, y: -47.08), controlPoint1: CGPoint(x: -1.01, y: -47.08), controlPoint2: CGPoint(x: -0.51, y: -47.08))
        bezier4Path.addCurve(to: CGPoint(x: 1.52, y: -47.06), controlPoint1: CGPoint(x: 0.51, y: -47.08), controlPoint2: CGPoint(x: 1.01, y: -47.08))
        bezier4Path.addCurve(to: CGPoint(x: 2.75, y: -50), controlPoint1: CGPoint(x: 2.14, y: -47.72), controlPoint2: CGPoint(x: 2.59, y: -48.77))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: -1.99, y: 37.7))
        bezier4Path.addCurve(to: CGPoint(x: -1.99, y: 41.68), controlPoint1: CGPoint(x: -3.09, y: 38.8), controlPoint2: CGPoint(x: -3.09, y: 40.58))
        bezier4Path.addCurve(to: CGPoint(x: 1.99, y: 41.68), controlPoint1: CGPoint(x: -0.89, y: 42.77), controlPoint2: CGPoint(x: 0.89, y: 42.77))
        bezier4Path.addCurve(to: CGPoint(x: 1.99, y: 37.7), controlPoint1: CGPoint(x: 3.09, y: 40.58), controlPoint2: CGPoint(x: 3.09, y: 38.8))
        bezier4Path.addCurve(to: CGPoint(x: -1.99, y: 37.7), controlPoint1: CGPoint(x: 0.89, y: 36.6), controlPoint2: CGPoint(x: -0.89, y: 36.6))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: 0, y: -42.5))
        bezier4Path.addCurve(to: CGPoint(x: -19.24, y: -37.91), controlPoint1: CGPoint(x: -6.92, y: -42.5), controlPoint2: CGPoint(x: -13.46, y: -40.84))
        bezier4Path.addLine(to: CGPoint(x: -15.84, y: -31.22))
        bezier4Path.addCurve(to: CGPoint(x: -24.79, y: -24.71), controlPoint1: CGPoint(x: -19.17, y: -29.53), controlPoint2: CGPoint(x: -22.18, y: -27.32))
        bezier4Path.addLine(to: CGPoint(x: -30.1, y: -30))
        bezier4Path.addCurve(to: CGPoint(x: -42.5, y: 0), controlPoint1: CGPoint(x: -37.76, y: -22.32), controlPoint2: CGPoint(x: -42.5, y: -11.71))
        bezier4Path.addCurve(to: CGPoint(x: -41.99, y: 6.58), controlPoint1: CGPoint(x: -42.5, y: 2.24), controlPoint2: CGPoint(x: -42.33, y: 4.44))
        bezier4Path.addLine(to: CGPoint(x: -34.58, y: 5.42))
        bezier4Path.addCurve(to: CGPoint(x: -31.17, y: 15.94), controlPoint1: CGPoint(x: -34, y: 9.16), controlPoint2: CGPoint(x: -32.83, y: 12.7))
        bezier4Path.addLine(to: CGPoint(x: -37.84, y: 19.36))
        bezier4Path.addCurve(to: CGPoint(x: -6.72, y: 41.97), controlPoint1: CGPoint(x: -31.78, y: 31.19), controlPoint2: CGPoint(x: -20.32, y: 39.81))
        bezier4Path.addLine(to: CGPoint(x: -5.53, y: 34.57))
        bezier4Path.addCurve(to: CGPoint(x: 0, y: 35), controlPoint1: CGPoint(x: -3.73, y: 34.85), controlPoint2: CGPoint(x: -1.88, y: 35))
        bezier4Path.addCurve(to: CGPoint(x: 5.53, y: 34.57), controlPoint1: CGPoint(x: 1.88, y: 35), controlPoint2: CGPoint(x: 3.73, y: 34.85))
        bezier4Path.addLine(to: CGPoint(x: 6.72, y: 41.97))
        bezier4Path.addCurve(to: CGPoint(x: 37.85, y: 19.36), controlPoint1: CGPoint(x: 20.32, y: 39.81), controlPoint2: CGPoint(x: 31.78, y: 31.19))
        bezier4Path.addLine(to: CGPoint(x: 31.17, y: 15.94))
        bezier4Path.addCurve(to: CGPoint(x: 34.58, y: 5.42), controlPoint1: CGPoint(x: 32.83, y: 12.7), controlPoint2: CGPoint(x: 34, y: 9.16))
        bezier4Path.addLine(to: CGPoint(x: 41.99, y: 6.58))
        bezier4Path.addCurve(to: CGPoint(x: 42.5, y: 0), controlPoint1: CGPoint(x: 42.33, y: 4.44), controlPoint2: CGPoint(x: 42.5, y: 2.24))
        bezier4Path.addCurve(to: CGPoint(x: 30.1, y: -30), controlPoint1: CGPoint(x: 42.5, y: -11.71), controlPoint2: CGPoint(x: 37.76, y: -22.32))
        bezier4Path.addLine(to: CGPoint(x: 24.79, y: -24.71))
        bezier4Path.addCurve(to: CGPoint(x: 15.84, y: -31.22), controlPoint1: CGPoint(x: 22.18, y: -27.32), controlPoint2: CGPoint(x: 19.17, y: -29.53))
        bezier4Path.addLine(to: CGPoint(x: 19.24, y: -37.91))
        bezier4Path.addCurve(to: CGPoint(x: 0, y: -42.5), controlPoint1: CGPoint(x: 13.46, y: -40.84), controlPoint2: CGPoint(x: 6.92, y: -42.5))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: -38.61, y: 9.59))
        bezier4Path.addCurve(to: CGPoint(x: -40.42, y: 13.13), controlPoint1: CGPoint(x: -40.09, y: 10.07), controlPoint2: CGPoint(x: -40.9, y: 11.66))
        bezier4Path.addCurve(to: CGPoint(x: -36.88, y: 14.94), controlPoint1: CGPoint(x: -39.94, y: 14.61), controlPoint2: CGPoint(x: -38.35, y: 15.42))
        bezier4Path.addCurve(to: CGPoint(x: -35.07, y: 11.39), controlPoint1: CGPoint(x: -35.4, y: 14.46), controlPoint2: CGPoint(x: -34.59, y: 12.87))
        bezier4Path.addCurve(to: CGPoint(x: -38.61, y: 9.59), controlPoint1: CGPoint(x: -35.55, y: 9.92), controlPoint2: CGPoint(x: -37.14, y: 9.11))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: 35.07, y: 11.39))
        bezier4Path.addCurve(to: CGPoint(x: 36.88, y: 14.94), controlPoint1: CGPoint(x: 34.59, y: 12.87), controlPoint2: CGPoint(x: 35.4, y: 14.46))
        bezier4Path.addCurve(to: CGPoint(x: 40.42, y: 13.13), controlPoint1: CGPoint(x: 38.35, y: 15.42), controlPoint2: CGPoint(x: 39.94, y: 14.61))
        bezier4Path.addCurve(to: CGPoint(x: 38.61, y: 9.59), controlPoint1: CGPoint(x: 40.9, y: 11.66), controlPoint2: CGPoint(x: 40.09, y: 10.07))
        bezier4Path.addCurve(to: CGPoint(x: 35.07, y: 11.39), controlPoint1: CGPoint(x: 37.14, y: 9.11), controlPoint2: CGPoint(x: 35.55, y: 9.92))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: 21.05, y: -33.76))
        bezier4Path.addCurve(to: CGPoint(x: 21.67, y: -29.83), controlPoint1: CGPoint(x: 20.14, y: -32.5), controlPoint2: CGPoint(x: 20.42, y: -30.75))
        bezier4Path.addCurve(to: CGPoint(x: 25.6, y: -30.45), controlPoint1: CGPoint(x: 22.93, y: -28.92), controlPoint2: CGPoint(x: 24.69, y: -29.2))
        bezier4Path.addCurve(to: CGPoint(x: 24.98, y: -34.38), controlPoint1: CGPoint(x: 26.52, y: -31.71), controlPoint2: CGPoint(x: 26.24, y: -33.47))
        bezier4Path.addCurve(to: CGPoint(x: 21.05, y: -33.76), controlPoint1: CGPoint(x: 23.72, y: -35.3), controlPoint2: CGPoint(x: 21.97, y: -35.02))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: -24.98, y: -34.38))
        bezier4Path.addCurve(to: CGPoint(x: -25.6, y: -30.45), controlPoint1: CGPoint(x: -26.24, y: -33.47), controlPoint2: CGPoint(x: -26.52, y: -31.71))
        bezier4Path.addCurve(to: CGPoint(x: -21.67, y: -29.83), controlPoint1: CGPoint(x: -24.69, y: -29.2), controlPoint2: CGPoint(x: -22.93, y: -28.92))
        bezier4Path.addCurve(to: CGPoint(x: -21.05, y: -33.76), controlPoint1: CGPoint(x: -20.42, y: -30.75), controlPoint2: CGPoint(x: -20.14, y: -32.5))
        bezier4Path.addCurve(to: CGPoint(x: -24.98, y: -34.38), controlPoint1: CGPoint(x: -21.97, y: -35.02), controlPoint2: CGPoint(x: -23.72, y: -35.3))
        bezier4Path.close()
        blackFill.setFill()
        bezier4Path.fill()

        context.restoreGState()
        context.restoreGState()
    }
}
