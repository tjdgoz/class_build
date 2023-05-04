# 1. 운영체제 및 프로그램 설치
# FROM ubuntu:22.04

# RUN sudo apt install nodejs
# RUN sudo npm install -g yarn 

# 1. 운영체제 및 프로그램 설치(이미 안에 리눅스, 노드, npm, yarn 까지 모두 깔려있는 컴퓨터 다운로드하기)
FROM node:14

# 2. 내 컴퓨터에 있는 폴더나 파일을 도커 컴퓨터 안으로 복사하기
# RUN mkdir myfolder => 아래에서 copy할 때, 어차피 자동으로 만들어주므로 굳이 필요 없음!

COPY . /myfolder/

WORKDIR /myfolder/ 
# 여기서 커서 깜빡깜빡


# RUN cd /myfolder/
RUN yarn install
RUN yarn build

# 3. 도커안에서 next.js 프로그램 실행시키기
CMD yarn start