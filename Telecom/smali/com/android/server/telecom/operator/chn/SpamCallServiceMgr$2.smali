.class Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$2;
.super Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener$Stub;
.source "SpamCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    invoke-direct {p0}, Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSpamNumInfoComplete(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V
    .locals 1

    const-string v0, "onGetSpamNumInfoComplete "

    # invokes: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setBinderGetNumMarkResult(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V

    iget-boolean v0, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->isAutoReject:Z

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAutoRejectCall(Z)V

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$100()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$100()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->setSpamCallInfoCache(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V

    :cond_0
    return-void
.end method

.method public onGetSpamNumInfoFailure(I)V
    .locals 1

    const-string v0, "onGetSpamNumInfoFailure"

    # invokes: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    return-void
.end method
