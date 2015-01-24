## 取得所有活動的對應表
## get a activity map level
activity_table <- read.table('activity_labels.txt', stringsAsFactors = FALSE)
activity_value <- activity_table$V1
activity_label <- activity_table$V2

## 取得觀查變量名稱
## get col name
all_features_raw <- read.table('features.txt', stringsAsFactors = FALSE)$V2
all_features <- make.names(
                    gsub(pattern = '[[:punct:]]+', 
                    replacement = ' ', 
                    x =all_features_raw)
                          )

## 將Test的資料集取出
## get test datas
test_x <- read.table('test/X_test.txt', header = FALSE)
test_y <- read.table('test/y_test.txt', header = FALSE)
test_subject <- read.table('test/subject_test.txt', header = FALSE)

test_data <- cbind(test_subject, test_y, test_x)
rm(test_x, test_y, test_subject)

## 將Train的資料集取出
## get train datas
train_x <- read.table('train/X_train.txt', header = FALSE)
train_y <- read.table('train/y_train.txt', header = FALSE)
train_subject <- read.table('train/subject_train.txt', header = FALSE)

train_data <- cbind(train_subject, train_y, train_x)
rm(train_x, train_y, train_subject)

## 合併兩個資料集
## merge data
all_data <- rbind(test_data, train_data)
rm(test_data, train_data)

## 設定變量名稱至合並後資料集
## set column name
names(all_data) <- c('subject', 'activity', all_features)

## 提取有關平均值(mean)和標準差(std)的計算結果
## extract avarige (mean) and standard deviation (std) data
extracted_col <- c(1,2, grep('(\\.mean\\.|\\.std\\.)', names(all_data) ))
extracted_data <- all_data[,extracted_col]
rm(all_data)

extracted_names <- names(extracted_data)

## 將活動用名稱顯示
## set descriptive activity names
activity_factor <- factor(x = extracted_data$activity,
                                  levels = activity_value,
                                  labels = activity_label)
extracted_data$activity <- activity_factor

## 將提取後資料集依照對象與活動分群，計算其平均值並製成第二個整潔資料集
## creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject.
subject_group <- unique(extracted_data$subject)
activity_group <- unique(extracted_data$activity)

grouped_mean_data <- data.frame()
for(i in seq_along(subject_group)){
    for(j in seq_along(activity_group)){
        constraint <- extracted_data$subject == subject_group[i] & 
            extracted_data$activity == activity_group[j]
        
        temp_sub <- subset(extracted_data,
                           constraint,
                           row.names = FALSE
                          )
        temp_mean <- c(subject_group[i], 
                       activity_group[j],
                       colMeans(temp_sub[,c(-1,-2)])
                      )
        grouped_mean_data <- rbind(grouped_mean_data, temp_mean)
    }
}

prepend_variable_name <- function (x){
    if(x != 'subject' & x != 'activity'){
        paste("mean.of.", x, sep = '')
    }else{
        x
    }
}

names(grouped_mean_data) <-  sapply(extracted_names, prepend_variable_name)
grouped_mean_data$activity <- factor(grouped_mean_data$activity, 
                                   levels = activity_value,
                                   labels = activity_label)
grouped_mean_data <- grouped_mean_data[order(grouped_mean_data$subject, 
                                             grouped_mean_data$activity),]

## 輸出成檔案
## file output
write.table(x = grouped_mean_data,
            file = 'run_analysis_result.txt', 
            row.name = FALSE, 
            quote = FALSE,
            sep = '\t')
