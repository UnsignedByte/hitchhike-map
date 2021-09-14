export const CONSTS = {
  slots: Object.assign({
    "armor.feet":100,
    "armor.legs":101,
    "armor.chest":102,
    "armor.head":103,
    "weapon.offhand":-106
  }, Object.fromEntries(Array.from(Array(36).keys()).map(x=>[`container.${x}`, x])))
}