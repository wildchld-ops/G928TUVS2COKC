.class Lcom/android/server/telecom/secutils/ErrorDialog$13;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;->showTryVoicecallDialog(I)V
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

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$13;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$13$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$13$1;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog$13;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$13;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$600(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    return-void
.end method
