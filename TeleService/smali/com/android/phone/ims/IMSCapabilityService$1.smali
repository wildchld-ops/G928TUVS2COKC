.class Lcom/android/phone/ims/IMSCapabilityService$1;
.super Ljava/lang/Object;
.source "IMSCapabilityService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSCapabilityService;->startImsConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSCapabilityService;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSCapabilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSCapabilityService$1;->this$0:Lcom/android/phone/ims/IMSCapabilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "[IMSCapabilityService]"

    const-string v1, "Connected to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v0

    # setter for: Lcom/android/phone/ims/IMSCapabilityService;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;
    invoke-static {v0}, Lcom/android/phone/ims/IMSCapabilityService;->access$002(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "[IMSCapabilityService]"

    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    # setter for: Lcom/android/phone/ims/IMSCapabilityService;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;
    invoke-static {v0}, Lcom/android/phone/ims/IMSCapabilityService;->access$002(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method
