.class Lcom/android/settings/location/LocationMode$XTServiceConnection;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XTServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationMode;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/LocationMode;Lcom/android/settings/location/LocationMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/location/LocationMode$XTServiceConnection;-><init>(Lcom/android/settings/location/LocationMode;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {p2}, Lcom/android/location/XT/IXTSrv$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/location/XT/IXTSrv;

    move-result-object v4

    # setter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3, v4}, Lcom/android/settings/location/LocationMode;->access$302(Lcom/android/settings/location/LocationMode;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;

    const-string v3, "LocationMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected, service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v5}, Lcom/android/settings/location/LocationMode;->access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;
    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;
    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;
    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v3

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;
    invoke-static {v4}, Lcom/android/settings/location/LocationMode;->access$400(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/location/XT/IXTSrv;->registerCallback(Lcom/android/location/XT/IXTSrvCb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "LocationMode"

    const-string v4, "Failed connecting service!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;
    invoke-static {v1}, Lcom/android/settings/location/LocationMode;->access$400(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/location/XT/IXTSrv;->unregisterCallback(Lcom/android/location/XT/IXTSrvCb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->this$0:Lcom/android/settings/location/LocationMode;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0, v1}, Lcom/android/settings/location/LocationMode;->access$302(Lcom/android/settings/location/LocationMode;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
