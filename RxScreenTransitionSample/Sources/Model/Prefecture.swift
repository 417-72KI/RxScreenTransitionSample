//
//  Prefecture.swift
//  RxScreenTransitionSample
//
//  Created by 417.72KI on 2019/02/20.
//  Copyright © 2019 417.72KI. All rights reserved.
//

import Foundation

enum Prefecture: CaseIterable {
    case hokkaido
    case aomori
    case iwate
    case miyagi
    case akita
    case yamagata
    case fukushima
    case ibaraki
    case tochigi
    case gunma
    case saitama
    case chiba
    case tokyo
    case kanagawa
    case niigata
    case toyama
    case ishikawa
    case fukui
    case yamanashi
    case nagano
    case gifu
    case shizuoka
    case aichi
    case mie
    case shiga
    case kyoto
    case osaka
    case hyogo
    case nara
    case wakayama
    case tottori
    case shimane
    case okayama
    case hiroshima
    case yamaguchi
    case tokushima
    case kagawa
    case ehime
    case kochi
    case fukuoka
    case saga
    case nagasaki
    case kumamoto
    case oita
    case miyazaki
    case kagoshima
    case okinawa
}

extension Prefecture {
    var localizedValue: String {
        switch self {
        case .hokkaido:
            return R.string.prefecture.hokkaido()
        case .aomori:
            return R.string.prefecture.aomori()
        case .iwate:
            return R.string.prefecture.iwate()
        case .miyagi:
            return R.string.prefecture.miyagi()
        case .akita:
            return R.string.prefecture.akita()
        case .yamagata:
            return R.string.prefecture.yamagata()
        case .fukushima:
            return R.string.prefecture.fukushima()
        case .ibaraki:
            return R.string.prefecture.ibaraki()
        case .tochigi:
            return R.string.prefecture.tochigi()
        case .gunma:
            return R.string.prefecture.gunma()
        case .saitama:
            return R.string.prefecture.saitama()
        case .chiba:
            return R.string.prefecture.chiba()
        case .tokyo:
            return R.string.prefecture.tokyo()
        case .kanagawa:
            return R.string.prefecture.kanagawa()
        case .niigata:
            return R.string.prefecture.niigata()
        case .toyama:
            return R.string.prefecture.toyama()
        case .ishikawa:
            return R.string.prefecture.ishikawa()
        case .fukui:
            return R.string.prefecture.fukui()
        case .yamanashi:
            return R.string.prefecture.yamanashi()
        case .nagano:
            return R.string.prefecture.nagano()
        case .gifu:
            return R.string.prefecture.gifu()
        case .shizuoka:
            return R.string.prefecture.shizuoka()
        case .aichi:
            return R.string.prefecture.aichi()
        case .mie:
            return R.string.prefecture.mie()
        case .shiga:
            return R.string.prefecture.shiga()
        case .kyoto:
            return R.string.prefecture.kyoto()
        case .osaka:
            return R.string.prefecture.osaka()
        case .hyogo:
            return R.string.prefecture.hyogo()
        case .nara:
            return R.string.prefecture.nara()
        case .wakayama:
            return R.string.prefecture.wakayama()
        case .tottori:
            return R.string.prefecture.tottori()
        case .shimane:
            return R.string.prefecture.shimane()
        case .okayama:
            return R.string.prefecture.okayama()
        case .hiroshima:
            return R.string.prefecture.hiroshima()
        case .yamaguchi:
            return R.string.prefecture.yamaguchi()
        case .tokushima:
            return R.string.prefecture.tokushima()
        case .kagawa:
            return R.string.prefecture.kagawa()
        case .ehime:
            return R.string.prefecture.ehime()
        case .kochi:
            return R.string.prefecture.kochi()
        case .fukuoka:
            return R.string.prefecture.fukuoka()
        case .saga:
            return R.string.prefecture.saga()
        case .nagasaki:
            return R.string.prefecture.nagasaki()
        case .kumamoto:
            return R.string.prefecture.kumamoto()
        case .oita:
            return R.string.prefecture.oita()
        case .miyazaki:
            return R.string.prefecture.miyazaki()
        case .kagoshima:
            return R.string.prefecture.kagoshima()
        case .okinawa:
            return R.string.prefecture.okinawa()
        }
    }
}
