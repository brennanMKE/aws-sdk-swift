// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchGetVariableOutputResponse: Equatable {
    /// <p>The errors from the request.</p>
    public let errors: [BatchGetVariableError]?
    /// <p>The returned variables.</p>
    public let variables: [Variable]?

    public init (
        errors: [BatchGetVariableError]? = nil,
        variables: [Variable]? = nil
    )
    {
        self.errors = errors
        self.variables = variables
    }
}

extension BatchGetVariableOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchGetVariableOutputResponse(errors: \(String(describing: errors)), variables: \(String(describing: variables)))"}
}