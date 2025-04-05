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

# 🧱 系統架構與分層
📦 src.main
 ┣ 📁 java
 ┃ ┣ 📁 controller     → 控制層（接收前端請求，呼叫 service）<br>
 ┃ ┣ 📁 model       → 資料模型（POJO，對應資料表）<br>
 ┃ ┣ 📁 dao         → 資料存取層（CRUD）<br>
 ┃ ┣ 📁 service     → 商業邏輯處理層（資料驗證、查詢）<br>
 ┃ ┗ 📁 META-INF    → JPA 設定檔（如 persistence.xml）<br>
 ┗ 📁 webapp<br>
   ┣ 📄 *.jsp        → 頁面 UI 顯示（含前後台介面）<br>
   ┣ 📁 css/js       → 靜態資源（樣式與前端邏輯）<br>
   ┗ 📁 images_*     → 商品圖片、網站 LOGO、輪播圖等<br>

📦 target/ → Maven 編譯與打包後的 class 與資源<br>

# 🧑‍💻 功能模組設計 - 🛍 一般使用者 
商品瀏覽（首頁、分類）<br>
商品搜尋<br>
加入 / 移除購物車<br>
購物車頁面更新數量<br>
結帳流程（選擇配送、付款方式）<br>
訂單查詢<br>
使用者註冊 / 登入 / 登出 / 修改資料<br>

# 🧑‍💻 功能模組設計 - 🛠 管理者功能 
商品管理（新增 / 編輯 / 刪除）<br>
訂單管理（查詢詳細、更新狀態）<br>
使用者管理（檢視 / 停權）<br>
員工帳號管理<br>
圖表報表統計（adminreport.jsp 使用 jQuery + 圓餅圖 / 柱狀圖）<br>

# 🗃 資料庫設計（MySQL） 
user：使用者帳號資料<br>
product：商品資訊<br>
cart：購物車（暫存）<br>
order：訂單資料<br>
order_item：訂單明細<br>
payment：付款資訊<br>
shipping：配送資料<br>
employee：後台管理帳號<br>

![My Image](images/000-SQL.jpg)

# 🔧 使用技術與工具 
![image](https://github.com/user-attachments/assets/c2ebb6f1-2753-4835-9ab6-e7af5d21b876)







