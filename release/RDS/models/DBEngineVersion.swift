// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>.
///         </p>
public struct DBEngineVersion: Equatable {
    /// <p>The description of the database engine.</p>
    public let dBEngineDescription: String?
    /// <p>The description of the database engine version.</p>
    public let dBEngineVersionDescription: String?
    /// <p>The name of the DB parameter group family for the database engine.</p>
    public let dBParameterGroupFamily: String?
    /// <p>
    ///             The default character set for new instances of this engine version,
    ///             if the <code>CharacterSetName</code> parameter of the CreateDBInstance API
    ///             isn't specified.
    ///         </p>
    public let defaultCharacterSet: CharacterSet?
    /// <p>The name of the database engine.</p>
    public let engine: String?
    /// <p>The version number of the database engine.</p>
    public let engineVersion: String?
    /// <p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>
    public let exportableLogTypes: [String]?
    /// <p>The status of the DB engine version, either <code>available</code> or <code>deprecated</code>.</p>
    public let status: String?
    /// <p>A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.
    ///       </p>
    public let supportedCharacterSets: [CharacterSet]?
    /// <p>A list of the supported DB engine modes.</p>
    public let supportedEngineModes: [String]?
    /// <p>
    ///         A list of features supported by the DB engine. Supported feature names include the following.
    ///     </p>
    ///          <ul>
    ///             <li>
    ///                <p>s3Import</p>
    ///             </li>
    ///          </ul>
    public let supportedFeatureNames: [String]?
    /// <p>A list of the character sets supported by the Oracle DB engine for the <code>NcharCharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.
    ///       </p>
    public let supportedNcharCharacterSets: [CharacterSet]?
    /// <p>A list of the time zones supported by this engine for the
    ///             <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action.
    ///         </p>
    public let supportedTimezones: [Timezone]?
    /// <p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>
    public let supportsGlobalDatabases: Bool
    /// <p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>
    public let supportsLogExportsToCloudwatchLogs: Bool
    /// <p>A value that indicates whether you can use Aurora parallel query with a specific DB engine version.</p>
    public let supportsParallelQuery: Bool
    /// <p>Indicates whether the database engine version supports read replicas.</p>
    public let supportsReadReplica: Bool
    /// <p>A list of engine versions that this database engine version can be upgraded to.</p>
    public let validUpgradeTarget: [UpgradeTarget]?

    public init (
        dBEngineDescription: String? = nil,
        dBEngineVersionDescription: String? = nil,
        dBParameterGroupFamily: String? = nil,
        defaultCharacterSet: CharacterSet? = nil,
        engine: String? = nil,
        engineVersion: String? = nil,
        exportableLogTypes: [String]? = nil,
        status: String? = nil,
        supportedCharacterSets: [CharacterSet]? = nil,
        supportedEngineModes: [String]? = nil,
        supportedFeatureNames: [String]? = nil,
        supportedNcharCharacterSets: [CharacterSet]? = nil,
        supportedTimezones: [Timezone]? = nil,
        supportsGlobalDatabases: Bool = false,
        supportsLogExportsToCloudwatchLogs: Bool = false,
        supportsParallelQuery: Bool = false,
        supportsReadReplica: Bool = false,
        validUpgradeTarget: [UpgradeTarget]? = nil
    )
    {
        self.dBEngineDescription = dBEngineDescription
        self.dBEngineVersionDescription = dBEngineVersionDescription
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.defaultCharacterSet = defaultCharacterSet
        self.engine = engine
        self.engineVersion = engineVersion
        self.exportableLogTypes = exportableLogTypes
        self.status = status
        self.supportedCharacterSets = supportedCharacterSets
        self.supportedEngineModes = supportedEngineModes
        self.supportedFeatureNames = supportedFeatureNames
        self.supportedNcharCharacterSets = supportedNcharCharacterSets
        self.supportedTimezones = supportedTimezones
        self.supportsGlobalDatabases = supportsGlobalDatabases
        self.supportsLogExportsToCloudwatchLogs = supportsLogExportsToCloudwatchLogs
        self.supportsParallelQuery = supportsParallelQuery
        self.supportsReadReplica = supportsReadReplica
        self.validUpgradeTarget = validUpgradeTarget
    }
}

extension DBEngineVersion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBEngineVersion(dBEngineDescription: \(String(describing: dBEngineDescription)), dBEngineVersionDescription: \(String(describing: dBEngineVersionDescription)), dBParameterGroupFamily: \(String(describing: dBParameterGroupFamily)), defaultCharacterSet: \(String(describing: defaultCharacterSet)), engine: \(String(describing: engine)), engineVersion: \(String(describing: engineVersion)), exportableLogTypes: \(String(describing: exportableLogTypes)), status: \(String(describing: status)), supportedCharacterSets: \(String(describing: supportedCharacterSets)), supportedEngineModes: \(String(describing: supportedEngineModes)), supportedFeatureNames: \(String(describing: supportedFeatureNames)), supportedNcharCharacterSets: \(String(describing: supportedNcharCharacterSets)), supportedTimezones: \(String(describing: supportedTimezones)), supportsGlobalDatabases: \(String(describing: supportsGlobalDatabases)), supportsLogExportsToCloudwatchLogs: \(String(describing: supportsLogExportsToCloudwatchLogs)), supportsParallelQuery: \(String(describing: supportsParallelQuery)), supportsReadReplica: \(String(describing: supportsReadReplica)), validUpgradeTarget: \(String(describing: validUpgradeTarget)))"}
}