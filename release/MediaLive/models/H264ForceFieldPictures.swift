// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// H264 Force Field Pictures
public enum H264ForceFieldPictures {
    case disabled
    case enabled
    case sdkUnknown(String)
}

extension H264ForceFieldPictures : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [H264ForceFieldPictures] {
        return [
            .disabled,
            .enabled,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disabled: return "DISABLED"
        case .enabled: return "ENABLED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = H264ForceFieldPictures(rawValue: rawValue) ?? H264ForceFieldPictures.sdkUnknown(rawValue)
    }
}