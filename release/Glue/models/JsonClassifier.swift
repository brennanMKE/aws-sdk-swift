// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A classifier for <code>JSON</code> content.</p>
public struct JsonClassifier: Equatable {
    /// <p>The time that this classifier was registered.</p>
    public let creationTime: Date?
    /// <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
    ///       AWS Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
    public let jsonPath: String?
    /// <p>The time that this classifier was last updated.</p>
    public let lastUpdated: Date?
    /// <p>The name of the classifier.</p>
    public let name: String?
    /// <p>The version of this classifier.</p>
    public let version: Int

    public init (
        creationTime: Date? = nil,
        jsonPath: String? = nil,
        lastUpdated: Date? = nil,
        name: String? = nil,
        version: Int = 0
    )
    {
        self.creationTime = creationTime
        self.jsonPath = jsonPath
        self.lastUpdated = lastUpdated
        self.name = name
        self.version = version
    }
}

extension JsonClassifier: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JsonClassifier(creationTime: \(String(describing: creationTime)), jsonPath: \(String(describing: jsonPath)), lastUpdated: \(String(describing: lastUpdated)), name: \(String(describing: name)), version: \(String(describing: version)))"}
}