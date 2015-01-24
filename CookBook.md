#run_analysis_reslut.txt 資料本
**(run_analysis_reslut.txt book)**

run_analysis_reslut.txt為使用`Human Activity Recognition Using Smartphones Dataset Version 1.0` 提取其中平均值與標準差資料後，針對對象與活動分群後再進行平均值計算的二級資料。
(run_analysis_reslut.txt is a secondary data set using Human Activity Recognition Using Smartphones Dataset Version 1.0, extract mean and standard deviation data then group by subject and activity then do evaluate the mean of each variable.)

##變數:

* subject:
原始來源中觀察對象的識別碼  
    * 值:  
         1 ~ 30

* activity:原始來源中活動名稱
    * 值:  
          WALKING  
          WALKING_UPSTAIRS  
          WALKING_DOWNSTAIRS  
          SITTING  
          STANDING  
          LAYING  

* mean.of.*:原始來源中各計算數值依對象和活動分群後的平均值，計有66種計算項目後述。
     * 值:  
          -1 ~ 1的自然數

     * 計算項目:
        1. tBodyAcc-mean()-X
        2. tBodyAcc-mean()-Y
        3. tBodyAcc-mean()-Z
        4. tBodyAcc-std()-X
        5. tBodyAcc-std()-Y
        6. tBodyAcc-std()-Z
        7. tGravityAcc-mean()-X
        8. tGravityAcc-mean()-Y
        9. tGravityAcc-mean()-Z
        10. tGravityAcc-std()-X
        11. tGravityAcc-std()-Y
        12. tGravityAcc-std()-Z
        13. tBodyAccJerk-mean()-X
        14. tBodyAccJerk-mean()-Y
        15. tBodyAccJerk-mean()-Z
        16. tBodyAccJerk-std()-X
        17. tBodyAccJerk-std()-Y
        18. tBodyAccJerk-std()-Z
        19. tBodyGyro-mean()-X
        20. tBodyGyro-mean()-Y
        21. tBodyGyro-mean()-Z
        22. tBodyGyro-std()-X
        23. tBodyGyro-std()-Y
        24. tBodyGyro-std()-Z
        25. tBodyGyroJerk-mean()-X
        26. tBodyGyroJerk-mean()-Y
        27. tBodyGyroJerk-mean()-Z
        28. tBodyGyroJerk-std()-X
        29. tBodyGyroJerk-std()-Y
        30. tBodyGyroJerk-std()-Z
        31. tBodyAccMag-mean()
        32. tBodyAccMag-std()
        33. tGravityAccMag-mean()
        34. tGravityAccMag-std()
        35. tBodyAccJerkMag-mean()
        36. tBodyAccJerkMag-std()
        37. tBodyGyroMag-mean()
        38. tBodyGyroMag-std()
        39. tBodyGyroJerkMag-mean()
        40. tBodyGyroJerkMag-std()
        41. fBodyAcc-mean()-X
        42. fBodyAcc-mean()-Y
        43. fBodyAcc-mean()-Z
        44. fBodyAcc-std()-X
        45. fBodyAcc-std()-Y
        46. fBodyAcc-std()-Z
        47. fBodyAccJerk-mean()-X
        48. fBodyAccJerk-mean()-Y
        49. fBodyAccJerk-mean()-Z
        50. fBodyAccJerk-std()-X
        51. fBodyAccJerk-std()-Y
        52. fBodyAccJerk-std()-Z
        53. fBodyGyro-mean()-X
        54. fBodyGyro-mean()-Y
        55. fBodyGyro-mean()-Z
        56. fBodyGyro-std()-X
        57. fBodyGyro-std()-Y
        58. fBodyGyro-std()-Z
        59. fBodyAccMag-mean()
        60. fBodyAccMag-std()
        61. fBodyBodyAccJerkMag-mean()
        62. fBodyBodyAccJerkMag-std()
        63. fBodyBodyGyroMag-mean()
        64. fBodyBodyGyroMag-std()
        65. fBodyBodyGyroJerkMag-mean()
        66. fBodyBodyGyroJerkMag-std()