@Entry
@Component
struct LanguagePage {
  @State message: string = `Hello`;
  build() {
    Column(){
      Text($r("app.string.title"))
        .fontColor($r("app.color.start_window_background"))
        .fontSize($r("app.float.page_text_font_size"))
      TextInput({placeholder:$r("app.string.notice_text")})
      Image($r("app.media.startIcon"))
        .width(`100%`)
        .height(`100%`)
    }
    .height('100%')
    .width('100%')
  }
}