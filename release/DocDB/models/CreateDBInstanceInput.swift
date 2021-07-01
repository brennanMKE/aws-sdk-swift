// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input to <a>CreateDBInstance</a>.</p>
public struct CreateDBInstanceInput: Equatable {
    /// <p>Indicates that minor engine upgrades are applied automatically to the instance
    ///             during the maintenance window.</p>
    ///         <p>Default: <code>true</code>
    ///         </p>
    public let autoMinorVersionUpgrade: Bool?
    /// <p>The Amazon EC2 Availability Zone that the instance is created in. </p>
    ///         <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p>
    ///         <p>Example: <code>us-east-1d</code>
    ///          </p>
    public let availabilityZone: String?
    /// <p>The identifier of the cluster that the instance will belong to.</p>
    public let dBClusterIdentifier: String?
    /// <p>The compute and memory capacity of the instance; for example,
    ///                 <code>db.r5.large</code>. </p>
    public let dBInstanceClass: String?
    /// <p>The instance identifier. This parameter is stored as a lowercase string.</p>
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    ///             </li>
    ///             <li>
    ///                 <p>The first character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    ///             </li>
    ///          </ul>
    ///         <p>Example: <code>mydbinstance</code>
    ///         </p>
    public let dBInstanceIdentifier: String?
    /// <p>The name of the database engine to be used for this instance.</p>
    ///         <p>Valid value: <code>docdb</code>
    ///          </p>
    public let engine: String?
    /// <p>The time range each week during which system maintenance can occur, in Universal
    ///             Coordinated Time (UTC).</p>
    ///         <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    ///         </p>
    ///         <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    ///             each AWS Region, occurring on a random day of the week. </p>
    ///         <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    ///         <p>Constraints: Minimum 30-minute window.</p>
    public let preferredMaintenanceWindow: String?
    /// <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
    ///             primary instance after a failure of the existing primary instance.</p>
    ///         <p>Default: 1</p>
    ///         <p>Valid values: 0-15</p>
    public let promotionTier: Int?
    /// <p>The tags to be assigned to the instance. You can assign up to
    ///            10 tags to an instance.</p>
    public let tags: [Tag]?

    public init (
        autoMinorVersionUpgrade: Bool? = nil,
        availabilityZone: String? = nil,
        dBClusterIdentifier: String? = nil,
        dBInstanceClass: String? = nil,
        dBInstanceIdentifier: String? = nil,
        engine: String? = nil,
        preferredMaintenanceWindow: String? = nil,
        promotionTier: Int? = nil,
        tags: [Tag]? = nil
    )
    {
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.engine = engine
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.promotionTier = promotionTier
        self.tags = tags
    }
}

extension CreateDBInstanceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDBInstanceInput(autoMinorVersionUpgrade: \(String(describing: autoMinorVersionUpgrade)), availabilityZone: \(String(describing: availabilityZone)), dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBInstanceClass: \(String(describing: dBInstanceClass)), dBInstanceIdentifier: \(String(describing: dBInstanceIdentifier)), engine: \(String(describing: engine)), preferredMaintenanceWindow: \(String(describing: preferredMaintenanceWindow)), promotionTier: \(String(describing: promotionTier)), tags: \(String(describing: tags)))"}
}