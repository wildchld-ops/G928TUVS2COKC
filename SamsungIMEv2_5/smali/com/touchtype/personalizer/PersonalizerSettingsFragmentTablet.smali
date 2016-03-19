.class public Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;
.super Landroid/preference/PreferenceFragment;
.source "PersonalizerSettingsFragmentTablet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;,
        Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final WATCHER_WAIT:J = 0x1f4L


# instance fields
.field actionBarSwitch:Landroid/widget/Switch;

.field private actionBarSwitchClickListener:Landroid/view/View$OnClickListener;

.field private actionBarSwitchTitle:Landroid/widget/TextView;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

.field private mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsPersonalizedDataDefaultOff:Z

.field private mIsPredictive:Z

.field private mIsVZWString:Z

.field private mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPhoneType:I

.field private mPreferences:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private mService:Lcom/touchtype/personalizer/PersonalizerService;

.field private mTimedTask:Ljava/lang/Runnable;

.field private mWatcherHandler:Landroid/os/Handler;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private urlPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPredictive:Z

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    iput v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mPhoneType:I

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$3;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$3;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->urlPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$12;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$12;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$13;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$13;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitchTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showTransferDataInBackgroundDialog(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showSwiftKeyGuideDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showPrivacyPolicyRestrictionDialog()V

    return-void
.end method

.method static synthetic access$602(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mWatcherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindToService()V
    .locals 4

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->TAG:Ljava/lang/String;

    const-string v2, "Bind to personalizer service"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private checkMessaging(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_personalize_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->TAG:Ljava/lang/String;

    const-string v1, "Removed Messaging due to Wifi model"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_personalize_weibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->TAG:Ljava/lang/String;

    const-string v2, "Removed Weibo due to configuration setting"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPreferences()Ljava/util/Vector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    const/4 v10, 0x0

    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v13, :cond_2

    sget-object v13, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->TAG:Ljava/lang/String;

    const-string v14, "getPreferences fail due to inputmethod is null"

    invoke-static {v13, v14}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v13

    iput v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mPhoneType:I

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_b

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    instance-of v13, v11, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_9

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    :goto_3
    if-ltz v3, :cond_8

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    instance-of v13, v12, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v13, :cond_1

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-direct {p0, v9, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result v0

    iget v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mPhoneType:I

    if-nez v13, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_0
    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_2
    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_3

    sget-object v13, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->TAG:Ljava/lang/String;

    const-string v14, "getPreferences fail due to inputmethod Context is null"

    invoke-static {v13, v14}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    iput v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mPhoneType:I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, v9, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->checkMessaging(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v0, 0x1

    :goto_6
    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    :cond_9
    instance-of v13, v11, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v13, :cond_a

    move-object v4, v11

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b
    return-object v6
.end method

.method private setActionBarButton()V
    .locals 3

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v2, 0x7f1000cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v2, 0x7f1000ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitchTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v2, 0x7f1000cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPredictive:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPredictive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitchTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$7;

    invoke-direct {v2, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$7;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->actionBarSwitchTitle:Landroid/widget/TextView;

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setSummary(JII)Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/4 v6, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_0
    :goto_0
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0, p3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "%1$s"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%s"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    return-object v9

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setup()V
    .locals 4

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showUseWifiToast(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getPreferences()Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mPreferences:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v2, v3}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setConfiguration(Landroid/app/Activity;)V

    return-void
.end method

.method private showPrivacyPolicyRestrictionDialog()V
    .locals 8

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const v3, 0x7f030066

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/high16 v7, 0x7f0e0000

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$11;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$11;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showSwiftKeyGuideDialog()V
    .locals 9

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const v5, 0x7f030060

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

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

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/high16 v8, 0x7f0e0000

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$8;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$8;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x104000a

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$9;

    invoke-direct {v7, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$9;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d0154

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$10;

    invoke-direct {v7, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$10;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showTransferDataInBackgroundDialog(Landroid/preference/Preference;)V
    .locals 13

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v9, :cond_0

    const-string v9, "SamsungIME"

    const-string v10, "inputManager is null in showTransferDataInBackgroundDialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const v5, 0x7f0300a2

    const v8, 0x7f0d016f

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v9, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/high16 v11, 0x7f0e0000

    invoke-direct {v9, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v9, 0x7f10000d

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v9, "transfer_data_in_background_checkbox"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    new-instance v10, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$4;

    invoke-direct {v10, p0, p1, v3, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$4;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Landroid/preference/Preference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$5;

    invoke-direct {v10, p0, p1, v3, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$5;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Landroid/preference/Preference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$6;

    invoke-direct {v9, p0, p1, v3, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$6;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Landroid/preference/Preference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showUseWifiToast(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v2, 0x7f0d01b4

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private unbindFromService()V
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->TAG:Ljava/lang/String;

    const-string v1, "Unbind from personalizer service"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearUserModel()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    invoke-virtual {v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v4}, Lcom/touchtype/personalizer/PersonalizerService;->clearLanguageData()Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v4, "RELOAD_LANGUAGEPACK"

    invoke-interface {v0, v4, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->resetAddwordListFile()V

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->resetRemovedWordDB()V

    :cond_1
    new-instance v2, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setDeletedBit(Z)V

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->saveDeletedBit()V

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/inputmethod/scloudsync/SipSyncProvider;->triggerSync(Landroid/content/Context;)V

    const-string v4, "SamsungIME_SYNC"

    const-string v5, "Clear LM Data. Try to trigger Sync..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mPreferences:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7}, Lcom/touchtype/personalizer/PersonalizerPreference;->setActive(Z)V

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d01b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    const-string v6, "params"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/Personalizer;->startPersonalization(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d01ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/PersonalizerService;->setFailed(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f1000d0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f1000d1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02071f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v11}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->setHasOptionsMenu(Z)V

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;

    const-string v9, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPredictive:Z

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v8

    iput-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "TABLET_MODE"

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->misTablet:Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/CscFeatureTagSipDummy;->TAG_CSCFEATURE_SIP_DISABLE_PERSONALIZED_DATA:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPersonalizedDataDefaultOff:Z

    new-instance v1, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v1}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/ConfigFeature;->getOperator()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPersonalizedDataDefaultOff:Z

    if-eqz v8, :cond_9

    const v8, 0x7f05012e

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->addPreferencesFromResource(I)V

    :goto_0
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v8, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v2, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    const-string v8, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPredictive:Z

    invoke-virtual {v2, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    const-string v8, "SETTINGS_DEFAULT_USE_EMOJI_SUGGESTIONS"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEmojiLMLoaded()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPredictive:Z

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    :goto_2
    const-string v8, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_c

    const-string v8, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    new-instance v8, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;

    invoke-direct {v8, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    invoke-virtual {v4, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    :goto_3
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPersonalizedDataDefaultOff:Z

    if-nez v8, :cond_6

    const-string v8, "VZW"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    const-string v8, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_7

    new-instance v8, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$2;

    invoke-direct {v8, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$2;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_DisableAutoCorrection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v11, :cond_d

    :cond_8
    :goto_4
    return-void

    :cond_9
    const v8, 0x7f05012d

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsPredictive:Z

    invoke-virtual {v2, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v3, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_c
    const-string v8, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_d
    const-string v8, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v8}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->setActionBarButton()V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showUseWifiToast(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->misTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->bindToService()V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->setup()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mWatcherHandler:Landroid/os/Handler;

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerStatusWatcher;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mTimedTask:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->unbindFromService()V

    return-void
.end method

.method public setPreferenceState()V
    .locals 21

    const-string v18, "SETTINGS_USE_STANDARD_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v4}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/ConfigFeature;->isVzwString()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsVZWString:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mPreferences:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/touchtype/personalizer/PersonalizerPreference;

    const/16 v16, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$PersonalizerServiceConnection;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v15, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v12}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual {v12}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v10

    :cond_0
    :goto_1
    packed-switch v15, :pswitch_data_0

    :goto_2
    :pswitch_0
    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsVZWString:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v12}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d01c2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d018f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v12, v7}, Lcom/touchtype/personalizer/PersonalizerPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    sget-object v18, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v10

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d01b9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d01b7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d01b8

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_4
    const v18, 0x7f0d01ba

    const v19, 0x7f0d01bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->setSummary(JII)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d01bc

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v12}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d01c3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0191

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mIsVZWString:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v12}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d01c2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d018f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v12}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d01c3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0191

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setEnabled(Z)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
