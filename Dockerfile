FROM quay.io/redmodz1/raganork:multidevice

RUN git clone https://github.com/redmodz1/raganork-md /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
