// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

/**
 <p>A ZIP archive that contains the contents of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
         layer</a>. You can specify either an Amazon S3 location,
       or upload a layer archive directly.</p>
 */
public struct LayerVersionContentInput: Equatable {
    /// <p>The Amazon S3 bucket of the layer archive.</p>
    public let s3Bucket: String?
    /// <p>The Amazon S3 key of the layer archive.</p>
    public let s3Key: String?
    /// <p>For versioned objects, the version of the layer archive object to use.</p>
    public let s3ObjectVersion: String?
    /**
     <p>The base64-encoded contents of the layer archive. AWS SDK and AWS CLI clients handle the encoding for
           you.</p>
     */
    public let zipFile: Data?

    public init (
        s3Bucket: String? = nil,
        s3Key: String? = nil,
        s3ObjectVersion: String? = nil,
        zipFile: Data? = nil
    )
    {
        self.s3Bucket = s3Bucket
        self.s3Key = s3Key
        self.s3ObjectVersion = s3ObjectVersion
        self.zipFile = zipFile
    }
}