.class public Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;
.super Landroid/preference/DialogPreference;
.source "DeletePersonalizedDataDialog.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field protected mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsVZWString:Z

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->isVzwString()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mIsVZWString:Z

    return-void
.end method

.method private resetUpdatedTime()V
    .locals 6

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "messaging_time"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "contacts_time"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "connect"

    invoke-virtual {p0, v3}, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, "connect_messaging_enable"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mIsVZWString:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0d018f

    invoke-virtual {v0, v3}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(I)V

    :cond_0
    :goto_0
    const-string v3, "connect_contacts_enable"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mIsVZWString:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0d0191

    invoke-virtual {v0, v3}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v3, 0x7f0d018e

    invoke-virtual {v0, v3}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const v3, 0x7f0d0190

    invoke-virtual {v0, v3}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->resetUpdatedTime()V

    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->resetDLMData()S

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01af

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
