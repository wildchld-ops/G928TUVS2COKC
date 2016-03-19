.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    instance-of v4, p1, Lcom/sec/android/inputmethod/SpinnerPreference;

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/ime/framework/repository/InputModeStatus;->setChangedMainValuesForStartInputView(Z)V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/SpinnerPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    const-string v5, "S00F"

    const-string v6, "QWERTY"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    const-string v5, "S00F"

    const-string v6, "CHUNJYIN"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    const-string v5, "S00F"

    const-string v6, "CHUNJYIN PLUS"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    const-string v5, "S00F"

    const-string v6, "VEGA"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    const-string v5, "S00F"

    const-string v6, "NARAGUL"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
