import { router, uiObserver } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Prev {
  @State message: string = "第二页"

  listener(info:uiObserver.RouterPageInfo){
    console.log('---',JSON.stringify(info,null,4))

  }

  aboutToAppear(): void {
    console.log('build之前')
    this.getUIContext().getUIObserver().on('routerPageUpdate',this.listener)
  }

  onPageShow(): void {
    console.log('页面显示')
  }

  onPageHide(): void {
    console.log('页面消失')
  }

  aboutToDisappear(): void {
    console.log('组件销毁')
  }






  build() {

    Row() {
      Column() {
        Text(this.message).fontSize(50)

        Button() {
          Text('上一页').font({
            size: 30
          })
        }.type(ButtonType.Normal).backgroundColor(Color.Blue)
        .onClick(() => {
          router.back()
        })
      }
    }
  }
}