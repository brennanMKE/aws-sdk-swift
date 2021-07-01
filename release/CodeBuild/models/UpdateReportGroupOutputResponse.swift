// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateReportGroupOutputResponse: Equatable {
    /// <p>
    ///       Information about the updated report group.
    ///     </p>
    public let reportGroup: ReportGroup?

    public init (
        reportGroup: ReportGroup? = nil
    )
    {
        self.reportGroup = reportGroup
    }
}

extension UpdateReportGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateReportGroupOutputResponse(reportGroup: \(String(describing: reportGroup)))"}
}