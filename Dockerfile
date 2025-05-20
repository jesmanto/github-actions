# 1️⃣ Use an official lightweight Node.js image
FROM node:18-alpine

# 2️⃣ Set the working directory in the container
WORKDIR /app

# 3️⃣ Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# 4️⃣ Copy the rest of the application
COPY . .

# 5️⃣ Expose a port (if needed)
EXPOSE 3000

# 6️⃣ Define the startup command
CMD ["node", "index.js"]
