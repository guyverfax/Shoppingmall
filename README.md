# ✅ 專案目的
本專案旨在建立一套線上購物平台，使用者可以瀏覽商品、加入購物車、進行結帳與付款，<br>
管理員則可管理商品、訂單、用戶與報表。<br>

# 透過本專案學習與實作：
1.Java Web 應用開發流程<br>
2.前後端資料互動 (JSP + jQuery + AJAX + Servlet + Restful API + Hibernate)<br>
3.DAO 資料存取設計模式<br>
4.MySQL 資料庫設計與整合<br>
5.MVC 架構與分層設計<br>
6.圖片與靜態資源的管理與顯示<br>
7.多角色權限控管（使用者 / 管理員）<br>

#🧱 系統架構與分層
📦 src.main
 ┣ 📁 java
 ┃ ┣ 📁 controller     → 控制層（接收前端請求，呼叫 service）
 ┃ ┣ 📁 model       → 資料模型（POJO，對應資料表）
 ┃ ┣ 📁 dao         → 資料存取層（CRUD）
 ┃ ┣ 📁 service     → 商業邏輯處理層（資料驗證、查詢）
 ┃ ┗ 📁 META-INF    → JPA 設定檔（如 persistence.xml）
 ┗ 📁 webapp
   ┣ 📄 *.jsp        → 頁面 UI 顯示（含前後台介面）
   ┣ 📁 css/js       → 靜態資源（樣式與前端邏輯）
   ┗ 📁 images_*     → 商品圖片、網站 LOGO、輪播圖等

📦 target/ → Maven 編譯與打包後的 class 與資源

