// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteFacesInput: Equatable {
    /// <p>Collection from which to remove the specific faces.</p>
    public let collectionId: String?
    /// <p>An array of face IDs to delete.</p>
    public let faceIds: [String]?

    public init (
        collectionId: String? = nil,
        faceIds: [String]? = nil
    )
    {
        self.collectionId = collectionId
        self.faceIds = faceIds
    }
}

extension DeleteFacesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteFacesInput(collectionId: \(String(describing: collectionId)), faceIds: \(String(describing: faceIds)))"}
}