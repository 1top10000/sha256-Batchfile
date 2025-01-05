# sha256-Batchfile
sha256 bat으로 구현 성공 (엄청 느려요)<br>
batch file 로 sha 256을 할 수 있나요<br>?<br>
저는 코드를 만들고 github에 올렸습니다.<br>
이 코드는 출처 없이 퍼가는것은 허용이지만 출처를 남겨도 좋아요<br>
하지만 단점은 아주 느리다는 점입니다<br>
(batchfile이 느려요)<br>
그리고 인풋 파일의 형식이 있어서 좀 별로이지만.... <br>
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
