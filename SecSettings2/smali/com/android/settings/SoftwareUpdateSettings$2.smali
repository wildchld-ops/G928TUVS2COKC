.class Lcom/android/settings/SoftwareUpdateSettings$2;
.super Ljava/lang/Object;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoftwareUpdateSettings;->InitComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoftwareUpdateSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SoftwareUpdateSettings$2;->this$0:Lcom/android/settings/SoftwareUpdateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "Software Update"

    const-string v4, "Wifi only is Selected"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/SoftwareUpdateSettings$2;->this$0:Lcom/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v2}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SOFTWARE_UPDATE_WIFI_ONLY"

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "sec.fota.intent.WIFIONLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "changed_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/SoftwareUpdateSettings$2;->this$0:Lcom/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v2}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/SoftwareUpdateSettings$2;->this$0:Lcom/android/settings/SoftwareUpdateSettings;

    const-string v4, "com.samsung.omcagent.intent.WIFI_ONLY"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    # invokes: Lcom/android/settings/SoftwareUpdateSettings;->sendOmcUpdate(Ljava/lang/String;Ljava/lang/Boolean;)Z
    invoke-static {v2, v4, v5}, Lcom/android/settings/SoftwareUpdateSettings;->access$200(Lcom/android/settings/SoftwareUpdateSettings;Ljava/lang/String;Ljava/lang/Boolean;)Z

    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
