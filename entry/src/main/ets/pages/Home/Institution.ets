
@Component
export struct Institution {
  build() {
    Column() {
      Column() {
        Image($r('app.media.hot_avatar_1')).width(50).height(50).borderRadius(25)
        Text('小柯基').fontColor('#cccccc').fontSize(14)
        Text('点晴宠物之家').fontSize(20)
      }
      .height('60%')
      .justifyContent(FlexAlign.SpaceEvenly)


      Divider().strokeWidth(1).color('#cccccc').opacity(0.6)


      Column() {
        Text('待领养20只').fontColor('#cccccc').fontSize(14)

        Row(){
          ForEach([1,2,3,4,5],()=>{
            Text($r('app.string.heart')).fontColor(Color.Red)
          })
        }

      }
      .flexGrow(1)
      .justifyContent(FlexAlign.SpaceEvenly)

    }
    .width('100%')
    .height('100%')
    .shadow(ShadowStyle.OUTER_DEFAULT_XS)
    .padding({
      left: 10,
      right: 10
    })
  }
}