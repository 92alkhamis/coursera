# تحميل الحزمة ggplot2
library(ggplot2)

# تحميل البيانات من الملف
data <- read.table("household_power_consumption.txt", header = TRUE)

# تحويل التواريخ إلى تنسيق صحيح
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# إنشاء الرسم البياني
ggplot(data, aes(x = Date)) +
  geom_line(aes(y = Global_active_power, color = "Global_active_power")) +
  geom_line(aes(y = Global_reactive_power, color = "Global_reactive_power")) +
  geom_line(aes(y = Voltage, color = "Voltage")) +
  geom_line(aes(y = Global_intensity, color = "Global_intensity")) +
  geom_line(aes(y = Sub_metering_1, color = "Sub_metering_1")) +
  geom_line(aes(y = Sub_metering_2, color = "Sub_metering_2")) +
  geom_line(aes(y = Sub_metering_3, color = "Sub_metering_3")) +
  scale_color_manual(values = c("Global_active_power" = "blue", "Global_reactive_power" = "red",
                                "Voltage" = "green", "Global_intensity" = "purple",
                                "Sub_metering_1" = "orange", "Sub_metering_2" = "pink",
                                "Sub_metering_3" = "brown")) +
  labs(x = "Date", y = "Value") +
  theme_bw()