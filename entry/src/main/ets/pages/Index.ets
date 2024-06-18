import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello HarmonyOS'

  build() {
    Row() {
      Column({space:10}) {
        Text("Hello")
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Start)
          .width("80%")
        Text("HarmonyOS")
          .fontSize(48)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Start)
          .width("80%")

        Row() {
          Button() {
            Text("welcome".toLocaleUpperCase())
              .fontSize(16)
          }.height(30).width(150).onClick(() =>{
            router.push({ url: 'pages/login' })
          })
        }.justifyContent(FlexAlign.End).width("80%")

      }
      .width('100%')
    }
    .height('100%')
  }
}