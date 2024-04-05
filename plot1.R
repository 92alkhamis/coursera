library(ggplot2)

# تحميل البيانات
data <- read.table("household_power_consumption.txt", header = TRUE)

# إنشاء الرسم البياني
ggplot(data, aes(x = Date, y = Global_active_power)) +
  geom_bar(stat = "identity", fill = "blue") +
  scale_x_date(date_labels = "%d/%m/%Y", date_breaks = "1 week") +
  theme_bw()