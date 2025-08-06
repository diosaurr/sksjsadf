<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sksjskdk</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Roboto:wght@300;400&display=swap');
        
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #5489ac;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #2c3e50;
            overflow-x: hidden;
        }
        
        .card {
            background: linear-gradient(145deg, #ffffff 0%, #e6f2ff 100%);
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(30, 144, 255, 0.15);
            width: 90%;
            max-width: 550px;
            padding: 40px;
            text-align: center;
            position: relative;
            overflow: hidden;
            border: 1px solid #cce0ff;
            z-index: 1;
        }
        
        .card::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%231e90ff' fill-opacity='0.05' fill-rule='evenodd'/%3E%3C/svg%3E");
            z-index: -1;
        }
        
        .card-border {
            position: absolute;
            top: 10px;
            left: 10px;
            right: 10px;
            bottom: 10px;
            border: 1px dashed rgba(30, 144, 255, 0.3);
            border-radius: 15px;
            pointer-events: none;
        }
        
        h1 {
            color: #1a5276;
            margin-bottom: 25px;
            font-size: 32px;
            font-family: 'Playfair Display', serif;
            font-weight: 600;
            position: relative;
            display: inline-block;
        }
        
        h1::after {
            content: "";
            position: absolute;
            bottom: -10px;
            left: 25%;
            width: 50%;
            height: 2px;
            background: linear-gradient(to right, transparent, #5dade2, transparent);
        }
        
        p {
            font-size: 18px;
            line-height: 1.7;
            margin-bottom: 25px;
            color: #34495e;
        }
        
        .heart {
            color: #e74c3c;
            font-size: 24px;
            animation: pulse 1.5s infinite;
            display: inline-block;
        }
        
        .details {
            background-color: rgba(173, 216, 230, 0.2);
            border-radius: 12px;
            padding: 20px;
            margin: 25px 0;
            border: 1px solid rgba(30, 144, 255, 0.2);
            position: relative;
            backdrop-filter: blur(3px);
        }
        
        .details::before {
            content: "";
            position: absolute;
            top: 5px;
            left: 5px;
            right: 5px;
            bottom: 5px;
            border: 1px solid rgba(30, 144, 255, 0.1);
            border-radius: 8px;
            pointer-events: none;
        }
        
        .detail-item {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 15px 0;
        }
        
        .detail-icon {
            width: 24px;
            height: 24px;
            margin-right: 15px;
            fill: #4682b4;
        }
        
        button {
            background: linear-gradient(to right, #4682b4, #5dade2);
            color: white;
            border: none;
            padding: 14px 30px;
            font-size: 17px;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(70, 130, 180, 0.3);
            font-family: 'Playfair Display', serif;
            letter-spacing: 1px;
            position: relative;
            overflow: hidden;
        }
        
        button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(70, 130, 180, 0.4);
        }
        
        button::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to right, transparent, rgba(255, 255, 255, 0.3), transparent);
            transform: translateX(-100%);
            transition: transform 0.6s ease;
        }
        
        button:hover::after {
            transform: translateX(100%);
        }
        
        .floating-elements {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: -1;
            overflow: hidden;
        }
        
        .floating-element {
            position: absolute;
            opacity: 0.1;
            animation: float 15s infinite linear;
        }
        
        .floating-element:nth-child(1) {
            top: 10%;
            left: 5%;
            font-size: 40px;
            animation-delay: 0s;
        }
        
        .floating-element:nth-child(2) {
            top: 70%;
            left: 80%;
            font-size: 50px;
            animation-delay: -3s;
        }
        
        .floating-element:nth-child(3) {
            top: 30%;
            left: 85%;
            font-size: 35px;
            animation-delay: -5s;
        }
        
        .floating-element:nth-child(4) {
            top: 80%;
            left: 10%;
            font-size: 45px;
            animation-delay: -7s;
        }
        
        @keyframes float {
            0% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(10deg); }
            100% { transform: translateY(0) rotate(0deg); }
        }
        
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.3); }
            100% { transform: scale(1); }
        }
        
        .hidden {
            display: none;
        }
        
        .signature {
            font-style: italic;
            margin-top: 30px;
            color: #1a5276;
            font-weight: bold;
            font-family: 'Playfair Display', serif;
            font-size: 20px;
            position: relative;
        }
        
        .signature::before {
            content: "";
            position: absolute;
            top: -10px;
            left: 25%;
            width: 50%;
            height: 1px;
            background: linear-gradient(to right, transparent, #5dade2, transparent);
        }
        
        .confetti {
            position: absolute;
            width: 10px;
            height: 10px;
            background-color: #5dade2;
            opacity: 0;
            z-index: 10;
        }
        
        .map-link {
            color: #4682b4;
            text-decoration: none;
            border-bottom: 1px dashed #4682b4;
            transition: all 0.3s ease;
        }
        
        .map-link:hover {
            color: #1a5276;
            border-bottom-color: #1a5276;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="card-border"></div>
        <div class="floating-elements">
            <div class="floating-element">✧</div>
            <div class="floating-element">✿</div>
            <div class="floating-element">✦</div>
            <div class="floating-element">❉</div>
        </div>
        
        <h1>Приглашение на свидание <span class="heart">♥</span></h1>
        
        <div id="invitation">
            <p>Дорогая <span id="namePlaceholder">Диана</span>,</p>
            <p>Я хочу провести незабываемый вечер с тобой и подарить исключительно положительные эмоции. Пусть у нас будет не так много времени, но очень жду встречи с тобой, chérie</p>
            
            <div class="details">
                <div class="detail-item">
                    <svg class="detail-icon" viewBox="0 0 24 24">
                        <path d="M19,4H17V3a1,1,0,0,0-2,0V4H9V3A1,1,0,0,0,7,3V4H5A3,3,0,0,0,2,7V19a3,3,0,0,0,3,3H19a3,3,0,0,0,3-3V7A3,3,0,0,0,19,4Zm1,15a1,1,0,0,1-1,1H5a1,1,0,0,1-1-1V12H20Zm0-9H4V7A1,1,0,0,1,5,6H7V7A1,1,0,0,0,9,7V6h6V7a1,1,0,0,0,2,0V6h2a1,1,0,0,1,1,1Z"/>
                    </svg>
                    <span><strong>Когда:</strong> Суббота, 9 августа, вечер</span>
                </div>
                <div class="detail-item">
                    <svg class="detail-icon" viewBox="0 0 24 24">
                        <path d="M12,2a8,8,0,0,0-8,8c0,5.4,7.05,11.5,7.35,11.76a1,1,0,0,0,1.3,0C13,21.5,20,15.4,20,10A8,8,0,0,0,12,2Zm0,17.65c-2.13-2-6-6.31-6-9.65a6,6,0,0,1,12,0C18,13.34,14.13,17.66,12,19.65ZM12,6a4,4,0,1,0,4,4A4,4,0,0,0,12,6Zm0,6a2,2,0,1,1,2-2A2,2,0,0,1,12,12Z"/>
                    </svg>
                    <span><strong>Где:</strong> Гринвич(?), Пассаж(?), Твой дом(?)</span>
                </div>
            </div>
            
            <p>Очень надеюсь, что ты согласна принять моё приглашение</p>
            <button id="confirmBtn">Принять приглашение</button>
        </div>
        
        <div id="confirmation" class="hidden">
            <p>Спасибо, что приняла моё приглашение! <span class="heart">♥</span></p>
            <p>Я тщательно подготовлюсь к нашему свиданию и уверена, что мы хорошо проведём время вдвоём</p>
            <p>До встречи в субботу!</p>
            <div class="signature">С любовью,<br><span id="senderName">Полина</span></div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('confirmBtn').addEventListener('click', function() {
                document.getElementById('invitation').classList.add('hidden');
                document.getElementById('confirmation').classList.remove('hidden');
                createConfetti();
                for (let i = 0; i < 30; i++) {
                    setTimeout(() => createHeart(), i * 100);
                }
            });
            
            function createConfetti() {
                const colors = ['#5dade2', '#85c1e9', '#aed6f1', '#d4e6f1', '#ebf5fb'];
                const card = document.querySelector('.card');
                
                for (let i = 0; i < 100; i++) {
                    const confetti = document.createElement('div');
                    confetti.className = 'confetti';
                    confetti.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
                    confetti.style.left = Math.random() * 100 + '%';
                    confetti.style.top = -10 + 'px';
                    confetti.style.borderRadius = Math.random() > 0.5 ? '50%' : '0';
                    confetti.style.transform = `rotate(${Math.random() * 360}deg)`;
                    confetti.style.width = Math.random() * 8 + 5 + 'px';
                    confetti.style.height = Math.random() * 8 + 5 + 'px';
                    
                    card.appendChild(confetti);
                    
                    const animationDuration = Math.random() * 3 + 2;
                    
                    confetti.animate([
                        { top: '-10px', opacity: 0, transform: `rotate(0deg) scale(0.5)` },
                        { opacity: 1, transform: `rotate(${Math.random() * 360}deg) scale(1)` },
                        { top: '100%', opacity: 0, transform: `rotate(${Math.random() * 360}deg) scale(0.5)` }
                    ], {
                        duration: animationDuration * 1000,
                        easing: 'cubic-bezier(0.1, 0.8, 0.3, 1)',
                        delay: Math.random() * 2000
                    });
                    
                    setTimeout(() => confetti.remove(), animationDuration * 1000);
                }
            }
           
            });
    </script>
</body>
</html>
