.class Lcom/android/phone/callsettings/KddiCallPrevention$8;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$8;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onClick LastCallButton"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tel:1442"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$8;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-virtual {v2, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$8;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateLastCall:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$402(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$8;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateLastCall:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$402(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
