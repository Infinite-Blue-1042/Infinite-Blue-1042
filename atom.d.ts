export {}
import {Disposable} from "atom"
declare module "atom/dependencies/text-buffer/src/text-buffer" {
  interface TextBuffer {
    emitDidStopChangingEvent(): void
    getLanguageMode(): {
      readonly fullyTokenized?: boolean
      readonly tree?: boolean
    }
  }
}
  interface TextEditorElement {
    setUpdatedSynchronously(val: boolean): void
}
