import parsers as parser
from tkinter import messagebox
from tkinter import filedialog
from tkinter import *

def GUI():
    app = Tk()
    app.title("NMEA Parser")
    # icon
    app.iconbitmap("icon.ico")
    app.geometry("0x0")
    app.resizable(False, False)

    messagebox.showinfo("Info", "Select a file to parse")

    sentence_file = filedialog.askopenfile(mode='r',initialdir="../logs")
    ParseFile(sentence_file)

    app.geometry("800x600")
    frame = Frame(app)
    frame.pack()

    label = Label(frame, text="Parsed Data", font=("Calibri", 24, "bold"))
    label.pack()

    text = Text(frame, width=300, height=300, font=("Arial", 12, "bold"))
    text.pack()

    for key,item in parser.get_result().items():
        text.insert(END, " "*50 + f"{'-'*80}\n")
        text.insert(END, " "*70 + f"{key} : {item}\n")

    app.mainloop()

def ParseFile(sentence_file):
    if sentence_file is None:
        messagebox.showerror("Error", "No file selected")
        exit()

    for sentence in sentence_file.readlines():
        parser.parse(sentence)

if __name__ == "__main__":
    GUI()