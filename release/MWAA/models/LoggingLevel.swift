// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LoggingLevel {
    case critical
    case debug
    case error
    case info
    case warning
    case sdkUnknown(String)
}

extension LoggingLevel : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LoggingLevel] {
        return [
            .critical,
            .debug,
            .error,
            .info,
            .warning,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .critical: return "CRITICAL"
        case .debug: return "DEBUG"
        case .error: return "ERROR"
        case .info: return "INFO"
        case .warning: return "WARNING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LoggingLevel(rawValue: rawValue) ?? LoggingLevel.sdkUnknown(rawValue)
    }
}