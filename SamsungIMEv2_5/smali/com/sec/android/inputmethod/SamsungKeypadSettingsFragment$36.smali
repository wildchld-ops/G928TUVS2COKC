.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;
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

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z
    invoke-static {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v1, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

    invoke-interface {v1, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;->onDetailMenuSeleted(Landroid/preference/Preference;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v2, Lcom/ime/implement/setting/LanguageItemSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "sip_input_language"

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
