# run_analysis.R 說明文件  
**(README doc for run_analysis.R)**

以下說明run_analysis.R中為了達到何種目的進行了哪些動作。  
(Below will explain what action in run_analysis.R do and for what purpose.)

1. 讀取activity_labels.txt並取出值，標籤對應。  
   (Read activity_labels.txt and create value-label mapping.)

2. 讀取features.txt得到活動名稱並製成合法名稱清單。  
   (Read features.txt to get column names and make it valid R names.)

3. 分別讀取test，train資料夾中X, y, subject文字檔，文字檔中各行皆為一組資料列，其中X為計算後數值對應feature,y為活動對應activity，subject為觀查對象編號。取出後使用cbind將其整併。再用rbind將test，train資料整合。  
   (Read each X, y, subject text file in test and train. In these file every row will be a observation which x is the estimated value, y is mapping to activity value and subject is the number of volunteers. After data read use cbind merge each data set. Then use rbind combine test and train data.)

4. 為了取得其中關於平均值與標準差的數值，先將欄位名稱設定在資料表上。  
   (In order to get the variable of means and standard deviation, setting the features to column name.)

5. 取出欄位名稱含有.mean.或.std.的資料。  
   (Extract data whose name includes .mean. or .std.)

6. 將取出後的資料依照觀察對象與活動分群，計算分群後每個計算數值的平均值。  
   (Grouping extracted data by subject and activity, evulate the average of each veriables.)

7. 將計算結果存成新的整潔資料集。  
   (Store the result to a new tidy data set.)

8. 依照新的計算方式給與新的欄位名稱。  
   (Fro new meaning in the data set, give a corresponding column name.)

9. 輸出檔案。  
   (Print to file.)