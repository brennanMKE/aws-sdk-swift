// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListActiveViolationsOutputResponse: Equatable {
    /// <p>The list of active violations.</p>
    public let activeViolations: [ActiveViolation]?
    /// <p>A token that can be used to retrieve the next set of results,
    ///             or <code>null</code> if there are no additional results.</p>
    public let nextToken: String?

    public init (
        activeViolations: [ActiveViolation]? = nil,
        nextToken: String? = nil
    )
    {
        self.activeViolations = activeViolations
        self.nextToken = nextToken
    }
}

extension ListActiveViolationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListActiveViolationsOutputResponse(activeViolations: \(String(describing: activeViolations)), nextToken: \(String(describing: nextToken)))"}
}