#!/bin/bash

# 컴포넌트 이름 받기
COMPONENT_NAME="$1"

# 입력 검증
if [ -z "$COMPONENT_NAME" ]; then
  echo "에러: 컴포넌트 이름을 입력해주세요."
  echo "사용법: add-component <ComponentName>"
  exit 1
fi

# 파일 경로 생성
COMPONENT_PATH="src/components/${COMPONENT_NAME}.tsx"

# 파일이 이미 존재하는지 확인
if [ -f "$COMPONENT_PATH" ]; then
  echo "에러: $COMPONENT_PATH 파일이 이미 존재합니다."
  exit 1
fi

# 디렉토리 생성
mkdir -p "src/components"

# 컴포넌트 템플릿 생성
cat > "$COMPONENT_PATH" << EOF
import React from 'react';

interface ${COMPONENT_NAME}Props {
  // Props를 정의하세요
}

const ${COMPONENT_NAME}: React.FC<${COMPONENT_NAME}Props> = ({}) => {
  return (
    <div className="p-4">
      <h1 className="text-2xl font-bold">${COMPONENT_NAME}</h1>
      {/* 컴포넌트 내용을 추가하세요 */}
    </div>
  );
};

export default ${COMPONENT_NAME};
EOF

echo "✓ 컴포넌트 생성 완료: $COMPONENT_PATH"
