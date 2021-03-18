// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension CustomSMSLambdaVersionConfigType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case lambdaArn = "LambdaArn"
        case lambdaVersion = "LambdaVersion"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let lambdaArn = lambdaArn {
            try container.encode(lambdaArn, forKey: .lambdaArn)
        }
        if let lambdaVersion = lambdaVersion {
            try container.encode(lambdaVersion.rawValue, forKey: .lambdaVersion)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lambdaVersionDecoded = try containerValues.decodeIfPresent(CustomSMSSenderLambdaVersionType.self, forKey: .lambdaVersion)
        lambdaVersion = lambdaVersionDecoded
        let lambdaArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lambdaArn)
        lambdaArn = lambdaArnDecoded
    }
}
