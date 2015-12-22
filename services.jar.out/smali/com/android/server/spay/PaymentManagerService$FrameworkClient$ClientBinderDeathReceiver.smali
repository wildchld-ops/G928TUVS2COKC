.class Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "PaymentManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientBinderDeathReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method private deleteClient()V
    .locals 6

    const-string v4, "PaymentManagerService"

    const-string v5, "Error: Client stopped. Clearing Databstructures "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v4, v4, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iget-object v4, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v4, v4, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iget-object v4, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/spay/TAController;

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/spay/TAController;->unloadTA()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v4, v4, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    invoke-static {v4, v5}, Lcom/android/server/spay/PaymentManagerService;->access$002(Lcom/android/server/spay/PaymentManagerService;Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "PaymentManagerService"

    const-string v1, "Error: Framework App dead, unloading loaded TAs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method
