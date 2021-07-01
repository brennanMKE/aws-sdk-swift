// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateWorkflowOutputResponse: Equatable {
    /// <p>The name of the workflow which was provided as part of the request.</p>
    public let name: String?

    public init (
        name: String? = nil
    )
    {
        self.name = name
    }
}

extension CreateWorkflowOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateWorkflowOutputResponse(name: \(String(describing: name)))"}
}