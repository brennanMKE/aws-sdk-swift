// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchUpsertTableRowsOutputResponseBody: Equatable {
    public let rows: [String:UpsertRowsResult]?
    public let workbookCursor: Int
    public let failedBatchItems: [FailedBatchItem]?
}

extension BatchUpsertTableRowsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case failedBatchItems
        case rows
        case workbookCursor
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let rowsContainer = try containerValues.decodeIfPresent([String: UpsertRowsResult?].self, forKey: .rows)
        var rowsDecoded0: [String:UpsertRowsResult]? = nil
        if let rowsContainer = rowsContainer {
            rowsDecoded0 = [String:UpsertRowsResult]()
            for (key0, upsertrowsresult0) in rowsContainer {
                if let upsertrowsresult0 = upsertrowsresult0 {
                    rowsDecoded0?[key0] = upsertrowsresult0
                }
            }
        }
        rows = rowsDecoded0
        let workbookCursorDecoded = try containerValues.decode(Int.self, forKey: .workbookCursor)
        workbookCursor = workbookCursorDecoded
        let failedBatchItemsContainer = try containerValues.decodeIfPresent([FailedBatchItem?].self, forKey: .failedBatchItems)
        var failedBatchItemsDecoded0:[FailedBatchItem]? = nil
        if let failedBatchItemsContainer = failedBatchItemsContainer {
            failedBatchItemsDecoded0 = [FailedBatchItem]()
            for structure0 in failedBatchItemsContainer {
                if let structure0 = structure0 {
                    failedBatchItemsDecoded0?.append(structure0)
                }
            }
        }
        failedBatchItems = failedBatchItemsDecoded0
    }
}