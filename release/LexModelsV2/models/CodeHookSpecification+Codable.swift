// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodeHookSpecification: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case lambdaCodeHook
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let lambdaCodeHook = lambdaCodeHook {
            try encodeContainer.encode(lambdaCodeHook, forKey: .lambdaCodeHook)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lambdaCodeHookDecoded = try containerValues.decodeIfPresent(LambdaCodeHook.self, forKey: .lambdaCodeHook)
        lambdaCodeHook = lambdaCodeHookDecoded
    }
}