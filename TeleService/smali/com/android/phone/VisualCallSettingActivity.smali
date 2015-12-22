.class public Lcom/android/phone/VisualCallSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "VisualCallSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private first:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mLegalAgreementDialog:Landroid/app/AlertDialog;

.field private mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

.field private mShowDisclaimer:Z

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;

.field private mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mShowDisclaimer:Z

    iput-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VisualCallSettingActivity;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/phone/VisualCallSettingActivity;

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/VisualCallSettingActivity;I)V
    .locals 0
    .param p0    # Lcom/android/phone/VisualCallSettingActivity;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/VisualCallSettingActivity;->saveAgreementFlag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/VisualCallSettingActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/VisualCallSettingActivity;

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateAutoUpdate()V

    return-void
.end method

.method private getAgreementFlag()I
    .locals 5

    :try_start_0
    const-string v3, "com.android.incallui"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/VisualCallSettingActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string v3, "show_user_agreement_shared"

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "show_user_agreement"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initLayout()V
    .locals 2

    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/android/phone/VisualCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Lcom/android/phone/VisualCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/android/phone/VisualCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/VisualCallSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/VisualCallSettingActivity$1;-><init>(Lcom/android/phone/VisualCallSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    return-void
.end method

.method private saveAgreementFlag(I)V
    .locals 6
    .param p1    # I

    :try_start_0
    const-string v4, "com.android.incallui"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/VisualCallSettingActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string v4, "show_user_agreement_shared"

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "show_user_agreement"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showUserAgreementDialog()V
    .locals 15

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/android/phone/VisualCallSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v12, 0x7f0400bb

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v12, 0x7f1001e9

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v12, 0x7f0a07a1

    invoke-virtual {p0, v12}, Lcom/android/phone/VisualCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v12, 0x7f0a07a5

    invoke-virtual {p0, v12}, Lcom/android/phone/VisualCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/text/style/URLSpan;

    const-string v13, "http://m.dianhua.cn/ivr_termofservice"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v4

    const/16 v14, 0x21

    invoke-virtual {v5, v12, v4, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v12, 0x7f100133

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f1001ed

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$2;

    invoke-direct {v12, p0, v1}, Lcom/android/phone/VisualCallSettingActivity$2;-><init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f1001eb

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f1001ea

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$3;

    invoke-direct {v12, p0, v11}, Lcom/android/phone/VisualCallSettingActivity$3;-><init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0a07a0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0a07a2

    new-instance v13, Lcom/android/phone/VisualCallSettingActivity$4;

    invoke-direct {v13, p0, v1, v11}, Lcom/android/phone/VisualCallSettingActivity$4;-><init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/android/phone/VisualCallSettingActivity$5;

    invoke-direct {v13, p0}, Lcom/android/phone/VisualCallSettingActivity$5;-><init>(Lcom/android/phone/VisualCallSettingActivity;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$6;

    invoke-direct {v12, p0}, Lcom/android/phone/VisualCallSettingActivity$6;-><init>(Lcom/android/phone/VisualCallSettingActivity;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/VisualCallSettingActivity;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/phone/VisualCallSettingActivity;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateAutoUpdate()V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "VisualCallSettingActivity"

    const-string v3, "updateAutoUpdate"

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visual_call_update_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "VisualCallSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoUpdate : AutoUpdate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLayout(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const-string v0, "VisualCallSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0, p2}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mContext:Landroid/content/Context;

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0400bd

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->setContentView(I)V

    :cond_0
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->addPreferencesFromResource(I)V

    const-string v1, "visual_call_turn_on"

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    const-string v1, "preference_visual_call_update"

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CustomListPreference;

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const-string v1, "preference_visual_call_update_material"

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CustomListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visual_call_update_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0a079c

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->initLayout()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    goto :goto_0

    :cond_6
    if-ne v0, v3, :cond_7

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0a079f

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0a079d

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    const-string v3, "VisualCallSettingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click mTurnOnPreference value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus(Z)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    if-ne p1, v3, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "visual_call_update_type"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "VisualCallSettingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " type =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v5, 0x7f0a079c

    invoke-virtual {v3, v5}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v5, 0x7f0a079f

    invoke-virtual {v3, v5}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v5, 0x7f0a079d

    invoke-virtual {v3, v5}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "visual_call_update_type"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    if-ne p2, v1, :cond_0

    const-string v1, "VisualCallSettingActivity"

    const-string v2, "click mSelectCityPreference"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateAutoUpdate()V

    return-void
.end method

.method public setUpdateMode()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visual_call_update_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0a079c

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0a079f

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0a079d

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public updateTurnOnStatus()V
    .locals 7

    const v5, 0x7f0a079a

    const v4, 0x7f0a0799

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "visual_call_status"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, v2, :cond_2

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/VisualCallSettingActivity;->updateLayout(Z)V

    :goto_3
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    if-ne v0, v2, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SwitchPreferenceScreen;

    if-ne v0, v2, :cond_5

    move v1, v4

    :goto_4
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreferenceScreen;->setTitle(I)V

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4
.end method

.method public updateTurnOnStatus(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->getAgreementFlag()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->showUserAgreementDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visual_call_status"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
