// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about a parent asset and a child asset that are related through an
///       asset hierarchy.</p>
public struct AssetHierarchyInfo: Equatable {
    /// <p>The ID of the child asset in this asset relationship.</p>
    public let childAssetId: String?
    /// <p>The ID of the parent asset in this asset relationship.</p>
    public let parentAssetId: String?

    public init (
        childAssetId: String? = nil,
        parentAssetId: String? = nil
    )
    {
        self.childAssetId = childAssetId
        self.parentAssetId = parentAssetId
    }
}

extension AssetHierarchyInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssetHierarchyInfo(childAssetId: \(String(describing: childAssetId)), parentAssetId: \(String(describing: parentAssetId)))"}
}