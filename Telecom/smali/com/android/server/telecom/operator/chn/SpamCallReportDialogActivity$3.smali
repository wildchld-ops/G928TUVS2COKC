.class Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;
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


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSpamCallReportDialog onClick which : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    const/16 v1, 0x3c

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    const/16 v1, 0x40

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    const/16 v1, 0x3f

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    const/16 v1, 0x41

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    const/16 v1, 0x3d

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    const/16 v1, 0x3e

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    invoke-static {v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    const/16 v1, 0x42

    # setter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
