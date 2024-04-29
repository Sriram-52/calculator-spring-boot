<%@page language="java" %>
<html>
    <head>
        <title>Calculator</title>
        <style>
            main {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
            }
            h1 {
                margin-bottom: 1rem;
            }
            form {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            input, select, button {
                margin: 0.5rem;
                padding: 0.5rem;
                width: 100%;
                max-width: 300px;
                border: 1px solid #ccc;
                border-radius: 0.25rem;
            }
            button {
                background-color: #007bff;
                color: #fff;
                cursor: pointer;
            }
            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <main>
            <h1>Calculator</h1>
            <form action="calculator">
                <input type="text" name="num1" placeholder="Enter first number" required>
                <select name="operation" required>
                    <option value="add">+</option>
                    <option value="subtract">-</option>
                    <option value="multiply">*</option>
                    <option value="divide">/</option>
                </select>
                <input type="text" name="num2" placeholder="Enter second number" required>
                <button type="submit">Calculate</button>
            </form>
        </main>
    </body>
</html