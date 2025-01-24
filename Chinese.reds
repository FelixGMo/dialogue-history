module DialogueHistory.Localization.Packages

import Codeware.Localization.*

// Note for translators: Any text in curly braces should be kept as is, as it is
// a placeholder for a value that will be inserted into the string at runtime.

public class chinese extends ModLocalizationPackage {
  protected func DefineTexts() {
    this.Text("DialogueHistory-Title",         "对话历史");
    this.Text("DialogueHistory-Action-Label",  "对话历史");

    this.Text("DialogueHistory-UI-Category-Empty", "[无对话内容]");
    this.Text("DialogueHistory-UI-Category-Today", "今天");
    this.Text("DialogueHistory-UI-Category-Day",   "日期{int}");

    this.Text("DialogueHistory-UI-Log-None",           "[未选择条目]");
    this.Text("DialogueHistory-UI-Log-Empty",          "[无对话内容]");
    this.Text("DialogueHistory-UI-Log-UnknownSpeaker", "未知说话者");

    this.Text("DialogueHistory-UI-Label-Clear",  "清除");
    this.Text("DialogueHistory-UI-Label-Delete", "删除");
    this.Text("DialogueHistory-UI-Label-Close",  "关闭");

    this.Text("DialogueHistory-UI-Prompt-Clear-Title",        "清除日期");
    this.Text("DialogueHistory-UI-Prompt-Clear-Description",  "您确定要清除今天的日志吗？");
    this.Text("DialogueHistory-UI-Prompt-Delete-Title",       "删除日期");
    this.Text("DialogueHistory-UI-Prompt-Delete-Description", "您确定要删除日期{int}的日志吗？");

    this.Text("DialogueHistory-Config-General",                            "常规");
    this.Text("DialogueHistory-Config-General-InputHint-DisplayName",      "添加输入提示");
    this.Text("DialogueHistory-Config-General-InputHint-Description",      "是否为弹出窗口添加输入提示。");
    this.Text("DialogueHistory-Config-General-Lifecycle-DisplayName",      "执行周期");
    this.Text("DialogueHistory-Config-General-Lifecycle-Description",      "是否在一定天数后删除日志。");
    this.Text("DialogueHistory-Config-General-LifecycleDays-DisplayName",  "天数");
    this.Text("DialogueHistory-Config-General-LifecycleDays-Description",  "保留日志的天数。");
    this.Text("DialogueHistory-Config-General-Persistent-DisplayName",     "忽略持续对话");
    this.Text("DialogueHistory-Config-General-Persistent-Description",     "是否在历史记录中存储持久字幕，禁用此功能很可能会导致重复对话。");

    this.Text("DialogueHistory-Config-Interface",                               "界面");
    this.Text("DialogueHistory-Config-Interface-ShowTime-DisplayName",          "显示时间");
    this.Text("DialogueHistory-Config-Interface-ShowTime-Description",          "是否显示条目的时间戳。");
    this.Text("DialogueHistory-Config-Interface-TimeFormat-DisplayName",        "时间格式");
    this.Text("DialogueHistory-Config-Interface-TimeFormat-Description",        "时间应该用何格式。");
    this.Text("DialogueHistory-Config-Interface-Animate-DisplayName",           "动态");
    this.Text("DialogueHistory-Config-Interface-Animate-Description",           "弹出窗口的某些部分是否应设置动态。");
    this.Text("DialogueHistory-Config-Interface-Height-DisplayName",            "高度");
    this.Text("DialogueHistory-Config-Interface-Height-Description",            "弹窗高度。");
    this.Text("DialogueHistory-Config-Interface-Width-DisplayName",             "宽度");
    this.Text("DialogueHistory-Config-Interface-Width-Description",             "弹窗宽度");
    this.Text("DialogueHistory-Config-Interface-FontSize-DisplayName",          "字体大小");
    this.Text("DialogueHistory-Config-Interface-FontSize-Description",          "对话的字体大小");
    this.Text("DialogueHistory-Config-Interface-Margin-DisplayName",            "间距");
    this.Text("DialogueHistory-Config-Interface-Margin-Description",            "对话与对话之间要留出的间距。");
    this.Text("DialogueHistory-Config-Interface-FrameColor-DisplayName",        "边框颜色");
    this.Text("DialogueHistory-Config-Interface-FrameColor-Description",        "部件边框的颜色。");
    this.Text("DialogueHistory-Config-Interface-TimeColor-DisplayName",         "时间颜色");
    this.Text("DialogueHistory-Config-Interface-TimeColor-Description",         "对话时间戳的颜色。");
    this.Text("DialogueHistory-Config-Interface-VNameColor-DisplayName",        "V名字颜色");
    this.Text("DialogueHistory-Config-Interface-VNameColor-Description",        "字幕中V名字的颜色。");
    this.Text("DialogueHistory-Config-Interface-OverheadNameColor-DisplayName", "头顶名字颜色");
    this.Text("DialogueHistory-Config-Interface-OverheadNameColor-Description", "头顶字幕中名字的颜色（例如您与之交互的NPC）。");
    this.Text("DialogueHistory-Config-Interface-RadioNameColor-DisplayName",    "电台名字颜色");
    this.Text("DialogueHistory-Config-Interface-RadioNameColor-Description",    "电台字幕中名字的颜色。");
    this.Text("DialogueHistory-Config-Interface-GlobalTVNameColor-DisplayName", "电视名字颜色");
    this.Text("DialogueHistory-Config-Interface-GlobalTVNameColor-Description", "电视字幕中名字的颜色。");
    this.Text("DialogueHistory-Config-Interface-DefaultNameColor-DisplayName",  "默认名字颜色");
    this.Text("DialogueHistory-Config-Interface-DefaultNameColor-Description",  "字幕中名称的默认颜色。");
    this.Text("DialogueHistory-Config-Interface-TextColor-DisplayName",         "字幕文本颜色");
    this.Text("DialogueHistory-Config-Interface-TextColor-Description",         "所有字幕文本的颜色。");

    this.Text("DialogueHistory-Color-White",        "白色");
    this.Text("DialogueHistory-Color-Red",          "红色");
    this.Text("DialogueHistory-Color-ActiveRed",    "活性红");
    this.Text("DialogueHistory-Color-MildRed",      "浅红色");
    this.Text("DialogueHistory-Color-DarkRed",      "暗红色");
    this.Text("DialogueHistory-Color-FaintRed",     "淡红色");
    this.Text("DialogueHistory-Color-Blue",         "蓝色");
    this.Text("DialogueHistory-Color-ActiveBlue",   "活性蓝");
    this.Text("DialogueHistory-Color-MildBlue",     "浅蓝色");
    this.Text("DialogueHistory-Color-DarkBlue",     "深蓝色");
    this.Text("DialogueHistory-Color-FaintBlue",    "淡蓝色");
    this.Text("DialogueHistory-Color-MediumBlue",   "中蓝色");
    this.Text("DialogueHistory-Color-Yellow",       "黄色");
    this.Text("DialogueHistory-Color-ActiveYellow", "活性黄");
    this.Text("DialogueHistory-Color-MildYellow",   "浅黄色");
    this.Text("DialogueHistory-Color-Gold",         "金色");
    this.Text("DialogueHistory-Color-FaintYellow",  "淡黄色");
    this.Text("DialogueHistory-Color-DarkGold",     "暗金色");
    this.Text("DialogueHistory-Color-Green",        "绿色");
    this.Text("DialogueHistory-Color-MildGreen",    "浅绿色");
    this.Text("DialogueHistory-Color-ActiveGreen",  "活性绿");
    this.Text("DialogueHistory-Color-DarkGreen",    "深绿色");
    this.Text("DialogueHistory-Color-Orange",       "橙色");
    this.Text("DialogueHistory-Color-Grey",         "灰色");
    this.Text("DialogueHistory-Color-DarkGrey",     "深灰色");

    this.Text("DialogueHistory-TimeFormat-TwelveHour",     "12小时制");
    this.Text("DialogueHistory-TimeFormat-TwentyFourHour", "24小时制");
  }
}
