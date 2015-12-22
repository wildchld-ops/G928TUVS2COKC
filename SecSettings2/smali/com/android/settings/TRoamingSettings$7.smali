.class Lcom/android/settings/TRoamingSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$000(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$000(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
