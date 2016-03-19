.class public Lcom/ime/implement/setting/ConnectSetting;
.super Landroid/preference/PreferenceActivity;
.source "ConnectSetting.java"


# instance fields
.field private mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContactsConnectModule:Lcom/ime/framework/connect/ContactsConnectModule;

.field mContactsPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsPersonalizedDataDefaultOff:Z

.field private mIsVZWString:Z

.field mMessagingConnectModule:Lcom/ime/framework/connect/MessagingConnectModule;

.field mMessagingPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

.field private mPhoneType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/implement/setting/ConnectSetting;->mPhoneType:I

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/ConnectSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/ConnectSetting;->showXt9GuideDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/ConnectSetting;)Lcom/ime/framework/acmanager/ACDownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method

.method private showXt9GuideDialog()V
    .locals 8

    iget-object v6, p0, Lcom/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const v5, 0x7f030060

    invoke-virtual {p0}, Lcom/ime/implement/setting/ConnectSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0167

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const/high16 v7, 0x7f0e0000

    invoke-direct {v6, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/ime/implement/setting/ConnectSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f10009c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v6, 0x104000a

    new-instance v7, Lcom/ime/implement/setting/ConnectSetting$3;

    invoke-direct {v7, p0, v1}, Lcom/ime/implement/setting/ConnectSetting$3;-><init>(Lcom/ime/implement/setting/ConnectSetting;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d0154

    new-instance v7, Lcom/ime/implement/setting/ConnectSetting$4;

    invoke-direct {v7, p0}, Lcom/ime/implement/setting/ConnectSetting$4;-><init>(Lcom/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/CscFeatureTagSipDummy;->TAG_CSCFEATURE_SIP_DISABLE_PERSONALIZED_DATA:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v1}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/ConfigFeature;->isVzwString()Z

    move-result v10

    iput-boolean v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mIsVZWString:Z

    invoke-static {}, Lcom/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v10

    iput-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget-boolean v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    if-eqz v10, :cond_8

    const v10, 0x7f03006d

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/ConnectSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string v10, "connect_messaging_enable"

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    const-string v10, "connect_contacts_enable"

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iget-boolean v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mIsVZWString:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v2}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    const v11, 0x7f0d018f

    invoke-virtual {v10, v11}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(I)V

    iget-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    const v11, 0x7f0d0191

    invoke-virtual {v10, v11}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(I)V

    :cond_1
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v10

    iput-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    iput v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mPhoneType:I

    iget v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mPhoneType:I

    if-eqz v10, :cond_9

    :cond_2
    :goto_1
    iget-boolean v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    if-nez v10, :cond_3

    const-string v10, "VZW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    const-string v10, "support_dlm"

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_4

    new-instance v10, Lcom/ime/implement/setting/ConnectSetting$1;

    invoke-direct {v10, p0}, Lcom/ime/implement/setting/ConnectSetting$1;-><init>(Lcom/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    const-string v10, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/ime/implement/setting/ConnectSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v10, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    new-instance v10, Lcom/ime/implement/setting/ConnectSetting$2;

    invoke-direct {v10, p0}, Lcom/ime/implement/setting/ConnectSetting$2;-><init>(Lcom/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v4, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    const-string v10, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/ime/implement/setting/ConnectSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    return-void

    :cond_8
    const v10, 0x7f03006c

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v10, :cond_2

    const-string v10, "pref_personalize_sources_category_key"

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_2

    iget-object v10, p0, Lcom/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    :cond_1
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
    invoke-virtual {p0}, Lcom/ime/implement/setting/ConnectSetting;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public showTOS()V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/ime/implement/setting/ConnectSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f030062

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f10009d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getTOSText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0d0154

    const v3, 0x7f0d00b5

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/ConnectSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ime/implement/setting/ConnectSetting$5;

    invoke-direct {v6, p0}, Lcom/ime/implement/setting/ConnectSetting$5;-><init>(Lcom/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/ConnectSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ime/implement/setting/ConnectSetting$6;

    invoke-direct {v6, p0}, Lcom/ime/implement/setting/ConnectSetting$6;-><init>(Lcom/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
