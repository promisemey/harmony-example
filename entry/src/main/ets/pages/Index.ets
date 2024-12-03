import { getTabBars, TabBar } from '../models';
import { Home } from './Home';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State banner: Color[] = [Color.Red, Color.Blue, Color.Pink]
  @State activeIndex: number = 0

  isActive(index: number): boolean {
    return this.activeIndex === index;
  }

  @Builder
  TabBarBuilder(tabBar: TabBar, index: number) {
    Column() {
      Image(this.isActive(index) ? tabBar.activeIcon : tabBar.icon)
        .width(24)
        .height(24)
        .margin({ bottom: 4 })
      Text(tabBar.text)
        .fontSize(10)
        .fontWeight(500)
        .fontColor(this.isActive(index) ? '#D0092D' : Color.Black)
        .opacity(this.isActive(index) ? 1 : 0.4)
    }
  }

  build() {

    Tabs({
      barPosition: BarPosition.End
    }) {
      ForEach(getTabBars(), (tabBar: TabBar, index: number) => {
        TabContent() {
          Home()
        }
        .tabBar(this.TabBarBuilder(tabBar, index))

      }, (tabBar: TabBar) => JSON.stringify(tabBar))
    }.onChange((index) => {
      this.activeIndex = index
    }).expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])

  }
}


// 最大宽度 高度自定义
@Styles
function fullWcH() {
  .width('100%')
  .height('100%')

}


@Styles
function grayShadow() {
  .shadow(
    {
      radius: 10,
      // offsetX: 1,
      // offsetY: 1,
      color: 'rgba(0, 0, 0, .1)'
    }
  )
}
