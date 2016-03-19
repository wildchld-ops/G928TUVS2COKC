.class public Lcom/ime/implement/setting/FuzzyPinyinSettings;
.super Landroid/preference/PreferenceActivity;
.source "FuzzyPinyinSettings.java"


# instance fields
.field private fuzzyStateFlag:[Z

.field private mFuzzyPinyinANGAN:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinCHC:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinENGEN:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinHF:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinINGIN:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinNL:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinRL:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinSHS:Landroid/preference/SwitchPreference;

.field private mFuzzyPinyinZHZ:Landroid/preference/SwitchPreference;

.field mInputManager:Lcom/ime/framework/common/InputManager;

.field mRepository:Lcom/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->fuzzyStateFlag:[Z

    return-void
.end method

.method private updateSettingsFuzzyWidget()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FuzzyPinyinSettings: updateSettingsFuzzyWidget =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->fuzzyStateFlag:[Z

    aget-boolean v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinZHZ:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinCHC:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinSHS:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinNL:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinRL:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinHF:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinANGAN:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinENGEN:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinINGIN:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v2, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0501b3

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/FuzzyPinyinSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    invoke-virtual {p0}, Lcom/ime/implement/setting/FuzzyPinyinSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/FuzzyPinyinSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "setting_fuzzy_pinyin_zh_z_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinZHZ:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_ch_c_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinCHC:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_sh_s_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinSHS:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_n_l_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinNL:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_r_l_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinRL:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_h_f_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinHF:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_ang_an_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinANGAN:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_eng_en_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinENGEN:Landroid/preference/SwitchPreference;

    const-string v2, "setting_fuzzy_pinyin_ing_in_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinINGIN:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/ime/implement/setting/FuzzyPinyinSettings;->updateSettingsFuzzyWidget()V

    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FuzzyPinyinSettings: fuzzyStateFlag[0] =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->fuzzyStateFlag:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
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
    invoke-virtual {p0}, Lcom/ime/implement/setting/FuzzyPinyinSettings;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinZHZ:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinCHC:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinSHS:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinNL:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinRL:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinHF:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinANGAN:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinENGEN:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v1, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinINGIN:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FuzzyPinyinSettings: onPreferenceTreeClick =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->fuzzyStateFlag:[Z

    aget-boolean v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const-string v3, "setting_fuzzy_pinyin_zh_z_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v4, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    aget-object v1, v4, v1

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinZHZ:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v3, v1, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    const-string v1, "setting_fuzzy_pinyin_ch_c_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinCHC:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const-string v1, "setting_fuzzy_pinyin_sh_s_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinSHS:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    const-string v1, "setting_fuzzy_pinyin_n_l_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinNL:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string v1, "setting_fuzzy_pinyin_r_l_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinRL:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    const-string v1, "setting_fuzzy_pinyin_h_f_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinHF:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_8
    const-string v1, "setting_fuzzy_pinyin_ang_an_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinANGAN:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "setting_fuzzy_pinyin_eng_en_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinENGEN:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "setting_fuzzy_pinyin_ing_in_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    sget-object v3, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ime/implement/setting/FuzzyPinyinSettings;->mFuzzyPinyinINGIN:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/ime/implement/setting/FuzzyPinyinSettings;->updateSettingsFuzzyWidget()V

    return-void
.end method
