variable "project_name" {
  type    = string
  default = "sandbox"
}


variable "azure_region" {
  type    = string
  default = "West Europe"
  validation {
    condition     = contains(["west-europe"], var.azure_region)
    error_message = "Valid values for azure_region are ('West Europe')."
  }
}

variable "azure_cognitive_account_kind" {
  type    = string
  default = "OpenAI"
  validation {
    condition     = contains(["Academic", "AnomalyDetector", "Bing.Autosuggest", "Bing.Autosuggest.v7", "Bing.CustomSearch", "Bing.Search", "Bing.Search.v7", "Bing.Speech", "Bing.SpellCheck", "Bing.SpellCheck.v7", "CognitiveServices", "ComputerVision", "ContentModerator", "CustomSpeech", "CustomVision.Prediction", "CustomVision.Training", "Emotion", "Face", "FormRecognizer", "ImmersiveReader", "LUIS", "LUIS.Authoring", "MetricsAdvisor", "OpenAI", "Personalizer", "QnAMaker", "Recommendations", "SpeakerRecognition", "Speech", "SpeechServices", "SpeechTranslation", "TextAnalytics", "TextTranslation", "WebLM"], var.azure_cognitive_account_kind)
    error_message = "Valid values for azure_cognitive_account_kind are (Academic, AnomalyDetector, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, CognitiveServices, ComputerVision, ContentModerator, CustomSpeech, CustomVision.Prediction, CustomVision.Training, Emotion, Face, FormRecognizer, ImmersiveReader, LUIS, LUIS.Authoring, MetricsAdvisor, OpenAI, Personalizer, QnAMaker, Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, TextAnalytics, TextTranslation, WebLM)."
  }
}


variable "azure_cognitive_account_sku" {
  type    = string
  default = "S0"
  validation {
    condition     = contains(["F0", "F1", "S0", "S", "S1", "S2", "S3", "S4", "S5", "S6", "P0", "P1", "P2", "E0", "DC0"], var.azure_cognitive_account_kind)
    error_message = "Valid values for azure_cognitive_account_kind are (F0, F1, S0, S, S1, S2, S3, S4, S5, S6, P0, P1, P2, E0, DC0)."
  }
}


