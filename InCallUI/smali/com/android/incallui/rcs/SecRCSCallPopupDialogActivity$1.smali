.class Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;
.super Ljava/lang/Object;
.source "SecRCSCallPopupDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->showRCSDialog(ILjava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;

    iput-object p2, p0, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    # getter for: Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept Invite mini InCall "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;

    # getter for: Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->access$100(Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->access$102(Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;

    iget-object v1, p0, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;->val$call:Lcom/android/incallui/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/rcs/SecRCSCallPopupDialogActivity;->finish()V

    return-void
.end method
