// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImageScanningConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case scanOnPush
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if scanOnPush != false {
            try encodeContainer.encode(scanOnPush, forKey: .scanOnPush)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let scanOnPushDecoded = try containerValues.decode(Bool.self, forKey: .scanOnPush)
        scanOnPush = scanOnPushDecoded
    }
}