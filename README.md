# LinkHub - 카테고리별 링크 모음 사이트

Notion을 CMS로 활용하여 유용한 링크들을 카테고리별로 관리하고 공유하는 웹사이트입니다.

## 🎯 프로젝트 소개

**LinkHub**는 Notion을 콘텐츠 관리 시스템(CMS)으로 활용하여, 개발자가 아닌 누구나 쉽게 링크 콘텐츠를 추가하고 관리할 수 있는 플랫폼입니다.

### 주요 기능

- 📚 **카테고리별 링크 조회**: 개발, 디자인, 뉴스, 도구 등 카테고리별 필터링
- 🏷️ **태그 기반 검색**: 키워드 및 태그로 링크 검색
- 📱 **반응형 디자인**: 모바일/태블릿/데스크톱 모두 지원
- 🔄 **자동 동기화**: Notion 데이터베이스의 변경사항 자동 반영

## 🛠️ 기술 스택

| 계층 | 기술 |
|------|------|
| **Frontend** | Next.js 15, TypeScript, React |
| **CMS** | Notion API |
| **Styling** | Tailwind CSS, shadcn/ui |
| **Icons** | Lucide React |
| **Backend** | Node.js, Express (API Server) |

## 📋 프로젝트 구조

```
notion-cms-project/
├── docs/
│   └── PRD.md                 # 프로젝트 기획 문서
├── src/
│   ├── routes/                # API 라우트
│   ├── server.ts              # Express 서버 진입점
│   └── ...
├── package.json               # 프로젝트 설정
├── tsconfig.json              # TypeScript 설정
├── .env.example               # 환경 변수 샘플
└── README.md                  # 이 파일
```

## 🚀 시작하기

### 필수 요구사항

- Node.js 18.0 이상
- npm 또는 yarn
- Notion API 토큰
- Notion 데이터베이스 ID

### 설치 및 실행

1. **저장소 클론**
   ```bash
   git clone <repository-url>
   cd notion-cms-project
   ```

2. **환경 변수 설정**
   ```bash
   cp .env.example .env.local
   ```
   `.env.local` 파일에 다음 정보를 입력하세요:
   - `NOTION_API_KEY`: Notion API 토큰
   - `NOTION_DATABASE_ID`: Notion 데이터베이스 ID

3. **의존성 설치**
   ```bash
   npm install
   ```

4. **개발 서버 실행**
   ```bash
   npm run dev
   ```

5. **프로덕션 빌드**
   ```bash
   npm run build
   npm start
   ```

## 📝 Notion 데이터베이스 구조

Notion 데이터베이스에 다음 필드를 생성하세요:

| 필드명 | 타입 | 설명 |
|--------|------|------|
| Title | Text | 링크의 제목 |
| URL | URL | 실제 이동할 링크 |
| Category | Select | 카테고리 (개발, 디자인, 뉴스, 도구) |
| Description | Text | 링크 설명 |
| Tags | Multi-select | 태그 (예: React, CSS, AI) |
| CreatedAt | Date | 링크 추가 날짜 |
| Pinned | Checkbox | 상단 고정 여부 |

## 📚 API 문서

### `/api/links`
모든 링크를 조회합니다.

**파라미터:**
- `category` (optional): 카테고리로 필터링
- `search` (optional): 키워드 검색

**응답:**
```json
{
  "success": true,
  "data": [
    {
      "id": "link-id",
      "title": "링크 제목",
      "url": "https://example.com",
      "category": "개발",
      "description": "링크 설명",
      "tags": ["React", "TypeScript"],
      "createdAt": "2026-04-30"
    }
  ]
}
```

## 🧪 테스트

```bash
npm run test
npm run test:watch
```

## 📄 라이센스

MIT License

## 👨‍💻 기여하기

이 프로젝트에 기여하고 싶으신가요? PR을 보내주세요!

## 📞 문의

질문이나 문제가 있으면 이슈를 등록해 주세요.
