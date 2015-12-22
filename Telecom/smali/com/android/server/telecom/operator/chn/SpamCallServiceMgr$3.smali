.class Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;
.super Ljava/lang/Object;
.source "SpamCallServiceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->doCheck(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

.field final synthetic val$isEmergencynumber:Z

.field final synthetic val$isIncoming:Z


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    iput-boolean p2, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->val$isEmergencynumber:Z

    iput-boolean p3, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->val$isIncoming:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->val$isEmergencynumber:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCheck - GetNumberInfo number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    iget-object v1, v1, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    iget-object v2, v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mNum:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->val$isIncoming:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    :goto_0
    iget-object v3, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    iget-object v3, v3, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mBinderGetNumMarkListener:Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;

    invoke-interface {v1, v2, v0, v3}, Lcom/bst/spamcall/numbermark/IGetNumMarkService;->GetNumberInfo(Ljava/lang/String;ILcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x11

    goto :goto_0

    :cond_1
    const-string v0, "doCheck - myService is null or Emergency call: "

    # invokes: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
