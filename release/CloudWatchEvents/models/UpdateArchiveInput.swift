// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateArchiveInput: Equatable {
    /// <p>The name of the archive to update.</p>
    public let archiveName: String?
    /// <p>The description for the archive.</p>
    public let description: String?
    /// <p>The event pattern to use to filter events sent to the archive.</p>
    public let eventPattern: String?
    /// <p>The number of days to retain events in the archive.</p>
    public let retentionDays: Int?

    public init (
        archiveName: String? = nil,
        description: String? = nil,
        eventPattern: String? = nil,
        retentionDays: Int? = nil
    )
    {
        self.archiveName = archiveName
        self.description = description
        self.eventPattern = eventPattern
        self.retentionDays = retentionDays
    }
}

extension UpdateArchiveInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateArchiveInput(archiveName: \(String(describing: archiveName)), description: \(String(describing: description)), eventPattern: \(String(describing: eventPattern)), retentionDays: \(String(describing: retentionDays)))"}
}