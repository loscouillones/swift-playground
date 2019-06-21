
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

do {
    // let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    throw PrinterError.noToner
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

//EXPERIMENT
//
//Add code to throw an error inside the do block. What kind of error do you need to throw so that the error is handled by the first catch block? What about the second and third blocks?
