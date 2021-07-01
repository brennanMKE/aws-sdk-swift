// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The <code>Database</code> object represents a logical grouping of tables that might reside
///       in a Hive metastore or an RDBMS.</p>
public struct Database: Equatable {
    /// <p>The ID of the Data Catalog in which the database resides.</p>
    public let catalogId: String?
    /// <p>Creates a set of default permissions on the table for principals. </p>
    public let createTableDefaultPermissions: [PrincipalPermissions]?
    /// <p>The time at which the metadata database was created in the catalog.</p>
    public let createTime: Date?
    /// <p>A description of the database.</p>
    public let description: String?
    /// <p>The location of the database (for example, an HDFS path).</p>
    public let locationUri: String?
    /// <p>The name of the database. For Hive compatibility, this is folded to lowercase when it is
    ///       stored.</p>
    public let name: String?
    /// <p>These key-value pairs define parameters and properties
    ///       of the database.</p>
    public let parameters: [String:String]?
    /// <p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>
    public let targetDatabase: DatabaseIdentifier?

    public init (
        catalogId: String? = nil,
        createTableDefaultPermissions: [PrincipalPermissions]? = nil,
        createTime: Date? = nil,
        description: String? = nil,
        locationUri: String? = nil,
        name: String? = nil,
        parameters: [String:String]? = nil,
        targetDatabase: DatabaseIdentifier? = nil
    )
    {
        self.catalogId = catalogId
        self.createTableDefaultPermissions = createTableDefaultPermissions
        self.createTime = createTime
        self.description = description
        self.locationUri = locationUri
        self.name = name
        self.parameters = parameters
        self.targetDatabase = targetDatabase
    }
}

extension Database: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Database(catalogId: \(String(describing: catalogId)), createTableDefaultPermissions: \(String(describing: createTableDefaultPermissions)), createTime: \(String(describing: createTime)), description: \(String(describing: description)), locationUri: \(String(describing: locationUri)), name: \(String(describing: name)), parameters: \(String(describing: parameters)), targetDatabase: \(String(describing: targetDatabase)))"}
}