# Shell scripts

![](https://media.geeksforgeeks.org/wp-content/uploads/cli_example.png)

![](https://img.shields.io/github/stars/pandao/editor.md.svg) ![](https://img.shields.io/github/forks/pandao/editor.md.svg) ![](https://img.shields.io/github/tag/pandao/editor.md.svg) ![](https://img.shields.io/github/release/pandao/editor.md.svg) ![](https://img.shields.io/github/issues/pandao/editor.md.svg) ![](https://img.shields.io/bower/v/editor.md.svg)


------------


## About scripts

### tarimg and cpimg:
These scripts search for images recursively from the current directory where they are executed.

Both scripts search for files with the following extensions:
- png
- jpg
- jpeg
- svg
- raw
- gif
- heif
- mbp
- tiff
- psd

Once the files are found, they are copied to a new directory called my-images, which is created in the current working directory. This is what cpimg does. On the other hand, tarimg compresses the folder and its files into a `.tar.gz` archive, then deletes the original folder and its contents, leaving only the compressed file.

