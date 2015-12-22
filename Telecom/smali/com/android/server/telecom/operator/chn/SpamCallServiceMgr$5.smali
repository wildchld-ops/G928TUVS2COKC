.class Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;
.super Ljava/lang/Object;
.source "SpamCallServiceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->doReport(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    iput-object p2, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->val$number:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;

    invoke-direct {v0}, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->val$number:Ljava/lang/String;

    iput-object v1, v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mNumber:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->val$type:I

    iput v1, v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTagType:I

    const-string v1, ""

    iput-object v1, v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTagName:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTelType:I

    const/16 v1, 0x32

    iput v1, v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTalkTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mCallTime:I

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$100()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$100()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->isSpamCallInfoCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mSpamCallInfoCache:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$100()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->setIsReport(Z)V

    :cond_0
    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    iget-object v2, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$5;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    iget-object v2, v2, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mBinderReportNumListener:Lcom/bst/spamcall/numbermark/IBinderReportNumListener;

    invoke-interface {v1, v0, v2}, Lcom/bst/spamcall/numbermark/IGetNumMarkService;->ReportNumber(Lcom/bst/spamcall/numbermark/BinderReportNumInfo;Lcom/bst/spamcall/numbermark/IBinderReportNumListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
