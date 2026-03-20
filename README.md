# calculator

使用 Go 建立的計算機前端網頁，並以 Docker 容器化。

## 功能

- 四則運算（加、減、乘、除）
- 正負號切換、百分比
- 小數點輸入
- 除以零顯示 Error
- 鍵盤快捷鍵支援（數字、運算符、Enter、Escape、Backspace）
- 無障礙設計（ARIA 標籤）

## 本地執行

```bash
go run .
```

瀏覽器開啟 [http://localhost:8080](http://localhost:8080)

## Docker

```bash
# 建構並執行
docker compose up --build

# 或手動建構
docker build -t calculator .
docker run -p 8080:8080 calculator
```

瀏覽器開啟 [http://localhost:8080](http://localhost:8080)

## 截圖

![Calculator UI](https://github.com/user-attachments/assets/f94fd976-a97a-4f83-ac94-faab046ec15f)
