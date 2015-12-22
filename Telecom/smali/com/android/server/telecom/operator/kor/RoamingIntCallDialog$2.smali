.class Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$2;
.super Ljava/lang/Object;
.source "RoamingIntCallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "onClick: positive button"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outging_intcall_lock_roaming"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
