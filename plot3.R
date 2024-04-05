# تحميل الحزمة ggplot2
library(ggplot2)

# تحميل البيانات من الملف
data <- read.table("household_power_consumption.txt", header = TRUE)

# تحويل التواريخ والأوقات إلى تنسيق صحيح
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- as.POSIXct(data$Time, format = "%H:%M:%S")

# إنشاء الرسم البياني
ggplot(data, aes(x = Time, y = Global_active_power)) +
  geom_line() +
  labs(x = "Time", y = "Global Active Power (kW)") +
  theme_bw()