# ✅ 專案目的
本專案旨在建立一套線上購物平台，使用者可以瀏覽商品、加入購物車、進行結帳與付款，管理員則可管理商品、訂單、用戶與報表。<br>

# 透過本專案學習與實作：
1.Java Web 應用開發流程<br>
2.前後端資料互動 (JSP + jQuery + AJAX + Servlet + Restful API + Hibernate)<br>
3.DAO 資料存取設計模式<br>
4.MySQL 資料庫設計與整合<br>
5.MVC 架構與分層設計<br>
6.圖片與靜態資源的管理與顯示<br>
7.多角色權限控管（使用者 / 管理員）<br>

# 🧱 系統架構與分層
📦 src.main<br>
 ┣ 📁 java<br>
 ┃ ┣ 📁 controller     → 控制層（接收前端請求，呼叫 service）<br>
 ┃ ┣ 📁 model       → 資料模型（對應資料表）<br>
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

# 📖 使用手冊
## 1.匯入 MySQL Schema 和 Table

請下載 SQL 目錄的檔案，並按照以下步驟將其匯入 MySQL：

打開 MySQL Workbench。

連接到 MySQL 伺服器。

在左側資料庫樹狀中，選擇要匯入資料的資料庫。

在 MySQL Workbench 上方的「管理」標籤下，選擇 資料匯入。

選擇要匯入的檔案（例如 shoppingmall 開頭的.sql）。

點擊 開始匯入。

匯入完成後，資料庫中的 Schema 和表格應已成功設置。

## 2.準備好 Tomcat 9.0 可執行環境

下載 shoppingmall.war , 並置於適當位置 <br>



# 🖥️ 使用介面介紹-前台
## 🏠前台主頁
![My Image](images/001前台-首頁.jpg)

## 🛍️ 前台-產品分類
![My Image](images/001前台-顯示產品-電子.jpg)
![My Image](images/001前台-顯示產品-家居.jpg)
![My Image](images/001前台-顯示產品-搜尋.jpg)

## 👤前台主頁-登入
![My Image](images/001前台-登入01.jpg)
![My Image](images/001前台-登入02.jpg)

## 📝前台主頁-註冊
![My Image](images/001前台-註冊01.jpg)
![My Image](images/001前台-註冊03.jpg)
![My Image](images/001前台-註冊05.jpg)

## 🛒前台主頁-購物 (範例)
![My Image](images/001前台-購物車01.jpg)
![My Image](images/001前台-購物車02.jpg)
![My Image](images/001前台-購物車03.jpg)
![My Image](images/001前台-購物車04.jpg)
![My Image](images/001前台-購物車05.jpg)
![My Image](images/001前台-購物車06.jpg)
![My Image](images/001前台-購物車07.jpg)
![My Image](images/001前台-購物車08.jpg)
![My Image](images/001前台-購物車09.jpg)
![My Image](images/001前台-購物車10.jpg)
![My Image](images/001前台-購物車11.jpg)
![My Image](images/001前台-購物車12.jpg)
![My Image](images/001前台-購物車13.jpg)
![My Image](images/001前台-購物車14.jpg)

## 📦前台主頁-訂單管理
![My Image](images/001前台-顯示個人訂單01.jpg)
![My Image](images/001前台-顯示個人訂單02.jpg)
![My Image](images/001前台-顯示個人訂單03.jpg)

## 🏠後台主頁
![My Image](images/002後台-首頁.jpg)

## 👤後台主頁-登入
![My Image](images/002後台-登入01.jpg)
![My Image](images/002後台-登入02.jpg)
![My Image](images/002後台-登入03.jpg)

## 📦後台主頁-訂單管理
![My Image](images/002後台-訂單管理01.jpg)

## 📦後台主頁-訂單管理-搜尋
![My Image](images/002後台-訂單管理02搜尋訂單.jpg)

## 👤後台主頁-使用者管理
![My Image](images/002後台-客戶管理01.jpg)

## 🖼後台主頁-產品管理
![My Image](images/002後台-產品管理01.jpg)
![My Image](images/002後台-產品管理02.jpg)

## 👤後台主頁-客戶管理
![My Image](images/002後台-客戶管理01.jpg)

## 後台主頁-報表管理
![My Image](images/002後台-報表管理01.jpg)
![My Image](images/002後台-報表管理02.jpg)

# 以上是專案說明








