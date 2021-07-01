// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateCustomRoutingAcceleratorAttributesInputBody: Equatable {
    public let acceleratorArn: String?
    public let flowLogsEnabled: Bool?
    public let flowLogsS3Bucket: String?
    public let flowLogsS3Prefix: String?
}

extension UpdateCustomRoutingAcceleratorAttributesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acceleratorArn = "AcceleratorArn"
        case flowLogsEnabled = "FlowLogsEnabled"
        case flowLogsS3Bucket = "FlowLogsS3Bucket"
        case flowLogsS3Prefix = "FlowLogsS3Prefix"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let acceleratorArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acceleratorArn)
        acceleratorArn = acceleratorArnDecoded
        let flowLogsEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .flowLogsEnabled)
        flowLogsEnabled = flowLogsEnabledDecoded
        let flowLogsS3BucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowLogsS3Bucket)
        flowLogsS3Bucket = flowLogsS3BucketDecoded
        let flowLogsS3PrefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowLogsS3Prefix)
        flowLogsS3Prefix = flowLogsS3PrefixDecoded
    }
}