.class Lcom/android/phone/BootupListener$1$1;
.super Ljava/lang/Object;
.source "BootupListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BootupListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BootupListener$1;


# direct methods
.method constructor <init>(Lcom/android/phone/BootupListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BootupListener$1$1;->this$1:Lcom/android/phone/BootupListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v1, "BootupListener"

    const-string v2, "Start FlatRateAlertActivity."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BootupListener$1$1;->this$1:Lcom/android/phone/BootupListener$1;

    iget-object v1, v1, Lcom/android/phone/BootupListener$1;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BootupListener$1$1;->this$1:Lcom/android/phone/BootupListener$1;

    iget-object v2, v2, Lcom/android/phone/BootupListener$1;->val$activityIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BootupListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
