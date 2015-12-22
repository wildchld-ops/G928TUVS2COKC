.class Lcom/android/server/enterprise/general/MiscPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$1;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "MiscPolicy"

    const-string v2, "Received intent: android.intent.action.BOOT_COMPLETED or android.intent.action.USER_ADDED"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$1;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # invokes: Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/enterprise/general/MiscPolicy;->access$700(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/net/IConnectivityManager;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$1;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # invokes: Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxyOnBoot()V
    invoke-static {v1}, Lcom/android/server/enterprise/general/MiscPolicy;->access$800(Lcom/android/server/enterprise/general/MiscPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiscPolicy"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
