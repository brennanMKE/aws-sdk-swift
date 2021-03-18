// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetCodeSigningConfigOutputBody: Equatable {
    public let codeSigningConfig: CodeSigningConfig?
}

extension GetCodeSigningConfigOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case codeSigningConfig = "CodeSigningConfig"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codeSigningConfigDecoded = try containerValues.decodeIfPresent(CodeSigningConfig.self, forKey: .codeSigningConfig)
        codeSigningConfig = codeSigningConfigDecoded
    }
}
