// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The configuration of the self-managed Microsoft Active Directory (AD) directory to
///             which the Windows File Server instance is joined.</p>
public struct SelfManagedActiveDirectoryAttributes: Equatable {
    /// <p>A list of up to two IP addresses of DNS servers or domain controllers in the
    ///             self-managed AD directory.</p>
    public let dnsIps: [String]?
    /// <p>The fully qualified domain name of the self-managed AD directory.</p>
    public let domainName: String?
    /// <p>The name of the domain group whose members have administrative privileges for the FSx
    ///             file system.</p>
    public let fileSystemAdministratorsGroup: String?
    /// <p>The fully qualified distinguished name of the organizational unit within the
    ///             self-managed AD directory to which the Windows File Server instance is joined.</p>
    public let organizationalUnitDistinguishedName: String?
    /// <p>The user name for the service account on your self-managed AD domain that FSx uses to
    ///             join to your AD domain.</p>
    public let userName: String?

    public init (
        dnsIps: [String]? = nil,
        domainName: String? = nil,
        fileSystemAdministratorsGroup: String? = nil,
        organizationalUnitDistinguishedName: String? = nil,
        userName: String? = nil
    )
    {
        self.dnsIps = dnsIps
        self.domainName = domainName
        self.fileSystemAdministratorsGroup = fileSystemAdministratorsGroup
        self.organizationalUnitDistinguishedName = organizationalUnitDistinguishedName
        self.userName = userName
    }
}

extension SelfManagedActiveDirectoryAttributes: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SelfManagedActiveDirectoryAttributes(dnsIps: \(String(describing: dnsIps)), domainName: \(String(describing: domainName)), fileSystemAdministratorsGroup: \(String(describing: fileSystemAdministratorsGroup)), organizationalUnitDistinguishedName: \(String(describing: organizationalUnitDistinguishedName)), userName: \(String(describing: userName)))"}
}