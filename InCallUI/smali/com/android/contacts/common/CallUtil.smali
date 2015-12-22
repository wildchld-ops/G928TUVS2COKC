.class public Lcom/android/contacts/common/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# direct methods
.method public static isVideoEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v1, "telecom"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    :cond_0
    return v2
.end method
