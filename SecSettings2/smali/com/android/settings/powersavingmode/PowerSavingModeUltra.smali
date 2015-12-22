.class public Lcom/android/settings/powersavingmode/PowerSavingModeUltra;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeUltra.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private divider_1:Landroid/view/View;

.field private divider_2:Landroid/view/View;

.field private isSharedDevice:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mImagePhone:Landroid/widget/ImageView;

.field private mImageTablet:Landroid/widget/ImageView;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUltraText:Landroid/widget/TextView;

.field private mValidListener:Z

.field private mWasVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$3;

    invoke-direct {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$3;-><init>()V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    return v0
.end method


# virtual methods
.method public isLockTaskMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerSavingModeUltra"

    const-string v1, "isLockTaskMode() : true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "PowerSavingModeUltra"

    const-string v1, "isLockTaskMode() : false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v9}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitch:Landroid/widget/Switch;

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    const-string v9, "PowerSavingModeUltra"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SharedDevice: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v9, 0x7f04014c

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f1002e8

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    const v9, 0x7f1002e2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImagePhone:Landroid/widget/ImageView;

    const v9, 0x7f1002e4

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_1:Landroid/view/View;

    const v9, 0x7f1002e7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_2:Landroid/view/View;

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImagePhone:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    const v10, 0x7f020251

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v9, 0x7f1002e3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraText:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraText:Landroid/widget/TextView;

    const v10, 0x7f0a11d4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const v9, 0x7f1002e6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f040149

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v9, 0x7f1002dc

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900e0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f0a11e7

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0a11e1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0a11e2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0a11e3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1120053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1120055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_6
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0a11e4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v9, "DCM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0a11e5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0a11e6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f040149

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v9, 0x7f1002dc

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    const v10, 0x7f020250

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_1:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_2:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0a11e8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportPSMHelp(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->setHasOptionsMenu(Z)V

    :cond_e
    iget-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    const-string v9, "PowerSavingModeUltra"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SharedDevice: disableButton "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-object v7
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v4, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:item"

    const-string v5, "using_ultra_power_saving_mode"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onResume()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "PowerSavingModeUltra"

    const-string v5, "onResume() "

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "ultra_powersaving_mode"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v5, "video"

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    const-string v2, "PowerSavingModeUltra"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTelephonyManager.hasCall_video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    if-nez v5, :cond_8

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x800

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    const-string v2, "PowerSavingModeUltra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedDevice: disableButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    move v2, v4

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "PowerSavingModeUltra"

    const-string v2, "onCheckedChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v2, 0x7f0a11ec

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "flag"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "skipdialog"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
