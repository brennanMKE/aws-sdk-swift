// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartMedicalTranscriptionJobInputBody: Equatable {
    public let languageCode: LanguageCode?
    public let mediaSampleRateHertz: Int?
    public let mediaFormat: MediaFormat?
    public let media: Media?
    public let outputBucketName: String?
    public let outputKey: String?
    public let outputEncryptionKMSKeyId: String?
    public let settings: MedicalTranscriptionSetting?
    public let contentIdentificationType: MedicalContentIdentificationType?
    public let specialty: Specialty?
    public let type: `Type`?
}

extension StartMedicalTranscriptionJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case contentIdentificationType = "ContentIdentificationType"
        case languageCode = "LanguageCode"
        case media = "Media"
        case mediaFormat = "MediaFormat"
        case mediaSampleRateHertz = "MediaSampleRateHertz"
        case outputBucketName = "OutputBucketName"
        case outputEncryptionKMSKeyId = "OutputEncryptionKMSKeyId"
        case outputKey = "OutputKey"
        case settings = "Settings"
        case specialty = "Specialty"
        case type = "Type"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let languageCodeDecoded = try containerValues.decodeIfPresent(LanguageCode.self, forKey: .languageCode)
        languageCode = languageCodeDecoded
        let mediaSampleRateHertzDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .mediaSampleRateHertz)
        mediaSampleRateHertz = mediaSampleRateHertzDecoded
        let mediaFormatDecoded = try containerValues.decodeIfPresent(MediaFormat.self, forKey: .mediaFormat)
        mediaFormat = mediaFormatDecoded
        let mediaDecoded = try containerValues.decodeIfPresent(Media.self, forKey: .media)
        media = mediaDecoded
        let outputBucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outputBucketName)
        outputBucketName = outputBucketNameDecoded
        let outputKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outputKey)
        outputKey = outputKeyDecoded
        let outputEncryptionKMSKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outputEncryptionKMSKeyId)
        outputEncryptionKMSKeyId = outputEncryptionKMSKeyIdDecoded
        let settingsDecoded = try containerValues.decodeIfPresent(MedicalTranscriptionSetting.self, forKey: .settings)
        settings = settingsDecoded
        let contentIdentificationTypeDecoded = try containerValues.decodeIfPresent(MedicalContentIdentificationType.self, forKey: .contentIdentificationType)
        contentIdentificationType = contentIdentificationTypeDecoded
        let specialtyDecoded = try containerValues.decodeIfPresent(Specialty.self, forKey: .specialty)
        specialty = specialtyDecoded
        let typeDecoded = try containerValues.decodeIfPresent(`Type`.self, forKey: .type)
        type = typeDecoded
    }
}