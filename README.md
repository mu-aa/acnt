## ITWILL 교육과정 팀 프로젝트
- 팀명 : acnt
- 인원/직책 : 4명/팀장
- 개발기간 : 2023.01 ~ 2023.03
- 주제 : 가계부 사이트, 네이버 가계부 레퍼런스
- 링크 : http://itwill.xyz/acnt
- 담당 업무)
  - 수입, 지출, 예산에 대한 값 CRUD 처리
  - 저장된 수입, 지출, 예산 DB값을 반영한 그래프를 chart.js 라이브러리를 이용해 제작
  - 수입, 지출, 예산 값에 따른 그래프 계산 식 작성
  - 전체 페이지 css
  - Exception Handler를 사용한 예외 처리

![image](https://github.com/mu-aa/acnt/assets/122263555/e14fdeb3-eb08-44b8-b096-e21b4710a200)
![image](https://github.com/mu-aa/acnt/assets/122263555/e1392513-d493-4c80-8757-5475189b9cb5)
![image](https://github.com/mu-aa/acnt/assets/122263555/2e67bfeb-96cb-4c8c-b57d-57b96f5f9663)

## 화면정의서
- ### 로그인/회원가입
  - 로그인 페이지 - interceptor를 이용해 비회원이 페이지에 접근 시 로그인 페이지로 이동
![1 로그인](https://github.com/mu-aa/acnt/assets/122263555/0dcd3e16-e778-491c-a3f3-62749b734d02)
  - 회원가입 페이지 - 가입 버튼 클릭 시 형식에 맞지 않는 입력값 경고문구 출력
![2 회원가입](https://github.com/mu-aa/acnt/assets/122263555/b531bf0c-7386-400e-86de-e4f4eac2979d)
![2-1 회원가입](https://github.com/mu-aa/acnt/assets/122263555/4f90f212-c33f-4847-9f35-9cf8ad0c60c0)

- ### 지출(메인 페이지)
  - 사이드 메뉴, 출력 그래프, 값 입력표, 열 추가 및 삭제 버튼, 저장 버튼으로 구성
![3 지출](https://github.com/mu-aa/acnt/assets/122263555/3e8de2ae-bf16-4368-b4bf-9c2845bcc9f1)
  - 날짜, 출금계좌명, 분류는 option창에서 선택 / 현금, 카드, 메모는 직접 입력
![3-1 지출](https://github.com/mu-aa/acnt/assets/122263555/65a8be40-f2bd-44c2-9c30-ee0827b8c779)
![3-2 지출](https://github.com/mu-aa/acnt/assets/122263555/559a7536-0e85-47ca-865a-1bf6ded5856e)
  - 열 추가 버튼 클릭 시 열 추가 생성
![3-3 지출](https://github.com/mu-aa/acnt/assets/122263555/ad72f314-57e5-438a-9342-be9749d00bfb)
  - 선택 항목 삭제(열 삭제) 버튼 클릭 시 선택 열 삭제, 상단 체크박스로 전체 선택
![3-3-1 지출](https://github.com/mu-aa/acnt/assets/122263555/c03de03d-bd0d-4eab-a01e-d140c10c61a8)
  - 값 입력
![3-4 지출](https://github.com/mu-aa/acnt/assets/122263555/8bf176ca-51db-42d6-a980-72e4f3dca116)
  - 값 입력 후 저장 버튼 클릭 시 DB에 저장, 해당 값만큼의 그래프 출력
![3-5 지출](https://github.com/mu-aa/acnt/assets/122263555/9d3d95a4-20b0-41b3-b956-9299c79d91eb)

- ### 수입
  - 날짜, 출금계좌명, 분류는 option창에서 선택 / 현금, 카드, 메모는 직접 입력
![4 수입](https://github.com/mu-aa/acnt/assets/122263555/b4689349-674f-4357-bc76-3d628be2eda4)
  - 값 입력 후 저장 버튼 클릭 시 DB에 저장
![4-1 수입](https://github.com/mu-aa/acnt/assets/122263555/37d688ff-d291-40ab-b770-6f645d7aec16)
![4-2 수입](https://github.com/mu-aa/acnt/assets/122263555/954243f6-3657-47f0-bcc1-fffdffe1568e)

- ### 달력
  - 해당 날짜의 지출, 수입을 출력
![5 달력](https://github.com/mu-aa/acnt/assets/122263555/ca83d9f5-8880-47b9-8f1e-3b4d782b007c)
  - 클릭 시 수입/지출 내역 상세 팝업창 출력
![5-1 달력](https://github.com/mu-aa/acnt/assets/122263555/75f19727-58d7-4901-b089-9f7cf341161f)
![5-2 달력](https://github.com/mu-aa/acnt/assets/122263555/d0170a46-3612-4bf4-95e4-1544c2fe7075)

- ### 예산
  - 원하는 항목의 예산 직접 입력 가능
![6 예산](https://github.com/mu-aa/acnt/assets/122263555/3168bb88-2d80-4f4e-a022-0fffd8497154)
  - 값 입력 후 저장 버튼 클릭 시 DB에 저장
![6-1 예산](https://github.com/mu-aa/acnt/assets/122263555/ffdc3c97-9a9e-4b41-bfb9-c7f907e20069)
  - 지출 페이지에 계산값에 맞는 그래프 출력
![6-2 예산](https://github.com/mu-aa/acnt/assets/122263555/cbdb97b9-908c-4cb3-96b1-4fb1aa7081d5)
  - 지출이 예산 초과 시 붉은 그래프, 미초과시 초록 그래프, 예산에서 지출 차감값 회색 그래프
![6-3 예시](https://github.com/mu-aa/acnt/assets/122263555/5d543a53-dc85-46d1-9aab-5bfec8ff0b58)


