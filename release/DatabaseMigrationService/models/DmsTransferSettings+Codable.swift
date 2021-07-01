// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DmsTransferSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bucketName = "BucketName"
        case serviceAccessRoleArn = "ServiceAccessRoleArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bucketName = bucketName {
            try encodeContainer.encode(bucketName, forKey: .bucketName)
        }
        if let serviceAccessRoleArn = serviceAccessRoleArn {
            try encodeContainer.encode(serviceAccessRoleArn, forKey: .serviceAccessRoleArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceAccessRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceAccessRoleArn)
        serviceAccessRoleArn = serviceAccessRoleArnDecoded
        let bucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucketName)
        bucketName = bucketNameDecoded
    }
}