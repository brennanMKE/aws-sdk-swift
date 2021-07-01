// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A component of the key schema for the DynamoDB table, a global secondary index, or a
///          local secondary index.</p>
public struct AwsDynamoDbTableKeySchema: Equatable {
    /// <p>The name of the key schema attribute.</p>
    public let attributeName: String?
    /// <p>The type of key used for the key schema attribute.</p>
    public let keyType: String?

    public init (
        attributeName: String? = nil,
        keyType: String? = nil
    )
    {
        self.attributeName = attributeName
        self.keyType = keyType
    }
}

extension AwsDynamoDbTableKeySchema: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsDynamoDbTableKeySchema(attributeName: \(String(describing: attributeName)), keyType: \(String(describing: keyType)))"}
}