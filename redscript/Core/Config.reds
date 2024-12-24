module DialogueHistory.Core

import DialogueHistory.Utils.*
import Codeware.UI.*

public class Config extends ScriptableService {
  // ---
  // GENERAL
  // ---

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-General")
  @runtimeProperty("ModSettings.category.order", "1")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-General-InputHint-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-General-InputHint-Description")
  public let showInputHint: Bool = true;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-General")
  @runtimeProperty("ModSettings.category.order", "1")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-General-Limit-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-General-Limit-Description")
  public let limitHistory: Bool = false;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-General")
  @runtimeProperty("ModSettings.category.order", "1")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-General-MaxEntries-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-General-MaxEntries-Description")
  @runtimeProperty("ModSettings.dependency", "limitHistory")
  @runtimeProperty("ModSettings.min", "1")
  @runtimeProperty("ModSettings.max", "1000")
  @runtimeProperty("ModSettings.step", "1")
  public let maxEntries: Int32 = 100;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-General")
  @runtimeProperty("ModSettings.category.order", "1")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-General-Persistent-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-General-Persistent-Description")
  public let ignorePersistentLines: Bool = true;

  // ---
  // INTERFACE
  // ---

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-Interface")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-Interface-Height-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-Interface-Height-Description")
  @runtimeProperty("ModSettings.min", "0")
  @runtimeProperty("ModSettings.max", "2000.0")
  @runtimeProperty("ModSettings.step", "1.0")
  public let popupHeight: Float = 1140.0;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-Interface")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-Interface-Width-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-Interface-Width-Description")
  @runtimeProperty("ModSettings.min", "0")
  @runtimeProperty("ModSettings.max", "2000.0")
  @runtimeProperty("ModSettings.step", "1.0")
  public let popupWidth: Float = 1550.0;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-Interface")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-Interface-FontSize-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-Interface-FontSize-Description")
  @runtimeProperty("ModSettings.min", "1")
  @runtimeProperty("ModSettings.max", "100")
  @runtimeProperty("ModSettings.step", "1")
  public let fontSize: Int32 = 30;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-Interface")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-Interface-Margin-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-Interface-Margin-Description")
  @runtimeProperty("ModSettings.min", "0.0")
  @runtimeProperty("ModSettings.max", "50.0")
  @runtimeProperty("ModSettings.step", "0.1")
  public let margin: Float = 40.0;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-Interface")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-Interface-FrameColor-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-Interface-FrameColor-Description")
  @runtimeProperty("ModSettings.displayValues.White", "DialogueHistory-Color-White")
  @runtimeProperty("ModSettings.displayValues.Red", "DialogueHistory-Color-Red")
  @runtimeProperty("ModSettings.displayValues.MildRed", "DialogueHistory-Color-MildRed")
  @runtimeProperty("ModSettings.displayValues.Blue", "DialogueHistory-Color-Blue")
  @runtimeProperty("ModSettings.displayValues.Yellow", "DialogueHistory-Color-Yellow")
  @runtimeProperty("ModSettings.displayValues.Green", "DialogueHistory-Color-Green")
  @runtimeProperty("ModSettings.displayValues.Orange", "DialogueHistory-Color-Orange")
  public let frameColor: Color = Color.MildRed;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-Interface")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-Interface-SpeakerColor-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-Interface-SpeakerColor-Description")
  @runtimeProperty("ModSettings.displayValues.White", "DialogueHistory-Color-White")
  @runtimeProperty("ModSettings.displayValues.Red", "DialogueHistory-Color-Red")
  @runtimeProperty("ModSettings.displayValues.MildRed", "DialogueHistory-Color-MildRed")
  @runtimeProperty("ModSettings.displayValues.Blue", "DialogueHistory-Color-Blue")
  @runtimeProperty("ModSettings.displayValues.Yellow", "DialogueHistory-Color-Yellow")
  @runtimeProperty("ModSettings.displayValues.Green", "DialogueHistory-Color-Green")
  @runtimeProperty("ModSettings.displayValues.Orange", "DialogueHistory-Color-Orange")
  public let speakerColor: Color = Color.Red;

  @runtimeProperty("ModSettings.mod", "Dialogue History")
  @runtimeProperty("ModSettings.category", "DialogueHistory-Config-Interface")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "DialogueHistory-Config-Interface-TextColor-DisplayName")
  @runtimeProperty("ModSettings.description", "DialogueHistory-Config-Interface-TextColor-Description")
  @runtimeProperty("ModSettings.displayValues.White", "DialogueHistory-Color-White")
  @runtimeProperty("ModSettings.displayValues.Red", "DialogueHistory-Color-Red")
  @runtimeProperty("ModSettings.displayValues.MildRed", "DialogueHistory-Color-MildRed")
  @runtimeProperty("ModSettings.displayValues.Blue", "DialogueHistory-Color-Blue")
  @runtimeProperty("ModSettings.displayValues.Yellow", "DialogueHistory-Color-Yellow")
  @runtimeProperty("ModSettings.displayValues.Green", "DialogueHistory-Color-Green")
  @runtimeProperty("ModSettings.displayValues.Orange", "DialogueHistory-Color-Orange")
  public let textColor: Color = Color.White;

  // ---
  // PROPERTIES
  // ---

  private let lines: ref<Queue>;

  private func Listen() -> Void {
    ModSettings.RegisterListenerToClass(this);
  }

  private func Unlisten() -> Void {
    ModSettings.UnregisterListenerToClass(this);
  }

  private func Register() -> Void {
    this.Listen();

    GameInstance.GetCallbackSystem().RegisterCallback(n"Session/Ready", this, n"OnSessionReady");
  }

  private cb func OnLoad() -> Void {
    this.Register();

    this.lines = new Queue();
    this.lines.Initialize();
  }

  private cb func OnReload() -> Void {
    this.Listen();
  }

  private cb func OnUninitialize() -> Void {
    this.Unlisten();
    
    this.lines.Clear();
    this.lines = null;
  }

  private cb final func OnSessionReady(event: ref<GameSessionEvent>) -> Void {
    this.lines.Clear();
  }

  public final func GetFrameColor() -> CName {
    return GetColorClassName(this.frameColor);
  }

  public final func GetSpeakerColor() -> CName {
    return GetColorClassName(this.speakerColor);
  }

  public final func GetTextColor() -> CName {
    return GetColorClassName(this.textColor);
  }

  public final func AddLine(line: LineData) -> Void {
    if line.isPersistent && this.ignorePersistentLines {
      return;
    }

    if this.limitHistory {
      this.lines.AddLineWithLimit(line, this.maxEntries);
    } else {
      this.lines.AddLine(line);
    }
  }

  public final func GetLines() -> array<LineData> {
    return this.lines.GetLines();
  }

  public final func ClearLines() -> Void {
    this.lines.Clear();
  }

  public final static func Get() -> ref<Config> {
    return GameInstance.GetScriptableServiceContainer().GetService(n"DialogueHistory.Core.Config") as Config;
  }
}
