# DataScience9_DevelopingDataProducts
### course project

This is a course project that aiming at learning how to develop shiny applications. Data set of stock S&P500 index was used for the project (downloaded from URL https://fred.stlouisfed.org/series/SP500/downloaddata, last accessed on June 23, 2016). In the shiny application, a moving average line of various window size is displayed alongside with the raw time series. By moving the slider, user can control the size of the moving window (default to 60 days) up to a year. 

### Motivation
This shiny application is for fulfilling the course project. 

### Instruction
Move the slider to see how the moving average line changes.

### Summary
This application visualizes how the moving average changes with the window size. It can be seen the smaller the window size, the closer the moving window line is to the raw data (i.e., less smoothing). In contrast, large wind size smoothes out short-term noises and give a general trend. In this example, the recent trend is upward and maybe reaching a plateau. 
