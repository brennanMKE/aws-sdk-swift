// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetCrawlerOutputResponseBody: Equatable {
    public let crawler: Crawler?
}

extension GetCrawlerOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case crawler = "Crawler"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let crawlerDecoded = try containerValues.decodeIfPresent(Crawler.self, forKey: .crawler)
        crawler = crawlerDecoded
    }
}