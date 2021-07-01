// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EndPoint: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case kinesisStreamConfig = "KinesisStreamConfig"
        case streamType = "StreamType"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let kinesisStreamConfig = kinesisStreamConfig {
            try container.encode(kinesisStreamConfig, forKey: Key("kinesisStreamConfig"))
        }
        if let streamType = streamType {
            try container.encode(streamType, forKey: Key("streamType"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamType)
        streamType = streamTypeDecoded
        let kinesisStreamConfigDecoded = try containerValues.decodeIfPresent(KinesisStreamConfig.self, forKey: .kinesisStreamConfig)
        kinesisStreamConfig = kinesisStreamConfigDecoded
    }
}