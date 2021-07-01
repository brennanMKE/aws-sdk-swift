// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum WorkspaceImageIngestionProcess {
    case byolGraphics
    case byolGraphicspro
    case byolRegular
    case byolRegularWsp
    case sdkUnknown(String)
}

extension WorkspaceImageIngestionProcess : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [WorkspaceImageIngestionProcess] {
        return [
            .byolGraphics,
            .byolGraphicspro,
            .byolRegular,
            .byolRegularWsp,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .byolGraphics: return "BYOL_GRAPHICS"
        case .byolGraphicspro: return "BYOL_GRAPHICSPRO"
        case .byolRegular: return "BYOL_REGULAR"
        case .byolRegularWsp: return "BYOL_REGULAR_WSP"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = WorkspaceImageIngestionProcess(rawValue: rawValue) ?? WorkspaceImageIngestionProcess.sdkUnknown(rawValue)
    }
}