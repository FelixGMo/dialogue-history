module DialogueHistory.Utils.Logger

private static final func GenerateTrace() -> String {
  let entries = GetStackTrace(1, true);
  let entry = entries[0];
  let trace = "";

  if IsDefined(entry.object) {
    trace = s"[\(entry.class)] [\(entry.function)]";
  } else {
    trace = s"[\(entry.function)]";
  }

  return trace;
}

public static final func DHLog(message: String) -> Void {
  ModLog(n"DialogueHistory", s"\(GenerateTrace()) Info: \(message)");
}

public static final func DHLogWarning(message: String) -> Void {
  ModLog(n"DialogueHistory", s"\(GenerateTrace()) Warn: \(message)");
}

public static final func DHLogError(message: String) -> Void {
  ModLog(n"DialogueHistory", s"\(GenerateTrace()) Error: \(message)");
}