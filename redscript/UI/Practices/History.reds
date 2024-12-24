module DialogueHistory.UI

import DialogueHistory.Core.*
import DialogueHistory.Utils.*

public class History extends Practice {
  protected let m_root: wref<inkCanvas>;
  protected let m_scrollArea: wref<inkScrollArea>;
  protected let m_sliderArea: wref<inkCanvas>;
  protected let m_sliderHandle: wref<inkRectangle>;
  protected let m_textContainer: wref<inkVerticalPanel>;

  protected cb func OnCreate() {
    let config = this.m_workbench.GetConfig();

    let root = new inkCanvas();
    root.SetName(this.GetClassName());
    root.SetAnchor(inkEAnchor.Fill);

    let scrollArea = new inkScrollArea();
    scrollArea.SetName(n"ScrollArea");
    scrollArea.SetAnchor(inkEAnchor.Fill);
    scrollArea.SetMargin(20.0, 20.0, 20.0, 20.0);
    scrollArea.SetInteractive(true);
    scrollArea.Reparent(root);

    let textContainer = new inkVerticalPanel();
    textContainer.SetName(n"TextContainer");
    textContainer.SetAnchor(inkEAnchor.TopLeft);
    textContainer.SetChildMargin(new inkMargin(0.0, config.margin, 0.0, 0.0));
    textContainer.Reparent(scrollArea);

    let sliderArea = new inkCanvas();
    sliderArea.SetName(n"SliderArea");
    sliderArea.SetAnchor(inkEAnchor.RightFillVerticaly);
    sliderArea.SetInteractive(true);
    sliderArea.SetWidth(10.0);
    sliderArea.SetMargin(0, 0, -10.0, 0);
    sliderArea.Reparent(root);

    let sliderFill = new inkRectangle();
    sliderFill.SetName(n"Fill");
    sliderFill.SetAnchor(inkEAnchor.Fill);
    sliderFill.SetOpacity(0.5);
    sliderFill.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
    sliderFill.BindProperty(n"tintColor", n"MainColors.DarkRed");
    sliderFill.Reparent(sliderArea);

    let sliderHandle = new inkRectangle();
    sliderHandle.SetName(n"Handle");
    sliderHandle.SetAnchor(inkEAnchor.TopFillHorizontaly);
    sliderHandle.SetSize(10.0, 70.0);
    sliderHandle.SetInteractive(true);
    sliderHandle.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
    sliderHandle.BindProperty(n"tintColor", n"MainColors.Red");
    sliderHandle.Reparent(sliderArea);

    let sliderController = new inkSliderController();
    sliderController.slidingAreaRef = inkScrollAreaRef.Create(sliderArea);
    sliderController.handleRef = inkWidgetRef.Create(sliderHandle);
    sliderController.direction = inkESliderDirection.Vertical;
    sliderController.autoSizeHandle = true;
    sliderController.percentHandleSize = 0.4;
    sliderController.minHandleSize = 40.0;
    sliderController.Setup(0.0, 1.0, 0.0);
    sliderArea.AttachController(sliderController);

    let rootAreaSize = this.GetAreaSize();
    let scrollController = new inkScrollController();
    scrollController.ScrollArea = inkScrollAreaRef.Create(scrollArea);
    scrollController.VerticalScrollBarRef = inkWidgetRef.Create(sliderArea);
    scrollController.autoHideVertical = true;
    scrollController.SetScrollPosition(rootAreaSize.Y); // scroll to the bottom
    root.AttachController(scrollController);

    this.m_root = root;
    this.m_textContainer = textContainer;
    this.m_scrollArea = scrollArea;
    this.m_sliderArea = sliderArea;
    this.m_sliderHandle = sliderHandle;

    this.SetRootWidget(root);
  }

  protected cb func OnInitialize() {
    this.DrawLines();
  }

  protected final func DrawLines() {
    let config = this.m_workbench.GetConfig();

    let lines = config.GetLines();
    let speakerColor = config.GetSpeakerColor();
    let textColor = config.GetTextColor();

    let totalLines = ArraySize(lines);

    if totalLines == 0 {
      let text = new inkText();
      text.SetName(n"NoLinesText");
      text.SetText(this.GetLocalizedText("DialogueHistory-Empty"));
      text.SetFontSize(config.fontSize);
      text.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
      text.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
      text.BindProperty(n"tintColor", textColor);
      text.Reparent(this.m_textContainer);

      return;
    }

    let i = 0;

    while i < totalLines {
      let line = lines[i];

      let row = new inkHorizontalPanel();
      row.SetName(n"Row");
      row.SetAnchor(inkEAnchor.TopLeft);
      row.Reparent(this.m_textContainer);

      let name = new inkText();
      name.SetName(n"Name");
      name.SetText(s"\(this.GetLocalizedText(line.speakerName)): ");
      name.SetFontSize(config.fontSize);
      name.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
      name.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
      name.BindProperty(n"tintColor", speakerColor);
      name.Reparent(row);

      let text = new inkText();
      text.SetName(n"Line");
      text.SetText(line.text);
      text.SetFontSize(config.fontSize);
      text.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
      text.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
      text.BindProperty(n"tintColor", textColor);
      text.SetWrapping(true, config.popupWidth - 220.0, textWrappingPolicy.Default);
      text.Reparent(row);

      i += 1;
    }
  }
}
