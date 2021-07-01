// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DeviceCgroupPermission {
    case mknod
    case read
    case write
    case sdkUnknown(String)
}

extension DeviceCgroupPermission : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DeviceCgroupPermission] {
        return [
            .mknod,
            .read,
            .write,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .mknod: return "mknod"
        case .read: return "read"
        case .write: return "write"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DeviceCgroupPermission(rawValue: rawValue) ?? DeviceCgroupPermission.sdkUnknown(rawValue)
    }
}