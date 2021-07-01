// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFunctionOutputResponseBody: Equatable {
    public let functionConfiguration: FunctionConfiguration?
}

extension CreateFunctionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case functionConfiguration
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let functionConfigurationDecoded = try containerValues.decodeIfPresent(FunctionConfiguration.self, forKey: .functionConfiguration)
        functionConfiguration = functionConfigurationDecoded
    }
}