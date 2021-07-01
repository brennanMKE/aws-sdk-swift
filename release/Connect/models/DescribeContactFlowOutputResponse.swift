// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeContactFlowOutputResponse: Equatable {
    /// <p>Information about the contact flow.</p>
    public let contactFlow: ContactFlow?

    public init (
        contactFlow: ContactFlow? = nil
    )
    {
        self.contactFlow = contactFlow
    }
}

extension DescribeContactFlowOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeContactFlowOutputResponse(contactFlow: \(String(describing: contactFlow)))"}
}