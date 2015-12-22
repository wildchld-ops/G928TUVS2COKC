.class Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;
.super Ljava/lang/Object;
.source "TelecomDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->showCallRoamingGuardDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "extra_by_pass"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
