.class Lcom/android/settings/simcardstatus/SamsungRilConnector$1;
.super Ljava/lang/Object;
.source "SamsungRilConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simcardstatus/SamsungRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;


# direct methods
.method constructor <init>(Lcom/android/settings/simcardstatus/SamsungRilConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object v0, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$002(Lcom/android/settings/simcardstatus/SamsungRilConnector;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mIsConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$102(Lcom/android/settings/simcardstatus/SamsungRilConnector;Z)Z

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->getBlob()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcom/android/settings/simcardstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$002(Lcom/android/settings/simcardstatus/SamsungRilConnector;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/simcardstatus/SamsungRilConnector;->mIsConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->access$102(Lcom/android/settings/simcardstatus/SamsungRilConnector;Z)Z

    return-void
.end method
