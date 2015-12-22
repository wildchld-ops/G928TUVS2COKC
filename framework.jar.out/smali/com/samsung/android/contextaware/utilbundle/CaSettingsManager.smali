.class public Lcom/samsung/android/contextaware/utilbundle/CaSettingsManager;
.super Ljava/lang/Object;
.source "CaSettingsManager.java"


# static fields
.field private static final PHONE_STATE_DISABLED:I = 0x0

.field private static final PHONE_STATE_ENABLED:I = 0x1

.field static PHONE_STATE_SETTING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PHONE_STATE_DETECTION"

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaSettingsManager;->PHONE_STATE_SETTING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCaeSettings(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/CaSettingsManager;->PHONE_STATE_SETTING:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "Unable to set settings"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
