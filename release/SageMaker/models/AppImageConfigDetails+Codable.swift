// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AppImageConfigDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appImageConfigArn = "AppImageConfigArn"
        case appImageConfigName = "AppImageConfigName"
        case creationTime = "CreationTime"
        case kernelGatewayImageConfig = "KernelGatewayImageConfig"
        case lastModifiedTime = "LastModifiedTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appImageConfigArn = appImageConfigArn {
            try encodeContainer.encode(appImageConfigArn, forKey: .appImageConfigArn)
        }
        if let appImageConfigName = appImageConfigName {
            try encodeContainer.encode(appImageConfigName, forKey: .appImageConfigName)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let kernelGatewayImageConfig = kernelGatewayImageConfig {
            try encodeContainer.encode(kernelGatewayImageConfig, forKey: .kernelGatewayImageConfig)
        }
        if let lastModifiedTime = lastModifiedTime {
            try encodeContainer.encode(lastModifiedTime.timeIntervalSince1970, forKey: .lastModifiedTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let appImageConfigArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appImageConfigArn)
        appImageConfigArn = appImageConfigArnDecoded
        let appImageConfigNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appImageConfigName)
        appImageConfigName = appImageConfigNameDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTime)
        lastModifiedTime = lastModifiedTimeDecoded
        let kernelGatewayImageConfigDecoded = try containerValues.decodeIfPresent(KernelGatewayImageConfig.self, forKey: .kernelGatewayImageConfig)
        kernelGatewayImageConfig = kernelGatewayImageConfigDecoded
    }
}