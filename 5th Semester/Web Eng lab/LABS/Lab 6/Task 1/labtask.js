window.onload = function () {
    alert("Welcome to our webpage!");
};
function displayGreeting() {
    const userName = document.getElementById("nameInput").value;
    if (userName.trim() === "") {
        alert("Please enter your name.");
    } else {
        document.getElementById("greetingMessage").innerText = `Hello, ${userName}! Welcome to our webpage.`;
    }
}
console.log("First 10 Natural Numbers:");
for (let i = 1; i <= 10; i++) {
    console.log(i);
}