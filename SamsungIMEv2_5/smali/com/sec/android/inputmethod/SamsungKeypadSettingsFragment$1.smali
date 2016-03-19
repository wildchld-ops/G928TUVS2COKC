.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v3, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    invoke-interface {v3, v4, v1}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/ime/framework/common/InputManager;->setSpaceLanguageChange(Z)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S005"

    const-string v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S005"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
