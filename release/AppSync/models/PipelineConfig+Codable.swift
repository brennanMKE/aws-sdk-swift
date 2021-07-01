// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PipelineConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case functions
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let functions = functions {
            var functionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .functions)
            for functionsids0 in functions {
                try functionsContainer.encode(functionsids0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let functionsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .functions)
        var functionsDecoded0:[String]? = nil
        if let functionsContainer = functionsContainer {
            functionsDecoded0 = [String]()
            for string0 in functionsContainer {
                if let string0 = string0 {
                    functionsDecoded0?.append(string0)
                }
            }
        }
        functions = functionsDecoded0
    }
}