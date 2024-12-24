module DialogueHistory.Utils

public enum Color {
  White = 0,
  Red = 1,
  MildRed = 2,
  Blue = 3,
  Yellow = 4,
  Green = 5,
  Orange = 6,
}

public final static func GetColorClassName(color: Color) -> CName {
  switch color {
    case Color.White:
      return n"MainColors.White";
    case Color.Red:
      return n"MainColors.Red";
    case Color.MildRed:
      return n"MainColors.MildRed";
    case Color.Blue:
      return n"MainColors.Blue";
    case Color.Yellow:
      return n"MainColors.Yellow";
    case Color.Green:
      return n"MainColors.Green";
    case Color.Orange:
      return n"MainColors.Orange";
    default:
      return n"MainColors.White";
  }
}
