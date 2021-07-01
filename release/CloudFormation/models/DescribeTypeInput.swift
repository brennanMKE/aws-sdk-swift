// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeTypeInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the extension.</p>
    ///          <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>
    public let arn: String?
    /// <p>The kind of extension. </p>
    ///          <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>
    public let type: RegistryType?
    /// <p>The name of the extension.</p>
    ///          <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>
    public let typeName: String?
    /// <p>The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
    ///          <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information about that specific extension version. Otherwise, it returns information about the default extension version.</p>
    public let versionId: String?

    public init (
        arn: String? = nil,
        type: RegistryType? = nil,
        typeName: String? = nil,
        versionId: String? = nil
    )
    {
        self.arn = arn
        self.type = type
        self.typeName = typeName
        self.versionId = versionId
    }
}

extension DescribeTypeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTypeInput(arn: \(String(describing: arn)), type: \(String(describing: type)), typeName: \(String(describing: typeName)), versionId: \(String(describing: versionId)))"}
}