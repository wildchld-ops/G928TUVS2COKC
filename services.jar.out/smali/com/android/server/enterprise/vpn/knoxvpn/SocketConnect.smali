.class public Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
.super Ljava/lang/Thread;
.source "SocketConnect.java"


# instance fields
.field private from:Ljava/io/InputStream;

.field private to:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->start()V

    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;

    invoke-direct {v2, p1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v2, 0x200

    new-array v0, v2, [B

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
