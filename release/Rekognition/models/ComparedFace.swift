// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides face metadata for target image faces that are analyzed by
///         <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>
public struct ComparedFace: Equatable {
    /// <p>Bounding box of the face.</p>
    public let boundingBox: BoundingBox?
    /// <p>Level of confidence that what the bounding box contains is a face.</p>
    public let confidence: Float?
    /// <p>An array of facial landmarks.</p>
    public let landmarks: [Landmark]?
    /// <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
    public let pose: Pose?
    /// <p>Identifies face image brightness and sharpness. </p>
    public let quality: ImageQuality?

    public init (
        boundingBox: BoundingBox? = nil,
        confidence: Float? = nil,
        landmarks: [Landmark]? = nil,
        pose: Pose? = nil,
        quality: ImageQuality? = nil
    )
    {
        self.boundingBox = boundingBox
        self.confidence = confidence
        self.landmarks = landmarks
        self.pose = pose
        self.quality = quality
    }
}

extension ComparedFace: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ComparedFace(boundingBox: \(String(describing: boundingBox)), confidence: \(String(describing: confidence)), landmarks: \(String(describing: landmarks)), pose: \(String(describing: pose)), quality: \(String(describing: quality)))"}
}