.class Lcom/android/server/telecom/secutils/ErrorDialog$9;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$9;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$9;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$902(Lcom/android/server/telecom/secutils/ErrorDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$9;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$600(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    return-void
.end method
