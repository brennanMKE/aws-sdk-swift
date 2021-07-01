// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ArchiveFindingsInput: Equatable {
    /// <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    ///       archive.</p>
    public let detectorId: String?
    /// <p>The IDs of the findings that you want to archive.</p>
    public let findingIds: [String]?

    public init (
        detectorId: String? = nil,
        findingIds: [String]? = nil
    )
    {
        self.detectorId = detectorId
        self.findingIds = findingIds
    }
}

extension ArchiveFindingsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ArchiveFindingsInput(detectorId: \(String(describing: detectorId)), findingIds: \(String(describing: findingIds)))"}
}