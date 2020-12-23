# Linear Regression Analysis on MPG
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + factor(AWD),data=mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + factor(AWD),data=mpg_table))

# Suspension Coil Analysis
susp_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- susp_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#t-test of all manufacturing sample lot vs. population
all_lot_samples <- susp_coil %>% sample_n(50)
shapiro.test(all_lot_samples$PSI)
plt <- ggplot(all_lot_samples,aes(x=log10(PSI)))
plt + geom_density()
t.test(log10(all_lot_samples$PSI),mu=mean(log10(susp_coil$PSI)))
 
#t-test by manufacturing lot vs. population
filter_lot_one <- subset(susp_coil, Manufacturing_Lot =="Lot1")
lot_one_sample <- filter_lot_one %>% sample_n(30)

filter_lot_two <- subset(susp_coil, Manufacturing_Lot =="Lot2")
lot_two_sample <- filter_lot_two %>% sample_n(30)

filter_lot_three <- subset(susp_coil, Manufacturing_Lot =="Lot3")
lot_three_sample <- filter_lot_three %>% sample_n(30)

shapiro.test(lot_one_sample$PSI)
shapiro.test(lot_two_sample$PSI)
shapiro.test(lot_three_sample$PSI)

t.test(log10(lot_one_sample$PSI), mu=mean(log10(susp_coil$PSI)))
t.test((lot_two_sample$PSI), mu=mean(susp_coil$PSI))
t.test(log10(lot_three_sample$PSI), mu=mean(log10(susp_coil$PSI)))



