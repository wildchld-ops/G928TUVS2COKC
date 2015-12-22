.class Lcom/android/server/telecom/secutils/ErrorDialog$10;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;->showAirplaneModeOffProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$10;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$10;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$10;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$902(Lcom/android/server/telecom/secutils/ErrorDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$10;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$10;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$600(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    :cond_0
    return-void
.end method
