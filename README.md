# LinkItHard

Scans all files within a directory mounted as `/app` for duplicate files.
All duplicates are replaced with hard links.

Example:
```bash
mkdir -p testfolder
echo "touch my inode" > testfolder/testfile
cp testfolder/testfile testfolder/copy
ls -i testfolder
docker run --rm -v $(pwd)/testfolder/:/app romankonz/linkithard
ls -i testfolder
```