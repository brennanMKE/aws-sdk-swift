// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetectFacesInput: Equatable {
    /// <p>An array of facial attributes you want to be returned. This can be the default list of
    ///       attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if
    ///       you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial
    ///       attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
    ///         <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all
    ///       facial attributes are returned, but the operation takes longer to complete.</p>
    ///          <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND
    ///       operator to determine which attributes to return (in this case, all attributes). </p>
    public let attributes: [Attribute]?
    /// <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    ///       Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    ///          <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    ///       passed using the <code>Bytes</code> field.
    ///       For more information, see Images in the Amazon Rekognition developer guide.</p>
    public let image: Image?

    public init (
        attributes: [Attribute]? = nil,
        image: Image? = nil
    )
    {
        self.attributes = attributes
        self.image = image
    }
}

extension DetectFacesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetectFacesInput(attributes: \(String(describing: attributes)), image: \(String(describing: image)))"}
}