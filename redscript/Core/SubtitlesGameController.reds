module DialogueHistory.Core

import DialogueHistory.Utils.LineData

@addField(SubtitlesGameController)
public let m_config: ref<Config>;

@wrapMethod(SubtitlesGameController)
protected cb func OnInitialize() -> Bool {
  this.m_config = Config.Get();
  return wrappedMethod();
}

@wrapMethod(SubtitlesGameController)
protected cb func OnUninitialize() -> Bool {
  this.m_config = null;
  return wrappedMethod();
}

@wrapMethod(SubtitlesGameController)
protected func CreateLine(lineSpawnData: ref<LineSpawnData>) -> Void {
  wrappedMethod(lineSpawnData);

  let data = lineSpawnData.m_lineData;
  this.m_config.AddLine(new LineData(data.id, data.speakerName, data.text, data.isPersistent));
}
