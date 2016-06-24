# DataScience9_DevelopingDataProducts
### course project

This is a course project aiming at learning shiny applications. Data set of stock S&P500 index was used for the project (data source URL https://fred.stlouisfed.org/series/SP500/downloaddata, last accessed on June 23, 2016). In the application, a moving average line is plotted alongside with the raw time series. By moving the slider, user can control the size of the moving window (default to 60 days) up to a year. 

### Motivation
This application is for fulfilling the course project requirement. Educationwise, it visualizes the concept of a simple smoothing technique called moving average, which smooths out short term noise at various extent depending on the window size (length).

### Instruction
Move the slider to see how the moving average line changes with the window size.

### Key Points
Focusing on the first point of the moving average line, you can see that it is calculated (i.e., an average) of the previous n number of points, where n is the window size. It can also be seen that a small window would produce a line that is close to the raw data but is less smooth relative to larger windows. In contrast, a large window would smooth out a large amount of short-term noise. Also note that the moving average trend lags the raw data. 
