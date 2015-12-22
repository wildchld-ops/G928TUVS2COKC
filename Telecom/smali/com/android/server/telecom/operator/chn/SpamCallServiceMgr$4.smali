.class Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$4;
.super Lcom/bst/spamcall/numbermark/IBinderReportNumListener$Stub;
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

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$4;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    invoke-direct {p0}, Lcom/bst/spamcall/numbermark/IBinderReportNumListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportNumberComplete()V
    .locals 3

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$200()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ba

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onReportNumberFailure(I)V
    .locals 0

    return-void
.end method
