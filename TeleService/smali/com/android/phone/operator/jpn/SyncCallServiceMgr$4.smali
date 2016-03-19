.class Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->initiateSCover(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "onCoverStateChanged SWITCH_STATE_COVER_OPEN"

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$1100(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "onCoverStateChanged SWITCH_STATE_COVER_CLOSE"

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$1100(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
