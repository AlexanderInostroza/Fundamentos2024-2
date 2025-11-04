import tkinter as tk
from tkinter import ttk
import random

# --- Variables globales ---
score = 0
time_left = 30
circle = None
game_running = False

# --- Funciones del juego ---
def start_game():
    global score, time_left, game_running
    if game_running:
        return
    score = 0
    time_left = 30
    game_running = True
    score_label.config(text=f"Puntaje: {score}")
    time_label.config(text=f"Tiempo: {time_left}")
    progress["value"] = 100
    start_button.state(["disabled"])
    exit_button.state(["disabled"])
    canvas.delete("all")
    spawn_circle()
    countdown()

def spawn_circle():
    global circle
    canvas.delete("circle")
    x = random.randint(20, 360)
    y = random.randint(20, 240)
    circle = canvas.create_oval(x, y, x + 40, y + 40, fill="#ff4d4d", outline="", tags="circle")
    canvas.tag_bind("circle", "<Button-1>", hit_circle)

def hit_circle(event):
    global score
    if not game_running:
        return
    score += 1
    score_label.config(text=f"Puntaje: {score}")
    spawn_circle()

def countdown():
    global time_left, game_running
    if not game_running:
        return
    time_left -= 1
    time_label.config(text=f"Tiempo: {time_left}")
    progress["value"] = (time_left / 30) * 100
    if time_left > 0:
        root.after(1000, countdown)
    else:
        end_game()

def end_game():
    global game_running
    game_running = False
    canvas.delete("all")
    canvas.create_text(200, 150, text=f"¡Tiempo terminado!\nPuntaje final: {score}",
                       font=("Segoe UI", 14, "bold"), fill="#333")
    start_button.state(["!disabled"])
    exit_button.state(["!disabled"])

def exit_game():
    root.destroy()

# --- Ventana principal ---
root = tk.Tk()
root.title("🎯 Caza el Círculo")
root.geometry("420x550")  # <-- altura aumentada para evitar corte de botones
root.resizable(False, False)
root.configure(bg="#f9f9fb")

# --- Estilos ttk ---
style = ttk.Style()
style.theme_use("clam")

style.configure("TLabel", background="#f9f9fb", font=("Segoe UI", 11))
style.configure("Title.TLabel", font=("Segoe UI", 16, "bold"), background="#f9f9fb", foreground="#222")
style.configure("green.Horizontal.TProgressbar", troughcolor="white", background="#4CAF50")
style.configure("TButton", font=("Segoe UI", 10, "bold"), padding=6)
style.map("TButton",
          background=[("active", "#e8f5e9")],
          relief=[("pressed", "sunken")])

style.configure("Exit.TButton", font=("Segoe UI", 10, "bold"), padding=6, foreground="#b00020")
style.map("Exit.TButton",
          background=[("active", "#ffdddd")],   # Fondo rojo suave al hover
          foreground=[("active", "#a00000")])   # Texto más oscuro al hover

# --- Título ---
title_label = ttk.Label(root, text="🎯 Caza el Círculo", style="Title.TLabel")
title_label.pack(pady=(20, 8))

# --- Información superior (sin bordes grises) ---
info_frame = tk.Frame(root, bg="#f9f9fb")
info_frame.pack(pady=(5, 5))

score_label = ttk.Label(info_frame, text=f"Puntaje: {score}", width=15, background="#f9f9fb")
score_label.grid(row=0, column=0, padx=10)

time_label = ttk.Label(info_frame, text=f"Tiempo: {time_left}", width=15, background="#f9f9fb")
time_label.grid(row=0, column=1, padx=10)

# --- Barra de progreso ---
progress = ttk.Progressbar(root, orient="horizontal", length=350, mode="determinate", style="green.Horizontal.TProgressbar")
progress.pack(pady=10)
progress["maximum"] = 100
progress["value"] = 100

# --- Área de juego ---
canvas = tk.Canvas(root, width=400, height=300, bg="white", highlightthickness=1, highlightbackground="#d0d0d0")
canvas.pack(pady=(10, 20))

# --- Botones ---
button_frame = tk.Frame(root, bg="#f9f9fb")
button_frame.pack(pady=(5, 20))

start_button = ttk.Button(button_frame, text="▶ Iniciar juego", command=start_game)
start_button.grid(row=0, column=0, padx=12, ipadx=10, ipady=4)

exit_button = ttk.Button(button_frame, text="❌ Salir", command=exit_game, style="Exit.TButton")
exit_button.grid(row=0, column=1, padx=12, ipadx=10, ipady=4)

# --- Ejecutar ---
root.mainloop()
