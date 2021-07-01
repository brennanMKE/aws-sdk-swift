// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDetectorOutputResponseBody: Equatable {
    public let detector: Detector?
}

extension DescribeDetectorOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case detector
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let detectorDecoded = try containerValues.decodeIfPresent(Detector.self, forKey: .detector)
        detector = detectorDecoded
    }
}