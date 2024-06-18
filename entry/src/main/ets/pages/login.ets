@Entry
@Component
struct Login {
  @State message: string = 'Hello World'

  build() {
    // space 行与行间距
    Column({ space: 15 }) {
      Row(){
        Text("Welcome, this application is built by ArkTs.")
          .fontSize(14)
          .textAlign(TextAlign.Center)
          .width("100%")
          .fontColor("white")
      }
      .height(50)
      .width('90%')

      Row() {
        Image('assets/images/login.png')
          .height(400)
          .width("80%")
      }
      // 内容位置
      .justifyContent(FlexAlign.Center)
      // 输入框
      Row({}){
        TextInput({
              placeholder:"please entry your account"
            })
          // 默认输入类型
          .type(InputType.Normal)
      }
      .width('90%')
      .height(50)
      .backgroundColor("white")

      // 输入框
      Row({}){
        TextInput({
          placeholder:"please entry your password",
        })
          //  密码输入类型
          .type(InputType.Password)
      }
      .width('90%')
      .height(50)
      .backgroundColor("white")



        // 登录按钮
        Button("登录").width('90%')
      .height(50)


       // 注册按钮
       Button("注册").width('90%')
      .height(50)

      // 已有账户提示
      Row(){
        Text("Already have account?")
          .fontSize(14)
          .textAlign(TextAlign.Center)
          .width("100%")
          .fontColor("white")
      }
      .height(50)
      .width('90%')

    }
    .height("100%")
    .width('100%')
    .backgroundColor("#2db7f5")
  }
}