.class public Lcom/android/server/telecom/RespondViaSmsSettings;
.super Ljava/lang/Object;
.source "RespondViaSmsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/RespondViaSmsSettings$Settings;
    }
.end annotation


# direct methods
.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
