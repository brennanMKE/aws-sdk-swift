// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateServerInput: Equatable {
    /// <p>
    ///         Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    ///       </p>
    public let associatePublicIpAddress: Bool?
    /// <p>
    ///       If you specify this field, AWS OpsWorks CM creates the server by using the backup represented by BackupId.
    ///     </p>
    public let backupId: String?
    /// <p>
    ///         The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks CM deletes the oldest backups if this number is exceeded.
    ///         The default value is <code>1</code>.
    ///       </p>
    public let backupRetentionCount: Int?
    /// <p>A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a
    ///       custom certificate, you must also specify values for <code>CustomDomain</code> and <code>CustomPrivateKey</code>. The following are requirements for the <code>CustomCertificate</code> value:</p>
    ///          <ul>
    ///             <li>
    ///                <p>You can provide either a self-signed, custom certificate, or the full certificate chain.</p>
    ///             </li>
    ///             <li>
    ///                <p>The certificate must be a valid X509 certificate, or a certificate chain in PEM format.</p>
    ///             </li>
    ///             <li>
    ///                <p>The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's <code>NotBefore</code> date), or after it expires
    ///         (the certificate's <code>NotAfter</code> date).</p>
    ///             </li>
    ///             <li>
    ///                <p>The certificate’s common name or subject alternative names (SANs), if present, must match the value of <code>CustomDomain</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>The certificate must match the value of <code>CustomPrivateKey</code>.</p>
    ///             </li>
    ///          </ul>
    public let customCertificate: String?
    /// <p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. To access the server, create a CNAME DNS record in your preferred DNS service that points the custom
    ///       domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the
    ///       generated <code>Endpoint</code> value if the server is using a custom domain. If you specify a custom domain, you must also specify values for <code>CustomCertificate</code>
    ///       and <code>CustomPrivateKey</code>.</p>
    public let customDomain: String?
    /// <p>A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase.
    ///       If you specify a custom private key, you must also specify values for <code>CustomDomain</code> and <code>CustomCertificate</code>.</p>
    public let customPrivateKey: String?
    /// <p>
    ///         Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    ///       </p>
    public let disableAutomatedBackup: Bool?
    /// <p>
    ///         The configuration management engine to use. Valid values include <code>ChefAutomate</code> and <code>Puppet</code>.
    ///       </p>
    public let engine: String?
    /// <p>Optional engine attributes on a specified server.
    ///     </p>
    ///          <p class="title">
    ///             <b>Attributes accepted in a Chef createServer request:</b>
    ///          </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A
    ///       base64-encoded RSA public key. The corresponding private key is required to
    ///       access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is
    ///       generated and returned in the response.
    ///       </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>CHEF_AUTOMATE_ADMIN_PASSWORD</code>:
    ///       The password for the administrative user in the Chef Automate web-based dashboard. The
    ///       password length is a minimum of eight characters, and a maximum of 32. The
    ///       password can contain letters, numbers, and special characters
    ///       (!/@#$%^&+=_). The password must contain at least one lower case letter, one upper
    ///       case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is
    ///       generated and returned in the response.</p>
    ///             </li>
    ///          </ul>
    ///          <p class="title">
    ///             <b>Attributes accepted in a Puppet createServer request:</b>
    ///          </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet Enterprise console, a password must use ASCII characters.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>PUPPET_R10K_REMOTE</code>: The r10k remote is the URL of your control repository
    ///         (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>PUPPET_R10K_PRIVATE_KEY</code>: If you are using a private Git repository, add
    ///         PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.</p>
    ///             </li>
    ///          </ul>
    public let engineAttributes: [EngineAttribute]?
    /// <p>
    ///         The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.
    ///       </p>
    public let engineModel: String?
    /// <p>
    ///         The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion
    ///         is currently <code>2</code>. For a Puppet server, valid values are <code>2019</code> or <code>2017</code>.
    ///       </p>
    public let engineVersion: String?
    /// <p>
    ///         The ARN of the instance profile that your Amazon EC2
    ///         instances use. Although the AWS OpsWorks console typically creates
    ///         the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml
    ///         AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    ///         This template creates a CloudFormation stack that includes the instance profile you need.
    ///
    ///       </p>
    public let instanceProfileArn: String?
    /// <p>
    ///         The Amazon EC2 instance type to use. For example, <code>m5.large</code>.
    ///       </p>
    public let instanceType: String?
    /// <p>
    ///         The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.
    ///       </p>
    public let keyPair: String?
    /// <p>
    ///       The start time for a one-hour period during which AWS OpsWorks CM backs up application-level data on your server
    ///       if automated backups are enabled. Valid values must be specified in one of the following formats:
    ///     </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>HH:MM</code> for daily backups</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>DDD:HH:MM</code> for weekly backups</p>
    ///             </li>
    ///          </ul>
    ///          <p>
    ///             <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p>
    ///          <p>
    ///             <b>Example:</b>
    ///             <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p>
    ///          <p>
    ///             <b>Example:</b>
    ///             <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>
    public let preferredBackupWindow: String?
    /// <p>
    ///       The start time for a one-hour period each week during which AWS OpsWorks CM performs maintenance on the instance.
    ///       Valid values must be specified in the following format: <code>DDD:HH:MM</code>. <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC).
    ///       The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information.
    ///     </p>
    ///          <p>
    ///             <b>Example:</b>
    ///             <code>Mon:08:00</code>,
    ///       which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
    ///     </p>
    public let preferredMaintenanceWindow: String?
    /// <p>
    ///       A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups
    ///       must be within the VPC that is specified by <code>SubnetIds</code>.
    ///     </p>
    ///          <p>
    ///       If you do not specify this parameter, AWS OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to
    ///       0.0.0.0/0 (everyone).
    ///     </p>
    public let securityGroupIds: [String]?
    /// <p>
    ///         The name of the server. The server name must be unique within your AWS account, within each region.
    ///         Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.
    ///       </p>
    public let serverName: String?
    /// <p>
    ///       The service role that the AWS OpsWorks CM service backend uses to work with your account. Although the AWS OpsWorks management console typically creates
    ///       the service role for you, if you are using the AWS CLI or API commands,
    ///       run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    ///       This template creates a CloudFormation stack that includes the service role and instance profile that you need.
    ///     </p>
    public let serviceRoleArn: String?
    /// <p>
    ///       The IDs of subnets in which to launch the server EC2 instance.
    ///     </p>
    ///          <p>
    ///       Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled.
    ///     </p>
    ///          <p>
    ///       EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled.
    ///     </p>
    ///          <p>For more information about supported Amazon EC2 platforms, see
    ///       <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>.</p>
    public let subnetIds: [String]?
    /// <p>A map that contains tag keys and tag values to attach to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server.</p>
    ///          <ul>
    ///             <li>
    ///                <p>The key cannot be empty.</p>
    ///             </li>
    ///             <li>
    ///                <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    ///             </li>
    ///             <li>
    ///                <p>A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM server.</p>
    ///             </li>
    ///          </ul>
    public let tags: [Tag]?

    public init (
        associatePublicIpAddress: Bool? = nil,
        backupId: String? = nil,
        backupRetentionCount: Int? = nil,
        customCertificate: String? = nil,
        customDomain: String? = nil,
        customPrivateKey: String? = nil,
        disableAutomatedBackup: Bool? = nil,
        engine: String? = nil,
        engineAttributes: [EngineAttribute]? = nil,
        engineModel: String? = nil,
        engineVersion: String? = nil,
        instanceProfileArn: String? = nil,
        instanceType: String? = nil,
        keyPair: String? = nil,
        preferredBackupWindow: String? = nil,
        preferredMaintenanceWindow: String? = nil,
        securityGroupIds: [String]? = nil,
        serverName: String? = nil,
        serviceRoleArn: String? = nil,
        subnetIds: [String]? = nil,
        tags: [Tag]? = nil
    )
    {
        self.associatePublicIpAddress = associatePublicIpAddress
        self.backupId = backupId
        self.backupRetentionCount = backupRetentionCount
        self.customCertificate = customCertificate
        self.customDomain = customDomain
        self.customPrivateKey = customPrivateKey
        self.disableAutomatedBackup = disableAutomatedBackup
        self.engine = engine
        self.engineAttributes = engineAttributes
        self.engineModel = engineModel
        self.engineVersion = engineVersion
        self.instanceProfileArn = instanceProfileArn
        self.instanceType = instanceType
        self.keyPair = keyPair
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.securityGroupIds = securityGroupIds
        self.serverName = serverName
        self.serviceRoleArn = serviceRoleArn
        self.subnetIds = subnetIds
        self.tags = tags
    }
}

extension CreateServerInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateServerInput(associatePublicIpAddress: \(String(describing: associatePublicIpAddress)), backupId: \(String(describing: backupId)), backupRetentionCount: \(String(describing: backupRetentionCount)), customCertificate: \(String(describing: customCertificate)), customDomain: \(String(describing: customDomain)), customPrivateKey: \(String(describing: customPrivateKey)), disableAutomatedBackup: \(String(describing: disableAutomatedBackup)), engine: \(String(describing: engine)), engineAttributes: \(String(describing: engineAttributes)), engineModel: \(String(describing: engineModel)), engineVersion: \(String(describing: engineVersion)), instanceProfileArn: \(String(describing: instanceProfileArn)), instanceType: \(String(describing: instanceType)), keyPair: \(String(describing: keyPair)), preferredBackupWindow: \(String(describing: preferredBackupWindow)), preferredMaintenanceWindow: \(String(describing: preferredMaintenanceWindow)), securityGroupIds: \(String(describing: securityGroupIds)), serverName: \(String(describing: serverName)), serviceRoleArn: \(String(describing: serviceRoleArn)), subnetIds: \(String(describing: subnetIds)), tags: \(String(describing: tags)))"}
}