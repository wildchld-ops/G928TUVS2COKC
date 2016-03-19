.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v4, 0x1

    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v3, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

    invoke-interface {v3, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;->onDetailMenuSeleted(Landroid/preference/Preference;)V

    :goto_1
    return v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v5, Lcom/ime/implement/setting/SpellCheckerSettings;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
