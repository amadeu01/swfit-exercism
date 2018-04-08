struct Year {
    var calendarYear: Int
    
    var isLeapYear: Bool {
        get {
            return calendarYear % 400 == 0 || (calendarYear % 4 == 0 && calendarYear % 100 != 0)
        }
    }
}
