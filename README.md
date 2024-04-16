# 브랜치 정의
master : 제품으로 유저들이 사용하는 브랜치
develop : 공통으로 쓰는 개발을 위한 브랜치
feature : 기능을 개발하는 개인 브랜치




# 브랜치 사용규칙

하나의 기능은 하나의 커밋으로 합니다.

자신의 Pull Reqyest는 스스로 merge 합니다.

develop 브랜치에 변경사항이 생길경우 pull 합니다.

꼭 리뷰를 받습니다.



# 커밋 메세지 규칙

유의미한 코드 단위 / 기능 완료 시에 커밋

커밋 메세지 작성시 첫 줄엔 제목 작성, 추가 설명이 필요할 경우 줄을 바꿔서 작성

커밋 메세지 첫 시작은 
- Add : 파일 추가 / 기능 및 함수 추가
- Delete : 파일 삭제 / 기능 및 함수 삭제
- Fix : 버그 수정, 에러 해결 등
- Refactor : 기존 파일 개선 / 보안
- Move : 파일 위치 or 이름 변경 등 실제 코드내용이 변경없을때


# 상황별 해야할 일

Projects / teamProject에 Todo에서 자신이 해야 할 일을 확인 후
Open in new tab 클릭 우측 Development 탭에 Create a branch 클릭 
Branch 이름은 Feature-기능과 같이 설정 후 Change branch source 클릭 해서
해당 브랜치 소스를 develop으로 변경하여 생성

git에 익숙하지 않은 팀원들을 위해 작성한 git command 및 조작 방법

새로운 feature 개발: 최신 develop의 변경사항을 local에 반영시킨 후, 새로운 브랜치를 생성하여 작업한다.
$ git checkout develop : develop 브랜치로 변경
$ git pull : develop 브랜치의 최신 변경사항을 로컬로 가져온다. 
$ git checkout -b <feature branch 명> :명령어를 통해 브랜치 생성 후 checkout한다

코드작성
$ git add <file 명>: git add . 를 통해 모든 파일을 staging area에 추가할 수 있다. 
$ git commit -m "커밋메세지" 
$ git push origin <feature branch>: origin(원격 저장소)의 feature branch로 로컬 변경 내역을 push
github에서 develop branch <- feature branch 방향으로  Pull Request 진행
리뷰가 종료되고 모두 Approve 된다면 Merge한다. 

# 팀프로젝트 시작시
팀장의 리포지토리에서 클론으로 자신의 로컬 디렉토리에 파일을 가져온다.
2가지 방법이 있는데  

특정 브랜치 하나만 가져오고 싶을때
$ git clone -b <branchname> --single-branch <remote-repo-url>
그냥 이거 쓰자.

모든 브랜치를 다 가져오고 싶을때
$ git clone -b <branchname> <remote-repo-url>
리포지토리에 있는 모든 브랜치들을 패치한 후에 특정한 브랜치로 전환한다. 
그러면 그 브랜치를 기준으로 로컬에서 git push 와 git pull를 할 수 있도록 설정이 된다. 
하지만 이렇게 하면 각 브랜치가 갖고 있는 모든 파일들을 다 패치한 상태이다.
예를들어
$ git clone -b feature-buttom https://github.com/jst1024/teamProjects.git
이렇게 하게 되면 자동으로 feature-buttom 브랜치가 로컬 브랜치로 설정되는 동시에 다른 브랜치들도 추적할수 있다.

# 자주 사용할만한 깃 명령어

git clone [URL]:  원격 저장소의 코드를 로컬로 복제합니다.

git pull: 원격 저장소에서 최신 변경 내용을 가져와 로컬 저장소를 업데이트합니다.

git add [파일]: 변경된 파일을 스테이징 영역에 추가합니다.

git commit -m "메시지":  스테이징 영역의 변경 내용을 커밋하여 로컬 저장소에 저장합니다.

git push: 로컬 저장소의 변경 내용을 원격 저장소로 푸시하여 업데이트합니다.

git branch: 브랜치 목록을 보여줍니다.

git checkout -b [브랜치명]: 다른 브랜치로 전환합니다.

git merge [브랜치명]: 다른 브랜치를 현재 브랜치로 병합합니다.

git remote -v: 현재 연결된 원격 저장소 목록과 URL을 보여줍니다.

git diff: 작업 디렉토리의 변경 내용을 확인합니다.

git status: 작업 디렉토리의 상태를 확인합니다.

git log: 커밋 로그를 확인합니다.

git log --oneline: 간략한 커밋 로그를 확인합니다.

git diff [브랜치1] [브랜치2]: 두 브랜치 간의 차이를 확인합니다.

git checkout -b [새로운_브랜치명]: 새로운 브랜치를 만들고 해당 브랜치로 전환합니다.

git tag [태그명]: 커밋에 태그를 추가합니다.

git tag -a [태그명] -m "메시지": 주석을 포함한 태그를 추가합니다.

git fetch: 원격 저장소의 변경 내용을 가져오지만 로컬에는 반영하지 않습니다.

git stash: 현재 변경 내용을 임시로 보관합니다.
( 작업도중에 develop 브랜치가 변경될시 작업했던 파일을 이 명령어로 임시 보관하고 pull을 사용해서 먼저 develop브랜치를 최신화 한다음 다시 작업을 이어가야합니다.)

git stash list : 저장한 stash 목록

git stash apply [이름]: 이름 다시 가져오기 ([이름]을 붙이지 않으면 가장 최신의 stash)

git stash apply --index : staged상태까지 복원한다.

git stash drop [이름] : stash 삭제

git stash pop : apply + drop

git stash show -p | git apply -R : 실수로 잘못 stash 적용한걸 되돌리고 싶을때


git clean -f:  작업 디렉토리에서 추적되지 않는 파일을 삭제합니다.



  
