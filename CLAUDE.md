# LinkHub - 프로젝트 가이드

## 프로젝트 개요

Notion을 CMS로 활용하여 카테고리별 링크를 관리하고 공유하는 웹사이트

## Project Context

- PRD 문서: @docs/PRD.md
- 개발 로드맵: @docs/ROADMAP.md

## 코딩 규칙

### 언어 설정
- 응답: 한국어
- 주석: 한국어 (비즈니스 로직만)
- 변수명: 영어

### 코딩 스타일
- 들여쓰기: 2칸
- 네이밍: camelCase
- 프레임워크: Next.js 15, TypeScript
- 스타일링: Tailwind CSS + shadcn/ui

### 아키텍처
- 프론트엔드: Next.js App Router
- 서비스 계층: Notion API 연동
- 컴포넌트 구조:
  ```
  src/
  ├── app/           # 페이지 및 레이아웃
  ├── components/    # 공통 컴포넌트
  ├── lib/           # 유틸리티 함수
  ├── services/      # Notion API 서비스
  └── types/         # TypeScript 타입 정의
  ```

## 개발 프로세스

1. **로드맵 참고**: 개발 순서는 @docs/ROADMAP.md 에 따름
2. **단계별 진행**: 각 단계의 완료 기준 충족 후 다음 단계로 진행
3. **Git 커밋**: 각 기능 완성 후 명확한 메시지로 커밋
4. **테스트**: 모바일/태블릿/데스크톱에서 반응형 테스트

## 중요 사항

- Notion API Rate Limit: 1초에 3개 요청 제한 → 캐싱 활용
- 타입스크립트 strict 모드 활성화
- 환경 변수 (.env.local)는 .gitignore에 포함
- 모바일 우선 접근 (Mobile-first)

## 현재 진행 상황

- ✅ 프로젝트 기획 완료 (PRD, ROADMAP)
- ✅ GitHub 저장소 생성
- ⏳ 1단계: 프로젝트 골격 구축 (예정)
