# Command Line and Environment in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **`Ada.Command_Line`** and
**`Ada.Environment_Variables`**. For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Args | `Argument_Count`, `Argument`, `Command_Name` |
| Environ | `Env_Set` / `Env_Value` / `Env_Clear` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 4).

## Build & test

```bash
make
make test
```

`make test` also runs the binary with sample arguments `alpha beta`.

Requires GNAT. Flags: `-gnata -gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
