import { getResourceArray } from "../utils";
import { JSON } from "@kit.ArkTS";

// 获取tabBar的标题
export const TAB_AR_TITLES = getResourceArray(4, 'tab_bar_title')

// 获取tabBar
export const TAB_BAR_ICONS = [
  $r('app.media.tab_home'),
  $r('app.media.tab_home'),
  $r('app.media.tab_home'),
  $r('app.media.tab_home'),
];

export const TAB_BAR_ICONS_ACTIVE = [
  $r('app.media.tab_home_selected'),
  $r('app.media.tab_home_selected'),
  $r('app.media.tab_home_selected'),
  $r('app.media.tab_home_selected'),
];