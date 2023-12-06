# Welcome to ISSUE MACHINE 🤖

### Are you tired of manually creating and updating your JIRA issues? Simplify!

Start by having an open conversation about your past, present and future (software engineering) issues with `The Wizard of Issue Tracking System(s)`

https://chat.openai.com/g/g-iWwsAdcvO-the-wizard-of-issue-tracking-system-s

And you will receive the human-readable draft if your issues:

```md
    JIRA SEARCH project = _PROJECT_ AND "Epic Link" = _EPIC_LINK_ AND assignee = _USERNAME_
    Summary | [Type: + new feature / @ bug / % task / ^ improvement] | Description

- This is a Bug | @ | This is the description of the Bug
- This is a New feature | + | This is the description of the new Feature
- This is a Task | % | This is the description of the Task
- This is an Improvement | ^ | This is the description of the Improvement
```

Clone the project https://github.com/etozzato/issue-wizard to your desired location.

Copy your first template.md to the `input/` folder and when you are ready to import the issues into JIRA, parse it with:

```sh
$ ruby ./bin/convert.rb input.md
```

And you will obtain the CSV output that can be imported combined with the import configuration `config/import.txt`:

```csv
Assignee|Summary|Issue Type|Description|Epic Link
_USERNAME_|This is a Bug|@|This is the description of the Bug|_EPIC_LINK_
_USERNAME_|This is a New feature|+|This is the description of the new Feature|_EPIC_LINK_
_USERNAME_|This is a Task|%|This is the description of the Task|_EPIC_LINK_
_USERNAME_|This is an Improvement|^|This is the description of the Improvement|_EPIC_LINK_
```

If you are using VSCode, you can configure a keybinding to parse the currently open file, for example:

```json
  {
    "key": "ctrl+numpad5",
    "command": "workbench.action.terminal.sendSequence",
    "args": {
      "text": "ruby ./bin/convert.rb ${file}\u000D"
    }
  }
```

Last updated: `Wed Dec  6 15:35:21 PST 2023`