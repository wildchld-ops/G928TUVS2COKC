.class Lcom/android/settings/accounts/AccountPreferenceBase$3;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceBase;->addDropboxAccountPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const-string v2, "AccountSettings"

    const-string v3, "click dropbox preferemce::startingCloudSettingsActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.CLOUD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-virtual {v2, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
