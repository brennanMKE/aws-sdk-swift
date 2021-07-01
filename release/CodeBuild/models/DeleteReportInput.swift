// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteReportInput: Equatable {
    /// <p>
    ///       The ARN of the report to delete.
    ///     </p>
    public let arn: String?

    public init (
        arn: String? = nil
    )
    {
        self.arn = arn
    }
}

extension DeleteReportInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteReportInput(arn: \(String(describing: arn)))"}
}