// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeEndpointTypesOutputResponseBody: Equatable {
    public let marker: String?
    public let supportedEndpointTypes: [SupportedEndpointType]?
}

extension DescribeEndpointTypesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case supportedEndpointTypes = "SupportedEndpointTypes"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
        let supportedEndpointTypesContainer = try containerValues.decodeIfPresent([SupportedEndpointType?].self, forKey: .supportedEndpointTypes)
        var supportedEndpointTypesDecoded0:[SupportedEndpointType]? = nil
        if let supportedEndpointTypesContainer = supportedEndpointTypesContainer {
            supportedEndpointTypesDecoded0 = [SupportedEndpointType]()
            for structure0 in supportedEndpointTypesContainer {
                if let structure0 = structure0 {
                    supportedEndpointTypesDecoded0?.append(structure0)
                }
            }
        }
        supportedEndpointTypes = supportedEndpointTypesDecoded0
    }
}