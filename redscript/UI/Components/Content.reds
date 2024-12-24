module DialogueHistory.UI

import Codeware.UI.*

public class Content extends InGamePopupContent {
  protected cb func OnCreate() {
    let content: ref<inkFlex> = new inkFlex();
    content.SetName(n"content");
    content.SetMargin(new inkMargin(0.0, 135.0, 0.0, 118.0));
    content.SetAnchor(inkEAnchor.Fill);

    this.m_content = content;
    this.SetRootWidget(content);
  }

  public static func Create() -> ref<Content> {
    let self: ref<Content> = new Content();
    self.CreateInstance();

    return self;
  }
}