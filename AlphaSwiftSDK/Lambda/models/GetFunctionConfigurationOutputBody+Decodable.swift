// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetFunctionConfigurationOutputBody: Equatable {
    public let functionName: String?
    public let functionArn: String?
    public let runtime: Runtime?
    public let role: String?
    public let handler: String?
    public let codeSize: Int
    public let description: String?
    public let timeout: Int?
    public let memorySize: Int?
    public let lastModified: String?
    public let codeSha256: String?
    public let version: String?
    public let vpcConfig: VpcConfigResponse?
    public let deadLetterConfig: DeadLetterConfig?
    public let environment: EnvironmentResponse?
    public let kMSKeyArn: String?
    public let tracingConfig: TracingConfigResponse?
    public let masterArn: String?
    public let revisionId: String?
    public let layers: [Layer]?
    public let state: State?
    public let stateReason: String?
    public let stateReasonCode: StateReasonCode?
    public let lastUpdateStatus: LastUpdateStatus?
    public let lastUpdateStatusReason: String?
    public let lastUpdateStatusReasonCode: LastUpdateStatusReasonCode?
    public let fileSystemConfigs: [FileSystemConfig]?
    public let packageType: PackageType?
    public let imageConfigResponse: ImageConfigResponse?
    public let signingProfileVersionArn: String?
    public let signingJobArn: String?
}

extension GetFunctionConfigurationOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case codeSha256 = "CodeSha256"
        case codeSize = "CodeSize"
        case deadLetterConfig = "DeadLetterConfig"
        case description = "Description"
        case environment = "Environment"
        case fileSystemConfigs = "FileSystemConfigs"
        case functionArn = "FunctionArn"
        case functionName = "FunctionName"
        case handler = "Handler"
        case imageConfigResponse = "ImageConfigResponse"
        case kMSKeyArn = "KMSKeyArn"
        case lastModified = "LastModified"
        case lastUpdateStatus = "LastUpdateStatus"
        case lastUpdateStatusReason = "LastUpdateStatusReason"
        case lastUpdateStatusReasonCode = "LastUpdateStatusReasonCode"
        case layers = "Layers"
        case masterArn = "MasterArn"
        case memorySize = "MemorySize"
        case packageType = "PackageType"
        case revisionId = "RevisionId"
        case role = "Role"
        case runtime = "Runtime"
        case signingJobArn = "SigningJobArn"
        case signingProfileVersionArn = "SigningProfileVersionArn"
        case state = "State"
        case stateReason = "StateReason"
        case stateReasonCode = "StateReasonCode"
        case timeout = "Timeout"
        case tracingConfig = "TracingConfig"
        case version = "Version"
        case vpcConfig = "VpcConfig"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let functionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionName)
        functionName = functionNameDecoded
        let functionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionArn)
        functionArn = functionArnDecoded
        let runtimeDecoded = try containerValues.decodeIfPresent(Runtime.self, forKey: .runtime)
        runtime = runtimeDecoded
        let roleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .role)
        role = roleDecoded
        let handlerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .handler)
        handler = handlerDecoded
        let codeSizeDecoded = try containerValues.decode(Int.self, forKey: .codeSize)
        codeSize = codeSizeDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let timeoutDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .timeout)
        timeout = timeoutDecoded
        let memorySizeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .memorySize)
        memorySize = memorySizeDecoded
        let lastModifiedDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastModified)
        lastModified = lastModifiedDecoded
        let codeSha256Decoded = try containerValues.decodeIfPresent(String.self, forKey: .codeSha256)
        codeSha256 = codeSha256Decoded
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let vpcConfigDecoded = try containerValues.decodeIfPresent(VpcConfigResponse.self, forKey: .vpcConfig)
        vpcConfig = vpcConfigDecoded
        let deadLetterConfigDecoded = try containerValues.decodeIfPresent(DeadLetterConfig.self, forKey: .deadLetterConfig)
        deadLetterConfig = deadLetterConfigDecoded
        let environmentDecoded = try containerValues.decodeIfPresent(EnvironmentResponse.self, forKey: .environment)
        environment = environmentDecoded
        let kMSKeyArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kMSKeyArn)
        kMSKeyArn = kMSKeyArnDecoded
        let tracingConfigDecoded = try containerValues.decodeIfPresent(TracingConfigResponse.self, forKey: .tracingConfig)
        tracingConfig = tracingConfigDecoded
        let masterArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .masterArn)
        masterArn = masterArnDecoded
        let revisionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revisionId)
        revisionId = revisionIdDecoded
        let layersContainer = try containerValues.decodeIfPresent([Layer].self, forKey: .layers)
        var layersDecoded0:[Layer]? = nil
        if let layersContainer = layersContainer {
            layersDecoded0 = [Layer]()
            for structure0 in layersContainer {
                layersDecoded0?.append(structure0)
            }
        }
        layers = layersDecoded0
        let stateDecoded = try containerValues.decodeIfPresent(State.self, forKey: .state)
        state = stateDecoded
        let stateReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stateReason)
        stateReason = stateReasonDecoded
        let stateReasonCodeDecoded = try containerValues.decodeIfPresent(StateReasonCode.self, forKey: .stateReasonCode)
        stateReasonCode = stateReasonCodeDecoded
        let lastUpdateStatusDecoded = try containerValues.decodeIfPresent(LastUpdateStatus.self, forKey: .lastUpdateStatus)
        lastUpdateStatus = lastUpdateStatusDecoded
        let lastUpdateStatusReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastUpdateStatusReason)
        lastUpdateStatusReason = lastUpdateStatusReasonDecoded
        let lastUpdateStatusReasonCodeDecoded = try containerValues.decodeIfPresent(LastUpdateStatusReasonCode.self, forKey: .lastUpdateStatusReasonCode)
        lastUpdateStatusReasonCode = lastUpdateStatusReasonCodeDecoded
        let fileSystemConfigsContainer = try containerValues.decodeIfPresent([FileSystemConfig].self, forKey: .fileSystemConfigs)
        var fileSystemConfigsDecoded0:[FileSystemConfig]? = nil
        if let fileSystemConfigsContainer = fileSystemConfigsContainer {
            fileSystemConfigsDecoded0 = [FileSystemConfig]()
            for structure0 in fileSystemConfigsContainer {
                fileSystemConfigsDecoded0?.append(structure0)
            }
        }
        fileSystemConfigs = fileSystemConfigsDecoded0
        let packageTypeDecoded = try containerValues.decodeIfPresent(PackageType.self, forKey: .packageType)
        packageType = packageTypeDecoded
        let imageConfigResponseDecoded = try containerValues.decodeIfPresent(ImageConfigResponse.self, forKey: .imageConfigResponse)
        imageConfigResponse = imageConfigResponseDecoded
        let signingProfileVersionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .signingProfileVersionArn)
        signingProfileVersionArn = signingProfileVersionArnDecoded
        let signingJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .signingJobArn)
        signingJobArn = signingJobArnDecoded
    }
}
