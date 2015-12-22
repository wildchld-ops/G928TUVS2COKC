.class Lcom/android/settings/GlobalLteRoaming$2;
.super Landroid/database/ContentObserver;
.source "GlobalLteRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GlobalLteRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalLteRoaming;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalLteRoaming;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GlobalLteRoaming$2;->this$0:Lcom/android/settings/GlobalLteRoaming;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/GlobalLteRoaming$2;->this$0:Lcom/android/settings/GlobalLteRoaming;

    # getter for: Lcom/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalLteRoaming;->access$000(Lcom/android/settings/GlobalLteRoaming;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GlobalLteRoaming$2;->this$0:Lcom/android/settings/GlobalLteRoaming;

    invoke-virtual {v3}, Lcom/android/settings/GlobalLteRoaming;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_roaming_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
