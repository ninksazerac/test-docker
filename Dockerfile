FROM node:18
# กำหนด directory เริ่มต้นใน container (ตอน run ขึ้นมา)
WORKDIR /usr/src/app

COPY package.json ./

#ก่อนจะ npm install ต้อง copy file package.json ก่อน 
RUN npm install

# copy file index.js เข้ามาใน container
#./index.js ไฟล์จากเครื่องเรา
#./ ไฟล์ที่จะเข้าไปใน container 
COPY ./index.js ./

# กำหนด port ที่จะให้เปิดใช้งาน
EXPOSE 8000
# กำหนด command สำหรับเริ่มต้น run application (ตอน run container)
CMD ["node", "index.js"]