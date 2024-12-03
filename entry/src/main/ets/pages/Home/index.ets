import { getResourceArray } from "../../utils"
import { JSON } from "@kit.ArkTS"
import { HomeHot } from "./HomeHot"
import { Subfield } from "./Subfield"

@Component
export struct Home {
  private color: number[] = [1,2,3]

  @Builder
  SwiperItem(index: number) {
    Column() {
      Text(JSON.stringify(index))
    }.width('100%').height(200).backgroundImage($r(`app.media.u_${index}`)).backgroundImageSize(ImageSize.FILL)
  }

  build() {

      Column() {
        Scroll() {
          Column(){
            Swiper() {
              ForEach(this.color, (i: number) => {
                this.SwiperItem(i)
              })
            }.onChange((index: number) => {
            })

            Subfield({
              title: '领养机构',
              sub: '副标题'
            })
            HomeHot()

            Subfield({
              title: '领养机构',
              sub: '副标题'
            })
            HomeHot()

            Subfield({
              title: '领养机构',
              sub: '副标题'
            })
            HomeHot()
          }
        }


      }.height('100%')


  }
}