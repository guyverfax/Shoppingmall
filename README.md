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
![My Image](images/000-使用技術與工具.png)

# 程式流程設計 （Java Web 購物網站） 
🗂 系統分層架構（MVC + DAO )<br>
Controller(Servlet/Restful API⇄ Service ⇄ DAO ⇄ MySQL資料庫<br>
        ⇅<br>
      JSP（前端頁面）<br>

🌐 使用者操作流程圖（前台） 
1. 使用者訪問 index.jsp（首頁）<br>
          ↓<br>
2. 點擊登入 → login.jsp<br>
          ↓<br>
3. 輸入帳密 → UserLogin.java<br>
          ↓<br>
4. 登入成功 → 進入 main.jsp（或導向 profile.jsp）<br>
          ↓<br>
5. 瀏覽商品（shopX.jsp → ShopList.java）<br>
          ↓<br>
6. 加入購物車（ShopAdd.java）<br>
          ↓<br>
7. 查看購物車（cart.jsp）<br>
          ↓<br>
8. 修改/刪除商品（CartUpdate.java / CartDelete.java）<br>
          ↓<br>
9. 結帳 → CheckoutServlet.java<br>
          ↓
10. 輸入付款資料 → PaymentServlet.java<br>
          ↓
11. 訂單完成 → order.jsp + orderdetail.jsp<br>

# 🔒 管理員操作流程（後台） 
1. 管理員登入 → adminlogin.jsp → UserLogin.java<br>
          ↓
2. 進入 adminportal.jsp（後台首頁）<br>
          ↓
3. 管理員功能頁面：<br>
   ├─ adminemployee.jsp（員工管理）<br>
   ├─ adminuser.jsp（使用者管理）<br>
   ├─ adminproduct.jsp（商品管理）<br>
   ├─ adminorder.jsp（訂單管理）<br>
   ├─ adminreport.jsp（報表視覺化）<br>
   ├─ adminprofile.jsp（個人資料）<br>

# 使用介面介紹-前台
## 前台主頁
![My Image](images/002-介面架構.jpg)








