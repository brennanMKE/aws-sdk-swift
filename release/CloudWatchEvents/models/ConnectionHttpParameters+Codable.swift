// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConnectionHttpParameters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bodyParameters = "BodyParameters"
        case headerParameters = "HeaderParameters"
        case queryStringParameters = "QueryStringParameters"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bodyParameters = bodyParameters {
            var bodyParametersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .bodyParameters)
            for connectionbodyparameterslist0 in bodyParameters {
                try bodyParametersContainer.encode(connectionbodyparameterslist0)
            }
        }
        if let headerParameters = headerParameters {
            var headerParametersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .headerParameters)
            for connectionheaderparameterslist0 in headerParameters {
                try headerParametersContainer.encode(connectionheaderparameterslist0)
            }
        }
        if let queryStringParameters = queryStringParameters {
            var queryStringParametersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .queryStringParameters)
            for connectionquerystringparameterslist0 in queryStringParameters {
                try queryStringParametersContainer.encode(connectionquerystringparameterslist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let headerParametersContainer = try containerValues.decodeIfPresent([ConnectionHeaderParameter?].self, forKey: .headerParameters)
        var headerParametersDecoded0:[ConnectionHeaderParameter]? = nil
        if let headerParametersContainer = headerParametersContainer {
            headerParametersDecoded0 = [ConnectionHeaderParameter]()
            for structure0 in headerParametersContainer {
                if let structure0 = structure0 {
                    headerParametersDecoded0?.append(structure0)
                }
            }
        }
        headerParameters = headerParametersDecoded0
        let queryStringParametersContainer = try containerValues.decodeIfPresent([ConnectionQueryStringParameter?].self, forKey: .queryStringParameters)
        var queryStringParametersDecoded0:[ConnectionQueryStringParameter]? = nil
        if let queryStringParametersContainer = queryStringParametersContainer {
            queryStringParametersDecoded0 = [ConnectionQueryStringParameter]()
            for structure0 in queryStringParametersContainer {
                if let structure0 = structure0 {
                    queryStringParametersDecoded0?.append(structure0)
                }
            }
        }
        queryStringParameters = queryStringParametersDecoded0
        let bodyParametersContainer = try containerValues.decodeIfPresent([ConnectionBodyParameter?].self, forKey: .bodyParameters)
        var bodyParametersDecoded0:[ConnectionBodyParameter]? = nil
        if let bodyParametersContainer = bodyParametersContainer {
            bodyParametersDecoded0 = [ConnectionBodyParameter]()
            for structure0 in bodyParametersContainer {
                if let structure0 = structure0 {
                    bodyParametersDecoded0?.append(structure0)
                }
            }
        }
        bodyParameters = bodyParametersDecoded0
    }
}