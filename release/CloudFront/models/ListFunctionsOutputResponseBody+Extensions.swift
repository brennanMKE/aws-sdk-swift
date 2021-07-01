// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFunctionsOutputResponseBody: Equatable {
    public let functionList: FunctionList?
}

extension ListFunctionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case functionList = "FunctionList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let functionListDecoded = try containerValues.decodeIfPresent(FunctionList.self, forKey: .functionList)
        functionList = functionListDecoded
    }
}