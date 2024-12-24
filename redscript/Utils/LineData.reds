module DialogueHistory.Utils

public struct LineData {
  public let id: CRUID;
  public let speakerName: String;
  public let text: String;
  public let isPersistent: Bool;
}