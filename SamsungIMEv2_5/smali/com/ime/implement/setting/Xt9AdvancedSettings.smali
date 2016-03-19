.class public Lcom/ime/implement/setting/Xt9AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "Xt9AdvancedSettings.java"


# static fields
.field static final KEY_CURRENT_MODE:Ljava/lang/String; = "CURRENT_MODE"

.field static final KEY_EDITTING_WORD:Ljava/lang/String; = "EDITTING_WORD"

.field private static TracePopup:Z

.field private static TracePopup2:Z


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsKorMode:Z

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field traceDialog:Landroid/app/AlertDialog$Builder;

.field traceDialog2:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/ime/implement/setting/Xt9AdvancedSettings$7;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings$7;-><init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->TracePopup:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/Xt9AdvancedSettings;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->TracePopup2:Z

    return p0
.end method

.method private setEntries(Ljava/lang/String;II)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    instance-of v6, v3, Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_1

    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v6, v4, v1

    const-string v7, "%d"

    aget-object v8, v5, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0d0154

    const v6, 0x7f0d00b5

    const v5, 0x7f0d0068

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v2

    iget-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mIsKorMode:Z

    if-eqz v2, :cond_5

    const v3, 0x7f030093

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    iget-boolean v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mIsKorMode:Z

    if-eqz v3, :cond_4

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d006f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/Xt9AdvancedSettings$3;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings$3;-><init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/Xt9AdvancedSettings$2;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings$2;-><init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/Xt9AdvancedSettings$1;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings$1;-><init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->traceDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0079

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/Xt9AdvancedSettings$6;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings$6;-><init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/Xt9AdvancedSettings$5;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings$5;-><init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/Xt9AdvancedSettings$4;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings$4;-><init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->traceDialog2:Landroid/app/AlertDialog$Builder;

    :cond_4
    const-string v3, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const/high16 v4, 0x7f070000

    const v5, 0x7f070001

    invoke-direct {p0, v3, v4, v5}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->setEntries(Ljava/lang/String;II)V

    return-void

    :cond_5
    const v3, 0x7f03008a

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->TracePopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->traceDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->traceDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    sget-boolean v0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->TracePopup2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->traceDialog2:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings;->traceDialog2:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method
