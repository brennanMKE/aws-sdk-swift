// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Import documentation parts from an external (e.g., OpenAPI) definition file. </p>
public struct ImportDocumentationPartsInput: Equatable {
    /// <p>[Required] Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.</p>
    public let body: Data?
    /// <p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
    public let failOnWarnings: Bool
    /// <p>A query parameter to indicate whether to overwrite (<code>OVERWRITE</code>) any existing <a>DocumentationParts</a> definition or to merge (<code>MERGE</code>) the new definition into the existing one. The default value is <code>MERGE</code>.</p>
    public let mode: PutMode?
    /// <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
    public let restApiId: String?

    public init (
        body: Data? = nil,
        failOnWarnings: Bool = false,
        mode: PutMode? = nil,
        restApiId: String? = nil
    )
    {
        self.body = body
        self.failOnWarnings = failOnWarnings
        self.mode = mode
        self.restApiId = restApiId
    }
}

extension ImportDocumentationPartsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ImportDocumentationPartsInput(body: \(String(describing: body)), failOnWarnings: \(String(describing: failOnWarnings)), mode: \(String(describing: mode)), restApiId: \(String(describing: restApiId)))"}
}