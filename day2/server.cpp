#include<arpa/inet.h>
#include<sys/socket.h>
#include<cstring>
#include<cstdio>
#include "util.h"
#include <c++/8/fstream>
#include <fstream>
#include <unistd.h>
int main(){
    int sockfd=socket(AF_INET,SOCK_STREAM,0);
    struct sockaddr_in serv_addr;
    bzero(&serv_addr,sizeof(serv_addr));
    serv_addr.sin_family=AF_INET;
    serv_addr.sin_addr.s_addr=inet_addr("127.0.0.1");
    serv_addr.sin_port=htons(8888);
    errif(bind(sockfd, (sockaddr*)&serv_addr, sizeof(serv_addr))==-1, "socket bind error");

    errif(listen(sockfd, SOMAXCONN)==-1,"socket listen error");
    //监听线程

    struct sockaddr_in clnt_addr;
    socklen_t clnt_addr_len = sizeof(clnt_addr);
    bzero(&clnt_addr, sizeof(clnt_addr));

    int clnt_sockfd = accept(sockfd, (sockaddr*)&clnt_addr, &clnt_addr_len);//阻塞 等到用户端connect
    errif(clnt_sockfd==-1,"socket accept error");
    printf("new client fd %d! IP: %s Port: %d\n", clnt_sockfd, inet_ntoa(clnt_addr.sin_addr), ntohs(clnt_addr.sin_port));
    //新的连接线程 通过这个线程通信
    while(1){
        char buf[1024];
        bzero(&buf,sizeof(buf));
        ssize_t read_bytes = read(clnt_sockfd,buf,sizeof(buf));
        if(read_bytes > 0){
            printf("message from client fd %d: %s\n", clnt_sockfd, buf);
            write(clnt_sockfd, buf, sizeof(buf));//write same back
        } else if(read_bytes == 0){
            printf("client fd %d disconnected\n", clnt_sockfd);
            close(clnt_sockfd);
            break;
        } else if(read_bytes == -1){
            close(clnt_sockfd);
            errif(true, "socket read error");
        }
    }
    close(sockfd);
    return 0;
}
