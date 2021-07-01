// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a health check.</p>
public struct HealthCheck: Equatable {
    /// <p>The number of consecutive health checks successes required before moving the instance to the <code>Healthy</code> state.</p>
    public let healthyThreshold: Int
    /// <p>The approximate interval, in seconds, between health checks of an individual instance.</p>
    public let interval: Int
    /// <p>The instance being checked. The protocol is either TCP, HTTP, HTTPS, or SSL. The range of valid ports is one (1) through 65535.</p>
    ///         <p>TCP is the default, specified as a TCP: port pair, for example "TCP:5000". In this case, a health check simply attempts to open a TCP connection to the instance on the specified port. Failure to connect within the configured timeout is considered unhealthy.</p>
    ///         <p>SSL is also specified as SSL: port pair, for example, SSL:5000.</p>
    ///         <p>For HTTP/HTTPS, you must include a ping path in the string. HTTP is specified as a HTTP:port;/;PathToPing; grouping, for example "HTTP:80/weather/us/wa/seattle". In this case, a HTTP GET request is issued to the instance on the given port and path. Any answer other than "200 OK" within the timeout period is considered unhealthy.</p>
    ///          <p>The total length of the HTTP ping target must be 1024 16-bit Unicode characters or less.</p>
    public let target: String?
    /// <p>The amount of time, in seconds, during which no response means a failed health check.</p>
    ///         <p>This value must be less than the <code>Interval</code> value.</p>
    public let timeout: Int
    /// <p>The number of consecutive health check failures required before moving the instance to the <code>Unhealthy</code> state.</p>
    public let unhealthyThreshold: Int

    public init (
        healthyThreshold: Int = 0,
        interval: Int = 0,
        target: String? = nil,
        timeout: Int = 0,
        unhealthyThreshold: Int = 0
    )
    {
        self.healthyThreshold = healthyThreshold
        self.interval = interval
        self.target = target
        self.timeout = timeout
        self.unhealthyThreshold = unhealthyThreshold
    }
}

extension HealthCheck: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HealthCheck(healthyThreshold: \(String(describing: healthyThreshold)), interval: \(String(describing: interval)), target: \(String(describing: target)), timeout: \(String(describing: timeout)), unhealthyThreshold: \(String(describing: unhealthyThreshold)))"}
}