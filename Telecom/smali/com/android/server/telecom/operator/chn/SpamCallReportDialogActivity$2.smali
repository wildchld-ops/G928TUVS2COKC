.class Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;
.super Ljava/lang/Object;
.source "SpamCallReportDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->showSpamCallReportDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iput-object p2, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->getInstance()Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$100(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->CancleReport(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v2}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$100(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->doReport(Ljava/lang/String;I)V

    goto :goto_0
.end method
