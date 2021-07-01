// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateFunctionDefinitionInput: Equatable {
    /// The ID of the Lambda function definition.
    public let functionDefinitionId: String?
    /// The name of the definition.
    public let name: String?

    public init (
        functionDefinitionId: String? = nil,
        name: String? = nil
    )
    {
        self.functionDefinitionId = functionDefinitionId
        self.name = name
    }
}

extension UpdateFunctionDefinitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateFunctionDefinitionInput(functionDefinitionId: \(String(describing: functionDefinitionId)), name: \(String(describing: name)))"}
}