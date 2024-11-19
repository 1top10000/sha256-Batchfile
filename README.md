# sha256-Batchfile
sha256 bat으로 구현 성공 (엄청 느려요)<br>
사용법
```Batchfile
sha256.cmd input.txt
```
꼭 input.txt 일 필요 없고 파일 이름 입력해주세요<br>
만약 "abc"를 sha256 하고싶으면 "abc"를 십진수로 변환한다 (new Uint8Array([97, 98, 99]))<br>
### 인풋 파일 형식은
```
97
98
99
```
이런식으로 해주세요 (bat파일에 바이너리 읽기가 없어서 그런것)
