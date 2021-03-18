// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct PutFunctionCodeSigningConfigOutputBody: Equatable {
    public let codeSigningConfigArn: String?
    public let functionName: String?
}

extension PutFunctionCodeSigningConfigOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case codeSigningConfigArn = "CodeSigningConfigArn"
        case functionName = "FunctionName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codeSigningConfigArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .codeSigningConfigArn)
        codeSigningConfigArn = codeSigningConfigArnDecoded
        let functionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionName)
        functionName = functionNameDecoded
    }
}
