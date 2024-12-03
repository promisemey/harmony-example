@Component
export struct Subfield{
  @Prop title:string
  @Prop sub:string

  build() {
    Flex({
      alignItems: ItemAlign.Center,
      justifyContent: FlexAlign.SpaceBetween
    }) {
      Column() {
        Text(this.title)
          .font({
            size: 20,
            weight: 700
          })

      }

      Column() {
        Text(this.sub).font({
          size: 16
        })
      }
    }.width('100%').padding(10)
  }
}