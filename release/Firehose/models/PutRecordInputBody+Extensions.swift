// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutRecordInputBody: Equatable {
    public let deliveryStreamName: String?
    public let record: Record?
}

extension PutRecordInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deliveryStreamName = "DeliveryStreamName"
        case record = "Record"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deliveryStreamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deliveryStreamName)
        deliveryStreamName = deliveryStreamNameDecoded
        let recordDecoded = try containerValues.decodeIfPresent(Record.self, forKey: .record)
        record = recordDecoded
    }
}