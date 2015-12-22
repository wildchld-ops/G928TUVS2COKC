.class Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$2;
.super Ljava/lang/Object;
.source "HomeScreenSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->setHomeScreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->showHomeScreenModeSettings()V

    const/4 v0, 0x0

    return v0
.end method
