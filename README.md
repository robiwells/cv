# 📋 Rob Wells CV

A repository containing the LaTeX source of Rob Wells' curriculum vitae. Tested and deployed with GitHub Actions.

---
[![CVu last release](https://img.shields.io/github/release-date/robiwells/cv?logo=github&label=Last%20Release)](https://github.com/robiwells/cv/releases)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/robiwells/cv/ci.yml?logo=github&label=CI)](https://github.com/robiwells/cv/actions/workflows/test-build.yml)

## 🤖 Deployment

Deployment is automated by [GitHub Actions](https://github.com/robiwells/cv/actions).

- Pushes to `main` trigger a new release of the [latest cv](https://github.com/robiwells/cv/releases/tag/latest), available in several formats.

  | Artifact               | Link                                                                          | Mirror                                         |
  | ---------------------- | ----------------------------------------------------------------------------- | ---------------------------------------------- |
  | CV                     | <https://robiwells.github.io/cv/cv.html>                                   |                                                |
  | CV, Embedded           | <https://robiwells.github.io/cv/cv-embed.html>                             |                                                |
  | CV, Download           | <https://github.com/robiwells/cv/releases/download/latest/cv.pdf>          |                                                |

- Manually pushed [releases](https://github.com/robiwells/cv/releases) also trigger workflows to upload artifacts.

## 🔧 Building

### Dependencies

- [TeXLive, full](https://www.tug.org/texlive/)
- [Make](https://www.gnu.org/software/make/)
- [j2cli](https://github.com/kolypto/j2cli)

### Commands

- **Build the cirriculum vitae**:

  ```bash
  make cv
  ```

- **Purge all**:

  ```bash
  make clean
  ```

- **Open PDFs**:

  ```bash
  make open
  ```

## 🔏 License

This project is [MIT](./LICENSE) licensed.
