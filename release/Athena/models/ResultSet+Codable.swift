// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResultSet: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resultSetMetadata = "ResultSetMetadata"
        case rows = "Rows"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let resultSetMetadata = resultSetMetadata {
            try encodeContainer.encode(resultSetMetadata, forKey: .resultSetMetadata)
        }
        if let rows = rows {
            var rowsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .rows)
            for rowlist0 in rows {
                try rowsContainer.encode(rowlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let rowsContainer = try containerValues.decodeIfPresent([Row?].self, forKey: .rows)
        var rowsDecoded0:[Row]? = nil
        if let rowsContainer = rowsContainer {
            rowsDecoded0 = [Row]()
            for structure0 in rowsContainer {
                if let structure0 = structure0 {
                    rowsDecoded0?.append(structure0)
                }
            }
        }
        rows = rowsDecoded0
        let resultSetMetadataDecoded = try containerValues.decodeIfPresent(ResultSetMetadata.self, forKey: .resultSetMetadata)
        resultSetMetadata = resultSetMetadataDecoded
    }
}