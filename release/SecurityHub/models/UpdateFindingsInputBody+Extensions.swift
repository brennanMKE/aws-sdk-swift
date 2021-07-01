// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateFindingsInputBody: Equatable {
    public let filters: AwsSecurityFindingFilters?
    public let note: NoteUpdate?
    public let recordState: RecordState?
}

extension UpdateFindingsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case note = "Note"
        case recordState = "RecordState"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let filtersDecoded = try containerValues.decodeIfPresent(AwsSecurityFindingFilters.self, forKey: .filters)
        filters = filtersDecoded
        let noteDecoded = try containerValues.decodeIfPresent(NoteUpdate.self, forKey: .note)
        note = noteDecoded
        let recordStateDecoded = try containerValues.decodeIfPresent(RecordState.self, forKey: .recordState)
        recordState = recordStateDecoded
    }
}