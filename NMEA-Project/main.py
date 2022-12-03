import parsers as parser
from tkinter import messagebox, ttk, filedialog
from tkinter import *

def GUI():
    app = Tk()
    app.title("NMEA Parser")
    app.iconbitmap("icons/icon.ico")
    app.geometry("0x0")
    app.resizable(False, False)

    messagebox.showinfo("Info", "Select a file to parse")

    sentence_file = filedialog.askopenfile(mode='r',initialdir="./logs")
    if not ParseFile(sentence_file):
        return

    app.geometry("800x600")

    label = Label(app, text="Parsed Data", font=("Calibri", 24))
    label.pack()

    table = InitializeTable(app)

    for key,item in parser.get_result().items():
        table.insert("", "end", text="", values=(key, item))

    app.mainloop()

def ParseFile(sentence_file):
    if sentence_file is None:
        messagebox.showerror("Error", "No file selected")
        return False

    for sentence in sentence_file.readlines():
        parser.parse(sentence)
    return True

def InitializeTable(app):
    table = ttk.Treeview(app, height=12)
    table.pack()

    style = ttk.Style()
    style.configure("Treeview.Heading", font=("Calibri", 20), rowheight=40)
    style.configure("Treeview", font=("Calibri", 16), rowheight=40)

    table['columns'] = ("Data", "Value")
    table.column("#0", width=0, stretch=NO)
    table.column("Data", anchor=CENTER, width=350)
    table.column("Value", anchor=CENTER, width=350)

    table.heading("Data", text="Data", anchor=CENTER)
    table.heading("Value", text="Value", anchor=CENTER)

    return table

if __name__ == "__main__":
    GUI()