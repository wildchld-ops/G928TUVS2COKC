.class public Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;
.super Landroid/preference/DialogPreference;
.source "DeleteDynamicLanguageModelDialog.java"


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsTabletMode:Z

.field private mPersonalizerSettingsActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field private mSamsungKeypadSettings:Lcom/sec/android/inputmethod/SamsungKeypadSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSamsungKeypadSettings:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    if-eqz v0, :cond_1

    const-string v0, "Configuration has not been set"

    iget-object v1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSamsungKeypadSettings:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSamsungKeypadSettings:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->clearUserModel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Configuration has not been set"

    iget-object v1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mPersonalizerSettingsActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mPersonalizerSettingsActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->clearUserModel()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setConfiguration(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "TABLET_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mIsTabletMode:Z

    instance-of v0, p1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iput-object p1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSamsungKeypadSettings:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iput-object p1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mPersonalizerSettingsActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    goto :goto_0
.end method
