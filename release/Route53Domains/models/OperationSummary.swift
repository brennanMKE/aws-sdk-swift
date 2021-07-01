// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>OperationSummary includes the following elements.</p>
public struct OperationSummary: Equatable {
    /// <p>Identifier returned to track the requested action.</p>
    public let operationId: String?
    /// <p>The current status of the requested operation in the system.</p>
    public let status: OperationStatus?
    /// <p>The date when the request was submitted.</p>
    public let submittedDate: Date?
    /// <p>Type of the action requested.</p>
    public let type: OperationType?

    public init (
        operationId: String? = nil,
        status: OperationStatus? = nil,
        submittedDate: Date? = nil,
        type: OperationType? = nil
    )
    {
        self.operationId = operationId
        self.status = status
        self.submittedDate = submittedDate
        self.type = type
    }
}

extension OperationSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OperationSummary(operationId: \(String(describing: operationId)), status: \(String(describing: status)), submittedDate: \(String(describing: submittedDate)), type: \(String(describing: type)))"}
}