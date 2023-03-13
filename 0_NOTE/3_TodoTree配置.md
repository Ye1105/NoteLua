<!--
 * @Author: 15868707168@163.com 15868707168@163.com
 * @Date: 2023-03-13 11:51:00
 * @LastEditors: 15868707168@163.com 15868707168@163.com
 * @LastEditTime: 2023-03-13 14:55:10
 * @FilePath: \LuaLesson\0_NOTE\3_TODO配置.md
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->


###### 配置展示

//TODO: 待办标记，用来标记待办的地方。表示标记处有功能代码待编写，待实现的功能在说明中会简略说明

//NOTE：说明标记，添加一些说明文字

//DONE：已完成

//BUG：有错误

//FIXME：待修复标记，用来标记一些需要修复的位置。表示标记处代码需要修正，甚至代码是错误的，不能工作，需要修复，如何修正会在说明中简略说明

//HACK:待修改标记，用来标记可能需要更改的地方。在写代码的时候，有的地方我们并不确定他是正确的，可能未来有所更改，这时候可以使用HACK标记

//XXX:改进标记，用来标记一些草率实现的地方。在写代码的时候，有些地方需要频繁修改，代码虽然实现了功能，但是实现的方法有待商榷，希望将来能改进，要改进的地方会在说明中简略说明。

//[ ]

//[X]

--TODO:

###### [Anto Color 网址](https://ant.design/docs/spec/colors-cn)

###### [Icon 网址](https://primer.style/design/foundations/icons)

###### settings.json 配置
```

    //todo tree 配置
    "todo-tree.general.tags": [
        "TODO",
        "NOTE",
        "DONE",
        "FIXME",
        "BUG",
        "HACK",
        "XXX",
        "[ ]",
        "[x]",
    ],
    //在树中显示待办事项的计数
    "todo-tree.tree.showCountsInTree": true,
    "todo-tree.highlights.useColourScheme": true,
    "todo-tree.regex.regexCaseSensitive": false,
    "todo-tree.general.statusBar": "total",
    "todo-tree.general.tagGroups": {},
    "todo-tree.highlights.customHighlight": {
        "TODO": {
            "icon": "bell",
            "foreground": "#fff",
            "iconColour": "#8c8c8c",
            "background": "#595959",
            "gutterIcon": true
        },
        "NOTE": {
            "icon": "note",
            "foreground": "#fff",
            "iconColour": "#1890ff",
            "background": "#1890ff",
            "gutterIcon": true
        },
        "DONE": {
            "icon": "verified",
            "foreground": "#fff",
            "iconColour": "#52c41a",
            "background": "#52c41a",
            "gutterIcon": true
        },
        "BUG": {
            "icon": "bug",
            "foreground": "#fff",
            "iconColour": "#f5222d",
            "background": "#f5222d",
            "gutterIcon": true
        },
        "FIXME": {
            "icon": "flame",
            "foreground": "#595959",
            "iconColour": "#fadb14",
            "background": "#fadb14",
            "gutterIcon": true
        },
        "HACK": {
            "icon": "tools",
            "foreground": "#fff",
            "background": "#eb2f96",
            "iconColour": "#eb2f96",
            "gutterIcon": true
        },
        "XXX": {
            "icon": "zap",
            "foreground": "#fff",
            "gutterIcon": true
        },
        "[ ]": {
            "icon": "issue-draft",
            "iconColour": "#f5222d",
            "background": "#f5222d",
            "gutterIcon": true
        },
        "[x]": {
            "icon": "issue-closed",
            "foreground": "#fff",
            "iconColour": "#52c41a",
            "background": "#52c41a",
            "gutterIcon": true
        }
    },
    /* 这定义了用于定位 TODO 的正则表达式。默认情况下，它会在以//、#、;开头的评论中搜索标签。、<!--或/*，以及降价待办事项列表。这应该涵盖大多数语言。但是，如果您想对其进行细化，请确保将($TAGS)保留为($TAGS)将被扩展的标记列表替换。要使某些扩展功能正常工作，($TAGS)应该出现在正则表达式中，但是，如果您需要显式扩展标签列表，基本功能应该仍然有效。 */
    "todo-tree.regex.regex": "(//|--|#|<!--|;|/\\*|^|^[ \\t]*(-|\\d+.))\\s*($TAGS)"
```


