// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MitigationActionParams: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case addThingsToThingGroupParams
        case enableIoTLoggingParams
        case publishFindingToSnsParams
        case replaceDefaultPolicyVersionParams
        case updateCACertificateParams
        case updateDeviceCertificateParams
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let addThingsToThingGroupParams = addThingsToThingGroupParams {
            try encodeContainer.encode(addThingsToThingGroupParams, forKey: .addThingsToThingGroupParams)
        }
        if let enableIoTLoggingParams = enableIoTLoggingParams {
            try encodeContainer.encode(enableIoTLoggingParams, forKey: .enableIoTLoggingParams)
        }
        if let publishFindingToSnsParams = publishFindingToSnsParams {
            try encodeContainer.encode(publishFindingToSnsParams, forKey: .publishFindingToSnsParams)
        }
        if let replaceDefaultPolicyVersionParams = replaceDefaultPolicyVersionParams {
            try encodeContainer.encode(replaceDefaultPolicyVersionParams, forKey: .replaceDefaultPolicyVersionParams)
        }
        if let updateCACertificateParams = updateCACertificateParams {
            try encodeContainer.encode(updateCACertificateParams, forKey: .updateCACertificateParams)
        }
        if let updateDeviceCertificateParams = updateDeviceCertificateParams {
            try encodeContainer.encode(updateDeviceCertificateParams, forKey: .updateDeviceCertificateParams)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let updateDeviceCertificateParamsDecoded = try containerValues.decodeIfPresent(UpdateDeviceCertificateParams.self, forKey: .updateDeviceCertificateParams)
        updateDeviceCertificateParams = updateDeviceCertificateParamsDecoded
        let updateCACertificateParamsDecoded = try containerValues.decodeIfPresent(UpdateCACertificateParams.self, forKey: .updateCACertificateParams)
        updateCACertificateParams = updateCACertificateParamsDecoded
        let addThingsToThingGroupParamsDecoded = try containerValues.decodeIfPresent(AddThingsToThingGroupParams.self, forKey: .addThingsToThingGroupParams)
        addThingsToThingGroupParams = addThingsToThingGroupParamsDecoded
        let replaceDefaultPolicyVersionParamsDecoded = try containerValues.decodeIfPresent(ReplaceDefaultPolicyVersionParams.self, forKey: .replaceDefaultPolicyVersionParams)
        replaceDefaultPolicyVersionParams = replaceDefaultPolicyVersionParamsDecoded
        let enableIoTLoggingParamsDecoded = try containerValues.decodeIfPresent(EnableIoTLoggingParams.self, forKey: .enableIoTLoggingParams)
        enableIoTLoggingParams = enableIoTLoggingParamsDecoded
        let publishFindingToSnsParamsDecoded = try containerValues.decodeIfPresent(PublishFindingToSnsParams.self, forKey: .publishFindingToSnsParams)
        publishFindingToSnsParams = publishFindingToSnsParamsDecoded
    }
}