.class Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;
.super Ljava/lang/Object;
.source "SyncCallServiceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->restartSyncCall(I)V
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

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$1100(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v1, "SyncCall can be start."

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    return-void
.end method
