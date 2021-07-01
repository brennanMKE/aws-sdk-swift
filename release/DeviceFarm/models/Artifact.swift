// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a test. Examples of artifacts include logs and
///             screenshots.</p>
public struct Artifact: Equatable {
    /// <p>The artifact's file extension.</p>
    public let `extension`: String?
    /// <p>The artifact's ARN.</p>
    public let arn: String?
    /// <p>The artifact's name.</p>
    public let name: String?
    /// <p>The artifact's type.</p>
    ///         <p>Allowed values include the following:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>UNKNOWN</p>
    ///             </li>
    ///             <li>
    ///                 <p>SCREENSHOT</p>
    ///             </li>
    ///             <li>
    ///                 <p>DEVICE_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>MESSAGE_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>VIDEO_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>RESULT_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>SERVICE_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>WEBKIT_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>INSTRUMENTATION_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>EXERCISER_MONKEY_OUTPUT: the artifact (log) generated by an Android fuzz test.</p>
    ///             </li>
    ///             <li>
    ///                 <p>CALABASH_JSON_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>CALABASH_PRETTY_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>CALABASH_STANDARD_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>CALABASH_JAVA_XML_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>AUTOMATION_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_SERVER_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_XML_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_PYTHON_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_PYTHON_XML_OUTPUT</p>
    ///             </li>
    ///             <li>
    ///                 <p>EXPLORER_EVENT_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>EXPLORER_SUMMARY_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPLICATION_CRASH_REPORT</p>
    ///             </li>
    ///             <li>
    ///                 <p>XCTEST_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>VIDEO</p>
    ///             </li>
    ///             <li>
    ///                 <p>CUSTOMER_ARTIFACT</p>
    ///             </li>
    ///             <li>
    ///                 <p>CUSTOMER_ARTIFACT_LOG</p>
    ///             </li>
    ///             <li>
    ///                 <p>TESTSPEC_OUTPUT</p>
    ///             </li>
    ///          </ul>
    public let type: ArtifactType?
    /// <p>The presigned Amazon S3 URL that can be used with a GET request to download the artifact's
    ///             file.</p>
    public let url: String?

    public init (
        `extension`: String? = nil,
        arn: String? = nil,
        name: String? = nil,
        type: ArtifactType? = nil,
        url: String? = nil
    )
    {
        self.`extension` = `extension`
        self.arn = arn
        self.name = name
        self.type = type
        self.url = url
    }
}

extension Artifact: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Artifact(arn: \(String(describing: arn)), extension: \(String(describing: `extension`)), name: \(String(describing: name)), type: \(String(describing: type)), url: \(String(describing: url)))"}
}