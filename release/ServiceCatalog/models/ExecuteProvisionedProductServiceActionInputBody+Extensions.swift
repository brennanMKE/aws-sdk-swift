// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ExecuteProvisionedProductServiceActionInputBody: Equatable {
    public let provisionedProductId: String?
    public let serviceActionId: String?
    public let executeToken: String?
    public let acceptLanguage: String?
    public let parameters: [String:[String]]?
}

extension ExecuteProvisionedProductServiceActionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case executeToken = "ExecuteToken"
        case parameters = "Parameters"
        case provisionedProductId = "ProvisionedProductId"
        case serviceActionId = "ServiceActionId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let provisionedProductIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisionedProductId)
        provisionedProductId = provisionedProductIdDecoded
        let serviceActionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceActionId)
        serviceActionId = serviceActionIdDecoded
        let executeTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executeToken)
        executeToken = executeTokenDecoded
        let acceptLanguageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acceptLanguage)
        acceptLanguage = acceptLanguageDecoded
        let parametersContainer = try containerValues.decodeIfPresent([String: [String?]?].self, forKey: .parameters)
        var parametersDecoded0: [String:[String]]? = nil
        if let parametersContainer = parametersContainer {
            parametersDecoded0 = [String:[String]]()
            for (key0, executionparametervaluelist0) in parametersContainer {
                var executionparametervaluelist0Decoded0: [String]? = nil
                if let executionparametervaluelist0 = executionparametervaluelist0 {
                    executionparametervaluelist0Decoded0 = [String]()
                    for string1 in executionparametervaluelist0 {
                        if let string1 = string1 {
                            executionparametervaluelist0Decoded0?.append(string1)
                        }
                    }
                }
                parametersDecoded0?[key0] = executionparametervaluelist0Decoded0
            }
        }
        parameters = parametersDecoded0
    }
}