// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListLedgersOutputResponseBody: Equatable {
    public let ledgers: [LedgerSummary]?
    public let nextToken: String?
}

extension ListLedgersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ledgers = "Ledgers"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ledgersContainer = try containerValues.decodeIfPresent([LedgerSummary?].self, forKey: .ledgers)
        var ledgersDecoded0:[LedgerSummary]? = nil
        if let ledgersContainer = ledgersContainer {
            ledgersDecoded0 = [LedgerSummary]()
            for structure0 in ledgersContainer {
                if let structure0 = structure0 {
                    ledgersDecoded0?.append(structure0)
                }
            }
        }
        ledgers = ledgersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}