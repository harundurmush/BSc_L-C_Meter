clc;
close all;
clear all;
%%
a = [1 2 0.05243057 0.01599693 0.09697462 0.03274135 0.00995367];
b = [1 2 -0.48123936 47.388153 -70.84042 35.895294 0.07272635];
%%
voltage_cap1 = [58.9 78.1 99.1 108 119 154 188 190 194 222 264 273 303 326 331 336 338 397 407 456 464 446 474 481 543 569 574 611 623 632 655 652 664 734 750 790 785 786 797 778 808 811 871 891 904 956 976 987 1030 1050 1048 1054 1056 1064 1065 1093 1137 1144 1137 1178 1185 1217 1230 1235 1236];
voltage_cap2 = [1289 1350 1414];
voltage_cap3 = [1485 1498 1494 1506 1508 1512 1535 1533 1544 1526 1551 1560 1560 1587 1627 1644 1611 1666 1612 1644 1692 1678 1677];
voltage_cap4 = [1786 1799 1833 1864 1890 1930 1962];
%%
cap_val1 = a(1);
cap_val2 = a(2);
cap_val3 = a(3).*voltage_cap1 + b(3);
cap_val4 = a(4).*voltage_cap2 + b(4);
cap_val5 = a(5).*voltage_cap3 + b(5);
cap_val6 = a(6).*voltage_cap4 + b(6);
volt_cap = [19.3 34.1 voltage_cap1 voltage_cap2 voltage_cap3 voltage_cap4];
val_cap = [cap_val1 cap_val2 cap_val3 cap_val4 cap_val5 cap_val6];

figure (1)
plot(val_cap,volt_cap,"color","#A2142F");
title("Capacitance - Voltage Graph by using AI Model");
ylabel("Voltage (mV)");
xlabel("Capacitance (nF)");
xlim([1 100]);
grid on;
%%
voltage_ind1 = [50.2 64.4 71.5 78.9 89.3 101 103 115 128 133 158 153 156 188 192 193 195 214 247 249 246 240 244 265 281 303 301 326 332 355 351 359 362 365 411 395 411 412 413 414 427 452 448 444 447 444 452 479 526 537 539 551 555 546 571 576 586 600 613 610 602 619 702 678 685 738 746 739 765 784 764 782 785 780 804 789 794 849 855 855 846 886 886 887 904 922 930 932 931 911 946 952 951 933 930 943];
%%
ind_val1 = a(7)*voltage_ind1 + b(7);
volt_ind = [21.7 29.1 35 45.3 voltage_ind1];
val_ind = [0.1 0.2 0.3 0.4 ind_val1];

figure (2)
plot(val_ind,volt_ind,"color","#A2142F");
title("Inductance - Voltage Graph by using AI Model");
ylabel("Voltage (mV)");
xlabel("Inductance (mH)");
xlim([0.1 10]);
grid on;








