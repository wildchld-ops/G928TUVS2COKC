.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$KnoxVpnFirewallHandler;
.super Landroid/os/Handler;
.source "KnoxVpnFirewallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxVpnFirewallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$KnoxVpnFirewallHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v11, "command"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/util/StringTokenizer;

    const-string v11, ";"

    invoke-direct {v9, v2, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v11, ""

    if-eq v10, v11, :cond_5

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$000()Z

    move-result v11

    if-eqz v11, :cond_0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handle command : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v11, "sh"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "-c"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v11, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$000()Z

    move-result v11

    if-eqz v11, :cond_1

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handle : error#1 : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_3
    :try_start_2
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : IOException iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_4
    move-object v1, v0

    goto/16 :goto_1

    :cond_3
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v5

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v0, v1

    :goto_5
    :try_start_5
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_2

    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v11

    move-object v0, v1

    :goto_6
    if-eqz v8, :cond_4

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_7
    throw v11

    :catch_5
    move-exception v5

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_1
    move-exception v11

    goto :goto_6

    :catch_6
    move-exception v4

    goto :goto_5

    :catch_7
    move-exception v4

    move-object v0, v1

    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_4

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
