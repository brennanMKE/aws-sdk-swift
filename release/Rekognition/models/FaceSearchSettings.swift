// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input face recognition parameters for an Amazon Rekognition stream processor. <code>FaceRecognitionSettings</code> is a request
///         parameter for <a>CreateStreamProcessor</a>.</p>
public struct FaceSearchSettings: Equatable {
    /// <p>The ID of a collection that contains faces that you want to search for.</p>
    public let collectionId: String?
    /// <p>Minimum face match confidence score that must be met to return a result for a recognized face. Default is 80.
    ///         0 is the lowest confidence. 100 is the highest confidence.</p>
    public let faceMatchThreshold: Float?

    public init (
        collectionId: String? = nil,
        faceMatchThreshold: Float? = nil
    )
    {
        self.collectionId = collectionId
        self.faceMatchThreshold = faceMatchThreshold
    }
}

extension FaceSearchSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FaceSearchSettings(collectionId: \(String(describing: collectionId)), faceMatchThreshold: \(String(describing: faceMatchThreshold)))"}
}