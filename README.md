# SoundMod 音频转换工具

这是一个用于将游戏音频文件（`.bnk` / `.wem`）转换为标准 `.ogg` 格式的工具集。本工具基于原版 SoundMod 进行了修改与增强。

## 📜 历史与致谢

- **原作者/时间**：xenomorph (2020/4/15 3:16)
- **原工具地址**：[SoundMod](http://www.mediafire.com/file/en3m7mctkfedeju/soundMod.zip/file)
- **修改说明**：
  - 修改了 `convert2ogg`，实现将 wem 转为 ogg。
  - 添加了一个 BNK 的解析工具（`bnkextr.exe`）以及 `bnk2wem.bat`。
- **参考文章**：
  - [Reddit: How to convert wem files to ogg](https://www.reddit.com/r/LeaksByDaylight/comments/chnea2/how_to_convert_wem_files_to_ogg/)
  - [Pastebin](https://pastebin.com/wrhYYgqb)
  - [aeink.com](http://www.aeink.com/340.html)

---

## 📂 目录结构

在使用前，请确保你的文件夹结构如下：
- `BnkInput/`：放入待转换的 `.bnk` 文件（**需自己新建**）
- `WemInput/`：放入待转换的 `.wem` 文件（**需自己新建**）
- `WemOutput/`：转换后的输出目录（**需自己新建**）
- `tools/`：包含转换所需的核心程序（如 `ww2ogg.exe`, `bnkextr.exe` 等）
- `SoundFileEditor.exe`：音频文件编辑工具

---

## 🛠️ 使用方式

> ⚠️ **重要提示**：
> 1. 转换过程中，**原始的 `.bnk` 和 `.wem` 文件会被自动删除**！请务必提前做好备份。
> 2. 开始前，请确保 `BnkInput`、`WemInput`、`WemOutput` 这 3 个文件夹内都是**空的**。

### 场景一：将 BNK 转换为 OGG（完整流程）

1. 将 `.bnk` 后缀的文件放入 `BnkInput` 文件夹中。
2. 运行 `Bnk2wem.bat`。程序会将解析生成的 `.wem` 文件自动保存到 `WemInput` 文件夹中。
3. 接着运行 `ww2ogg.bat`，即可将 `WemInput` 中的 `.wem` 转化为 `.ogg` 文件（最终文件会输出到 `WemOutput` 中）。

### 场景二：仅将 WEM 转换为 OGG（跳过第一步）

1. 如果你已经有了 `.wem` 文件，直接从“场景一”的第 3 步开始。
2. 手动将 `.wem` 文件拷贝到 `WemInput` 目录下。
3. 运行 `ww2ogg.bat` 即可完成转换。

---

## ⚠️ 免责声明

本工具包含 `.exe` 可执行文件和 `.dll` 运行库（如 `msvcr100d.dll`）。