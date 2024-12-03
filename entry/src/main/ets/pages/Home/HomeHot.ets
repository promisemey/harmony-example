import { Size } from "@ohos/hypium"
import { getResourceArray } from "../../utils"
import { Institution } from "./Institution"

@Component
export struct HomeHot {
  build() {
    Column() {
      Row() {
        List({
          space: 10,
          initialIndex: 0
        }) {
          ForEach([1, 2, 3, 4], (item: number) => {
            ListItem() {
              Institution()
            }
            .width(150)
            .height(239)
            .borderRadius(8)
            .shadow(ShadowStyle.OUTER_DEFAULT_XS)
            .margin(5)
          })
        }
        .listDirection(Axis.Horizontal)
        .scrollBar(BarState.Off)
        .padding(5)
      }
    }
  }
}