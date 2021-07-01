// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeLoggingStatusOutputResponseBody: Equatable {
    public let loggingEnabled: Bool
    public let bucketName: String?
    public let s3KeyPrefix: String?
    public let lastSuccessfulDeliveryTime: Date?
    public let lastFailureTime: Date?
    public let lastFailureMessage: String?
}

extension DescribeLoggingStatusOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case bucketName = "BucketName"
        case lastFailureMessage = "LastFailureMessage"
        case lastFailureTime = "LastFailureTime"
        case lastSuccessfulDeliveryTime = "LastSuccessfulDeliveryTime"
        case loggingEnabled = "LoggingEnabled"
        case s3KeyPrefix = "S3KeyPrefix"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeLoggingStatusResult"))
        let loggingEnabledDecoded = try containerValues.decode(Bool.self, forKey: .loggingEnabled)
        loggingEnabled = loggingEnabledDecoded
        let bucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucketName)
        bucketName = bucketNameDecoded
        let s3KeyPrefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .s3KeyPrefix)
        s3KeyPrefix = s3KeyPrefixDecoded
        let lastSuccessfulDeliveryTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastSuccessfulDeliveryTime)
        var lastSuccessfulDeliveryTimeBuffer:Date? = nil
        if let lastSuccessfulDeliveryTimeDecoded = lastSuccessfulDeliveryTimeDecoded {
            lastSuccessfulDeliveryTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(lastSuccessfulDeliveryTimeDecoded, format: .dateTime)
        }
        lastSuccessfulDeliveryTime = lastSuccessfulDeliveryTimeBuffer
        let lastFailureTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastFailureTime)
        var lastFailureTimeBuffer:Date? = nil
        if let lastFailureTimeDecoded = lastFailureTimeDecoded {
            lastFailureTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(lastFailureTimeDecoded, format: .dateTime)
        }
        lastFailureTime = lastFailureTimeBuffer
        let lastFailureMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastFailureMessage)
        lastFailureMessage = lastFailureMessageDecoded
    }
}