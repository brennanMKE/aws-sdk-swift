// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartMedicalTranscriptionJobOutputResponseBody: Equatable {
    public let medicalTranscriptionJob: MedicalTranscriptionJob?
}

extension StartMedicalTranscriptionJobOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case medicalTranscriptionJob = "MedicalTranscriptionJob"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let medicalTranscriptionJobDecoded = try containerValues.decodeIfPresent(MedicalTranscriptionJob.self, forKey: .medicalTranscriptionJob)
        medicalTranscriptionJob = medicalTranscriptionJobDecoded
    }
}