.class Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;
.super Ljava/lang/Object;
.source "KeyboardSwipeSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # getter for: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$100(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # getter for: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$100(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableSimplifiedChineseOrTaiwanLanguage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # getter for: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$100(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableHongKongLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # getter for: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$200(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d03c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d03c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2$1;-><init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d03c7

    new-instance v2, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2$2;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2$2;-><init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # invokes: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->changeSwipe(Landroid/preference/Preference;)V
    invoke-static {v1, p1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$000(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;Landroid/preference/Preference;)V

    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # getter for: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$100(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    const-string v2, "S009"

    const-string v3, "Continuous input"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
