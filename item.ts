import { toSnbt, rawJson } from './compile-to-mcfunction.ts'

export const item = {
  quest_book: {
    id: '"minecraft:written_book"',
    Count: '1b',
    tag: {
      display: {
        Name: rawJson({
          text: "Quest Book",
          color: "light_purple",
          italic: true
        })
      },
      resolved: false,
      title: '"Quest Book"',
      author: '""',
      pages:`[${rawJson([
        {
          text: "Current Quests\n",
          color: "light_purple",
          underlined: true,
          bold: true
        },
        {
          nbt:"current[]",
          storage:"generated:quest_book",
          interpret:true,
          separator:"\n"
        }
      ])}, ${rawJson([
        {
          text: "Completed Quests\n",
          color: "light_purple",
          underlined: true,
          bold: true
        },
        {
          nbt:"completed[]",
          storage:"generated:quest_book",
          interpret:true,
          separator:"\n"
        }
      ])}]`
    }
  }
}