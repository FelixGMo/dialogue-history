module DialogueHistory.Localization.Packages

import Codeware.Localization.*

public class English extends ModLocalizationPackage {
  protected func DefineTexts() {
    this.Text("DialogueHistory-Title",        "Dialogue History");
    this.Text("DialogueHistory-Action-Label", "Dialogue History");
    this.Text("DialogueHistory-Empty",        "[No lines to show]");

    this.Text("DialogueHistory-Config-General",                        "General");
    this.Text("DialogueHistory-Config-General-InputHint-DisplayName",  "Add Input Hint");
    this.Text("DialogueHistory-Config-General-InputHint-Description",  "Whether to add an input hint for the popup.");
    this.Text("DialogueHistory-Config-General-Limit-DisplayName",      "Limit History");
    this.Text("DialogueHistory-Config-General-Limit-Description",      "Whether to limit the amount of lines stored in the history.");
    this.Text("DialogueHistory-Config-General-MaxEntries-DisplayName", "Entries Limit");
    this.Text("DialogueHistory-Config-General-MaxEntries-Description", "The maximum amount of lines to store in the history.");
    this.Text("DialogueHistory-Config-General-Persistent-DisplayName", "Ignore Persistent Lines");
    this.Text("DialogueHistory-Config-General-Persistent-Description", "Whether to not store persistent subtitles in the history, which will most likely lead to repeated lines if disabled.");

    this.Text("DialogueHistory-Config-Interface",                          "Interface");
    this.Text("DialogueHistory-Config-Interface-Height-DisplayName",       "Height");
    this.Text("DialogueHistory-Config-Interface-Height-Description",       "The height of the popup.");
    this.Text("DialogueHistory-Config-Interface-Width-DisplayName",        "Width");
    this.Text("DialogueHistory-Config-Interface-Width-Description",        "The width of the popup.");
    this.Text("DialogueHistory-Config-Interface-FontSize-DisplayName",     "Font Size");
    this.Text("DialogueHistory-Config-Interface-FontSize-Description",     "The font size for lines.");
    this.Text("DialogueHistory-Config-Interface-Margin-DisplayName",       "Margin");
    this.Text("DialogueHistory-Config-Interface-Margin-Description",       "The amount of space to leave between lines.");
    this.Text("DialogueHistory-Config-Interface-FrameColor-DisplayName",   "Frame Color");
    this.Text("DialogueHistory-Config-Interface-FrameColor-Description",   "The color of the frame of the widget.");
    this.Text("DialogueHistory-Config-Interface-SpeakerColor-DisplayName", "Speaker Color");
    this.Text("DialogueHistory-Config-Interface-SpeakerColor-Description", "The color of the speaker's name.");
    this.Text("DialogueHistory-Config-Interface-TextColor-DisplayName",    "Text Color");
    this.Text("DialogueHistory-Config-Interface-TextColor-Description",    "The color of the text.");

    this.Text("DialogueHistory-Color-White",   "White");
    this.Text("DialogueHistory-Color-Red",     "Red");
    this.Text("DialogueHistory-Color-MildRed", "Mild Red");
    this.Text("DialogueHistory-Color-Blue",    "Blue");
    this.Text("DialogueHistory-Color-Yellow",  "Yellow");
    this.Text("DialogueHistory-Color-Green",   "Green");
    this.Text("DialogueHistory-Color-Orange",  "Orange");
  }
}
