.class Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;
.super Landroid/os/Handler;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v12, "command"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "type"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v10, ""

    move-object v0, v3

    array-length v8, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v0, v7

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v12, Ljava/lang/ProcessBuilder;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    iget-object v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    invoke-static {v12, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    :goto_1
    return-void

    :catch_0
    move-exception v6

    const-string v12, "FirewallPolicy"

    const-string v13, "IOException iptables command failed "

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v12, "FirewallPolicy"

    const-string v13, "InterruptedException iptables command failed "

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v12, "FirewallPolicy"

    const-string v13, "Exception on CommandThread"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
