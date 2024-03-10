#include<arpa/inet.h>
#include<sys/socket.h>
#include<cstring>
#include<cstdio>
int main(){
    int sockfd=socket(AF_INET,SOCK_STREAM,0);
    struct sockaddr_in serv_addr;
    bzero(&serv_addr,sizeof(serv_addr));
    serv_addr.sin_family=AF_INET;
    serv_addr.sin_addr.s_addr=inet_addr("127.0.0.1");
    serv_addr.sin_port=htons(8888);
    bind(sockfd, (sockaddr*)&serv_addr, sizeof(serv_addr));

    listen(sockfd, SOMAXCONN);
    //监听线程

    struct sockaddr_in clnt_addr;
    socklen_t clnt_addr_len = sizeof(clnt_addr);
    bzero(&clnt_addr, sizeof(clnt_addr));
    int clnt_sockfd = accept(sockfd, (sockaddr*)&clnt_addr, &clnt_addr_len);//阻塞 等到用户端connect
    printf("new client fd %d! IP: %s Port: %d\n", clnt_sockfd, inet_ntoa(clnt_addr.sin_addr), ntohs(clnt_addr.sin_port));
    //新的连接线程 通过这个线程通信
}
