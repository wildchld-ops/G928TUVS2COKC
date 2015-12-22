.class Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;
.super Ljava/lang/Object;
.source "EnterpriseRightsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/irm/EnterpriseRightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IRMServiceConnection"
.end annotation


# instance fields
.field private mIrmInterface:Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

.field private mUserInfoId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mIrmInterface:Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    iput p1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    return-void
.end method


# virtual methods
.method public getIRMService()Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mIrmInterface:Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected IRMServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lcom/sec/enterprise/knox/irm/IIRMServiceAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mIrmInterface:Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected IRMServiceConnection: Service connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IRM Interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mIrmInterface:Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IRM ComponentName className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected IRMServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mIrmInterface:Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: IRMServiceConnection Removing the Entry from MAPs for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIRMConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: IRMServiceConnection : Entry is not there for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$IRMServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
