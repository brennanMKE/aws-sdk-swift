// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines a mapping.</p>
public struct MappingEntry: Equatable {
    /// <p>The source path.</p>
    public let sourcePath: String?
    /// <p>The name of the source table.</p>
    public let sourceTable: String?
    /// <p>The source type.</p>
    public let sourceType: String?
    /// <p>The target path.</p>
    public let targetPath: String?
    /// <p>The target table.</p>
    public let targetTable: String?
    /// <p>The target type.</p>
    public let targetType: String?

    public init (
        sourcePath: String? = nil,
        sourceTable: String? = nil,
        sourceType: String? = nil,
        targetPath: String? = nil,
        targetTable: String? = nil,
        targetType: String? = nil
    )
    {
        self.sourcePath = sourcePath
        self.sourceTable = sourceTable
        self.sourceType = sourceType
        self.targetPath = targetPath
        self.targetTable = targetTable
        self.targetType = targetType
    }
}

extension MappingEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MappingEntry(sourcePath: \(String(describing: sourcePath)), sourceTable: \(String(describing: sourceTable)), sourceType: \(String(describing: sourceType)), targetPath: \(String(describing: targetPath)), targetTable: \(String(describing: targetTable)), targetType: \(String(describing: targetType)))"}
}