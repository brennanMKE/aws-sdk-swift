// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListThingRegistrationTaskReportsOutputResponseBody: Equatable {
    public let resourceLinks: [String]?
    public let reportType: ReportType?
    public let nextToken: String?
}

extension ListThingRegistrationTaskReportsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case reportType
        case resourceLinks
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceLinksContainer = try containerValues.decodeIfPresent([String?].self, forKey: .resourceLinks)
        var resourceLinksDecoded0:[String]? = nil
        if let resourceLinksContainer = resourceLinksContainer {
            resourceLinksDecoded0 = [String]()
            for string0 in resourceLinksContainer {
                if let string0 = string0 {
                    resourceLinksDecoded0?.append(string0)
                }
            }
        }
        resourceLinks = resourceLinksDecoded0
        let reportTypeDecoded = try containerValues.decodeIfPresent(ReportType.self, forKey: .reportType)
        reportType = reportTypeDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}