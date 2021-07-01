// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Specifies either the application code, or the location of the application code, for a
///       Flink-based Kinesis Data Analytics application. </p>
public struct CodeContent: Equatable {
    /// <p>Information about the Amazon S3 bucket that contains the application code.</p>
    public let s3ContentLocation: S3ContentLocation?
    /// <p>The text-format code for a Flink-based Kinesis Data Analytics application.</p>
    public let textContent: String?
    /// <p>The zip-format code for a Flink-based Kinesis Data Analytics application.</p>
    public let zipFileContent: Data?

    public init (
        s3ContentLocation: S3ContentLocation? = nil,
        textContent: String? = nil,
        zipFileContent: Data? = nil
    )
    {
        self.s3ContentLocation = s3ContentLocation
        self.textContent = textContent
        self.zipFileContent = zipFileContent
    }
}

extension CodeContent: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CodeContent(s3ContentLocation: \(String(describing: s3ContentLocation)), textContent: \(String(describing: textContent)), zipFileContent: \(String(describing: zipFileContent)))"}
}