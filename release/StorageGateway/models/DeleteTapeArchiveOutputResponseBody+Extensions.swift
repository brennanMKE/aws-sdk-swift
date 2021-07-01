// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteTapeArchiveOutputResponseBody: Equatable {
    public let tapeARN: String?
}

extension DeleteTapeArchiveOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case tapeARN = "TapeARN"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tapeARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tapeARN)
        tapeARN = tapeARNDecoded
    }
}