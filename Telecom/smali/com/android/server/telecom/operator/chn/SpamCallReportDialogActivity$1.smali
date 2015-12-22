.class Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$1;
.super Ljava/lang/Object;
.source "SpamCallReportDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$1;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$1;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->finish()V

    return-void
.end method
