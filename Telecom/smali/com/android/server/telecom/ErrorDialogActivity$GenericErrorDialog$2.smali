.class Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$2;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;

.field final synthetic val$this$0:Lcom/android/server/telecom/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;Lcom/android/server/telecom/ErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$2;->this$1:Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;

    iput-object p2, p0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$2;->val$this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog$2;->this$1:Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;

    iget-object v0, v0, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    return-void
.end method
