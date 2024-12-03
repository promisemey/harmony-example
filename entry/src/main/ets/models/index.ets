import { TAB_AR_TITLES, TAB_BAR_ICONS, TAB_BAR_ICONS_ACTIVE } from "../constants/tabs"

export interface TabBar {
  text: ResourceStr,
  icon: ResourceStr,
  activeIcon: ResourceStr,
}

export const getTabBars = (): TabBar[] => {
  return TAB_AR_TITLES.map((text, index) => {

    const tabBar: TabBar = {
      text,
      icon: TAB_BAR_ICONS[index],
      activeIcon: TAB_BAR_ICONS_ACTIVE[index],
    }

    return tabBar
  })
}

