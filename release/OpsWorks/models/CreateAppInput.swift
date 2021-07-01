// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAppInput: Equatable {
    /// <p>A <code>Source</code> object that specifies the app repository.</p>
    public let appSource: Source?
    /// <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    public let attributes: [String:String]?
    /// <p>The app's data source.</p>
    public let dataSources: [DataSource]?
    /// <p>A description of the app.</p>
    public let description: String?
    /// <p>The app virtual host settings, with multiple domains separated by commas. For example:
    ///         <code>'www.example.com, example.com'</code>
    ///          </p>
    public let domains: [String]?
    /// <p>Whether to enable SSL for the app.</p>
    public let enableSsl: Bool?
    /// <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    ///       associated with the app. After you deploy the app, these variables are defined on the
    ///       associated app server instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p>
    ///          <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 20KB)."</p>
    ///          <note>
    ///             <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
    ///          </note>
    public let environment: [EnvironmentVariable]?
    /// <p>The app name.</p>
    public let name: String?
    /// <p>The app's short name.</p>
    public let shortname: String?
    /// <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    public let sslConfiguration: SslConfiguration?
    /// <p>The stack ID.</p>
    public let stackId: String?
    /// <p>The app type. Each supported type is associated with a particular layer. For example, PHP
    ///       applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances
    ///       that are members of the corresponding layer. If your app isn't one of the standard types, or
    ///       you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>
    public let type: AppType?

    public init (
        appSource: Source? = nil,
        attributes: [String:String]? = nil,
        dataSources: [DataSource]? = nil,
        description: String? = nil,
        domains: [String]? = nil,
        enableSsl: Bool? = nil,
        environment: [EnvironmentVariable]? = nil,
        name: String? = nil,
        shortname: String? = nil,
        sslConfiguration: SslConfiguration? = nil,
        stackId: String? = nil,
        type: AppType? = nil
    )
    {
        self.appSource = appSource
        self.attributes = attributes
        self.dataSources = dataSources
        self.description = description
        self.domains = domains
        self.enableSsl = enableSsl
        self.environment = environment
        self.name = name
        self.shortname = shortname
        self.sslConfiguration = sslConfiguration
        self.stackId = stackId
        self.type = type
    }
}

extension CreateAppInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAppInput(appSource: \(String(describing: appSource)), attributes: \(String(describing: attributes)), dataSources: \(String(describing: dataSources)), description: \(String(describing: description)), domains: \(String(describing: domains)), enableSsl: \(String(describing: enableSsl)), environment: \(String(describing: environment)), name: \(String(describing: name)), shortname: \(String(describing: shortname)), sslConfiguration: \(String(describing: sslConfiguration)), stackId: \(String(describing: stackId)), type: \(String(describing: type)))"}
}