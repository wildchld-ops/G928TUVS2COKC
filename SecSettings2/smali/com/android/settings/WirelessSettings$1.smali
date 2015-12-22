.class Lcom/android/settings/WirelessSettings$1;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    const-string v3, "vpn_settings"

    invoke-virtual {v2, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v3}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
