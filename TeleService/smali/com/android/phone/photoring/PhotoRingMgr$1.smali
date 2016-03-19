.class Lcom/android/phone/photoring/PhotoRingMgr$1;
.super Ljava/lang/Object;
.source "PhotoRingMgr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-static {p2}, Lcom/android/services/telephony/common/IMCIDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/IMCIDService;

    move-result-object v1

    # setter for: Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/services/telephony/common/IMCIDService;
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->access$002(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/services/telephony/common/IMCIDService;)Lcom/android/services/telephony/common/IMCIDService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/services/telephony/common/IMCIDService;
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->access$002(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/services/telephony/common/IMCIDService;)Lcom/android/services/telephony/common/IMCIDService;

    return-void
.end method
