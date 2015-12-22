.class Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
.super Landroid/os/AsyncTask;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;Lcom/android/settings/wifi/SetupWizardWifiScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x2

    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    :try_start_0
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "Waiting for 2 seconds to ensure DNS is setup to avoid UnknownHostException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isWiFiConnAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isCaptivePortalNetwork()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z
    invoke-static {v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, 0x4

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    :goto_1
    return-object v7

    :catch_0
    move-exception v1

    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Exception in Thread sleep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, 0x1

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, 0x0

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    :try_start_1
    aget v4, v3, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    if-gez v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, -0x1

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Exception in Thread sleep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :array_0
    .array-data 4
        0x7d0
        0x64
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " What is the Connection result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v1, v1, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
