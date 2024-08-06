local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

-- Создание текстового уведомления
local notifyFrame = Instance.new("Frame", gui)
notifyFrame.Size = UDim2.new(0, 400, 0, 150) -- Изменение размера фрейма
notifyFrame.Position = UDim2.new(0.5, -200, 0, 50) -- Центрирование по горизонтали
notifyFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Тёмный цвет фона
notifyFrame.BorderSizePixel = 0
notifyFrame.BackgroundTransparency = 1 -- Начальная прозрачность 1 (полностью прозрачно)

-- Добавление бордеров к уведомлению
local border = Instance.new("UIStroke", notifyFrame)
border.Color = Color3.fromRGB(99, 0, 155) -- Цвет бордера (золотой)
border.Thickness = 2 -- Толщина бордера
border.Transparency = 0 -- Прозрачность бордера

local eyeIcon = Instance.new("ImageLabel", notifyFrame)
eyeIcon.Size = UDim2.new(0, 150, 0, 150) -- Размер иконки
eyeIcon.Position = UDim2.new(0, 0, 0, 0) -- Центрирование по горизонтали
eyeIcon.Image = "rbxassetid://15062654151" -- Замените на ID вашей иконки
eyeIcon.BackgroundTransparency = 1

-- Добавление основного текста в уведомление
local notifyText = Instance.new("TextLabel", notifyFrame)
notifyText.Size = UDim2.new(1, 0, 0.5, 0) -- Половина высоты фрейма
notifyText.Position = UDim2.new(0, 0, 0, 0) -- В верхней части фрейма
notifyText.Text = "ILYAWARE"
notifyText.TextColor3 = Color3.fromRGB(125, 0, 195) -- Белый цвет текста
notifyText.Font = Enum.Font.GothamBold
notifyText.TextSize = 24
notifyText.BackgroundTransparency = 1 -- Прозрачный фон для текстовой метки

local pidoras = Instance.new("TextLabel", notifyFrame)
pidoras.Size = UDim2.new(1, 0, 0.8, 0) -- Половина высоты фрейма
pidoras.Position = UDim2.new(0, 0, 0, 0) -- В верхней части фрейма
pidoras.Text = "Running the script"
pidoras.TextColor3 = Color3.fromRGB(125, 0, 195) -- Белый цвет текста
pidoras.Font = Enum.Font.GothamBold
pidoras.TextSize = 24
pidoras.BackgroundTransparency = 1

-- Добавление дополнительного текста "Спасибо за использование"
local thankYouText = Instance.new("TextLabel", notifyFrame)
thankYouText.Size = UDim2.new(1, 0, 0.5, 0) -- Половина высоты фрейма
thankYouText.Position = UDim2.new(0, 0, 0.5, 0) -- В нижней части фрейма
thankYouText.Text = "Well, I'll update this cheat later, maybe!"
thankYouText.TextColor3 = Color3.fromRGB(125, 0, 195) -- Белый цвет текста
thankYouText.Font = Enum.Font.Gotham
thankYouText.TextSize = 20 -- Уменьшил размер текста
thankYouText.BackgroundTransparency = 1 -- Прозрачный фон для текстовой метки

local thankYouText2 = Instance.new("TextLabel", notifyFrame)
thankYouText2.Size = UDim2.new(1, 0, 0.7, 0) -- Половина высоты фрейма
thankYouText2.Position = UDim2.new(0, 0, 0.5, 0) -- В нижней части фрейма
thankYouText2.Text = "Ver.0.7!"
thankYouText2.TextColor3 = Color3.fromRGB(125, 0, 195) -- Белый цвет текста
thankYouText2.Font = Enum.Font.Gotham
thankYouText2.TextSize = 20 -- Уменьшил размер текста
thankYouText2.BackgroundTransparency = 1

-- Параметры для анимации появления
local appearTweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local appearTween = TweenService:Create(notifyFrame, appearTweenInfo, {BackgroundTransparency = 0.5})

-- Параметры для анимации исчезания
local disappearTweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local disappearTween = TweenService:Create(notifyFrame, disappearTweenInfo, {BackgroundTransparency = 1})

-- Запуск анимации появления
appearTween:Play()
appearTween.Completed:Wait() -- Ждем завершения анимации появления

-- Удаление уведомления через 5 секунд (время ожидания перед началом исчезания)
wait(5)

-- Запуск анимации исчезания
disappearTween:Play()
disappearTween.Completed:Wait() -- Ждем завершения анимации исчезания

-- Удаляем GUI после исчезания
gui:Destroy()
