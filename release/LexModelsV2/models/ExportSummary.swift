// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides summary information about an export in an export list.
///       </p>
public struct ExportSummary: Equatable {
    /// <p>The date and time that the export was created.</p>
    public let creationDateTime: Date?
    /// <p>The unique identifier that Amazon Lex assigned to the export.</p>
    public let exportId: String?
    /// <p>The status of the export. When the status is <code>Completed</code>
    ///          the export is ready to download.</p>
    public let exportStatus: ExportStatus?
    /// <p>The file format used in the export files.</p>
    public let fileFormat: ImportExportFileFormat?
    /// <p>The date and time that the export was last updated.</p>
    public let lastUpdatedDateTime: Date?
    /// <p>Information about the bot or bot locale that was exported.</p>
    public let resourceSpecification: ExportResourceSpecification?

    public init (
        creationDateTime: Date? = nil,
        exportId: String? = nil,
        exportStatus: ExportStatus? = nil,
        fileFormat: ImportExportFileFormat? = nil,
        lastUpdatedDateTime: Date? = nil,
        resourceSpecification: ExportResourceSpecification? = nil
    )
    {
        self.creationDateTime = creationDateTime
        self.exportId = exportId
        self.exportStatus = exportStatus
        self.fileFormat = fileFormat
        self.lastUpdatedDateTime = lastUpdatedDateTime
        self.resourceSpecification = resourceSpecification
    }
}

extension ExportSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExportSummary(creationDateTime: \(String(describing: creationDateTime)), exportId: \(String(describing: exportId)), exportStatus: \(String(describing: exportStatus)), fileFormat: \(String(describing: fileFormat)), lastUpdatedDateTime: \(String(describing: lastUpdatedDateTime)), resourceSpecification: \(String(describing: resourceSpecification)))"}
}