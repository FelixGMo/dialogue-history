module DialogueHistory.Core

import DialogueHistory.Utils.LineData

public class Queue {
  private let container: array<LineData>;

  public final func Initialize() -> Void {
    this.container = [];
  }

  public final func AddLine(line: LineData) -> Void {
    ArrayPush(this.container, line);
  }

  public final func AddLineWithLimit(line: LineData, limit: Int32) -> Void {
    if this.GetSize() >= limit {
      this.TrimLines(limit);
    }

    this.AddLine(line);
  }

  public final func GetSize() -> Int32 {
    return ArraySize(this.container);
  }

  public final func GetLines() -> array<LineData> {
    return this.container;
  }

  public final func Clear() -> Void {
    ArrayClear(this.container);
  }

  private final func TrimLines(newCount: Int32) -> Void {
    let size = this.GetSize();

    let diff = size - newCount;
    let i = 0;

    while i <= diff {
      ArrayErase(this.container, 0);
      i += 1;
    }
  }
}