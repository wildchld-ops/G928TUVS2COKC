.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;
.implements Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
.implements Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;
.implements Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;
    }
.end annotation


# static fields
.field public static FINGERPRINTS_MAX:I

.field private static final isEnableSurveyMode:Z

.field private static isKeepEnrollSession:Z

.field private static isKeepEnrollSessionForEntry:Z

.field private static levelRegister:I

.field private static mDeviceProvisioned:I

.field private static mFingerRegisterMode:I

.field private static mListView:Landroid/widget/ListView;


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field protected arFingerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;",
            ">;"
        }
    .end annotation
.end field

.field private colorId_identifiedId:I

.field private insetdividerMain:Landroid/graphics/drawable/InsetDrawable;

.field private insetdividerSelect:Landroid/graphics/drawable/InsetDrawable;

.field private isReceivedActivityResult:Z

.field private isUpdatedIdentiedFinger:Z

.field private mAlipayPayment:Landroid/preference/Preference;

.field private mAlternativePassword:Landroid/preference/Preference;

.field private mBuilder:Landroid/app/Notification;

.field mDoNotShowCheck:Landroid/widget/CheckBox;

.field private mEnrolledFingerCount:I

.field private mEnrolledFingerStatus:I

.field private mFeatureCategory:Landroid/preference/PreferenceCategory;

.field private mFinger1:Landroid/preference/Preference;

.field private mFinger2:Landroid/preference/Preference;

.field private mFinger3:Landroid/preference/Preference;

.field private mFinger4:Landroid/preference/Preference;

.field private mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

.field mFingerToken:Landroid/os/IBinder;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private mIFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field mIdentifyDialog:Landroid/app/Dialog;

.field private mInitview:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegister:Landroid/preference/Preference;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRegisterStarted:Z

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSamsungAccount:Landroid/preference/SwitchPreference;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungPay:Landroid/preference/Preference;

.field private mSelectActionView:Landroid/view/View;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mWebSignIn:Landroid/preference/SwitchPreference;

.field private notificationManager:Landroid/app/NotificationManager;

.field private origin_color_identifiedId:Landroid/content/res/ColorStateList;

.field private origin_typeface:Landroid/graphics/Typeface;

.field private samsungaccount_do_not_show_again:Z

.field private samsungaccount_objvalue:Z

.field private through_onpreferencechange:Z

.field private updatedIdentiedFingerIdx:I

.field private websignin_do_not_show_again:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    sput v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isEnableSurveyMode:Z

    sput-boolean v2, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    sput-boolean v2, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSessionForEntry:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->levelRegister:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->websignin_do_not_show_again:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_do_not_show_again:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mDoNotShowCheck:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInitview:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mBuilder:Landroid/app/Notification;

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerMain:Landroid/graphics/drawable/InsetDrawable;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerSelect:Landroid/graphics/drawable/InsetDrawable;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isUpdatedIdentiedFinger:Z

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isUpdatedIdentiedFinger:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInitview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isUpdatedIdentiedFinger:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/FingerprintSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/fingerprint/FingerprintSettings;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/FingerprintSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishIdentify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startidentify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isEnableSurveyMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private actionBarChange(I)V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateMainMenu()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateSelectMenu()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    goto :goto_0
.end method

.method private cancelAndSessionEnd()V
    .locals 5

    const/4 v1, 0x0

    const-string v2, "FingerprintSettings"

    const-string v3, "cancelAndSessionEnd() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishIdentify()Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause: isEnrolling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isKeepEnrollSession="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    sget-boolean v2, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    if-eqz v2, :cond_1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FingerprintSettings"

    const-string v2, "onPause: notifyEnrollEnd error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "FingerprintSettings"

    const-string v2, "onPause() : Call Finish"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_1

    :cond_3
    const-string v1, "FingerprintSettings"

    const-string v2, "onPause() : Call Finish"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_1
.end method

.method private enrolledFingerprintNum()I
    .locals 6

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const-string v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mFingerRegistedStatus] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mEnrolledFingerCount] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[enrolledFingerCount] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    if-eq v3, v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    sget v3, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v2, v3, :cond_3

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    :cond_3
    const-string v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enrolledFingerprintNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private finishIdentify()Z
    .locals 2

    const-string v0, "FingerprintSettings"

    const-string v1, "finishIdentify"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getFingerprintSamsungAccountConfirmedVerification()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_samsungaccount_confirmed"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintSamsungAccountConfirmedVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getFingerprintVerification()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getIndexForRegisteration()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    sget v2, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v0, v2, :cond_0

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "FingerprintSettings"

    const-string v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "FingerprintSettings"

    const-string v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private renameFingerPrint(I)V
    .locals 3

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_0

    const-string v0, "FingerprintSettings"

    const-string v1, "renameFingerPrint not null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishIdentify()Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v0, p1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->sendSurveryForRename()V

    goto :goto_0
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fingerIndex"

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getIndexForRegisteration()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x3e9

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x3e8

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setDivider(I)V
    .locals 4

    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDivider() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerMain:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerSelect:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setFingerprintPreference()V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "register_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "change_alternative_password"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    const-string v2, "feature_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFeatureCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "support_web_signin"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_WEB_SUPPORT_FINGERPRINT_WEBSIGNIN"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "feature_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v2, "support_samsung_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v2, "register"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    const-string v2, "alipay_payment"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlipayPayment:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlipayPayment:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "feature_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlipayPayment:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v2, "samsung_pay"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.spay"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "FingerprintSettings"

    const-string v3, "Remove the SamsungPay"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "feature_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_0
    sget v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    if-eq v2, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    return-void

    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.spay"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "0.0.00"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "FingerprintSettings"

    const-string v3, "Remove the SamsungPay. Stub application isntalled"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "feature_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FingerprintSettings"

    const-string v3, "Getting information of SamsungPay make the Exception!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFingerprintVerification(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_webpass"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerprintVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setKeepEnrollSession(Z)V
    .locals 3

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeepEnrollSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSessionForEntry:Z

    return-void
.end method

.method private setUseFingerprintForSA(Landroid/content/Context;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private showHuntipForFingerprintIdentification()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_huntip"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showHuntipForFingerprintIdentification [levelRegister, mEnrolledFingerCount, isFirstHuntip] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintSettings;->levelRegister:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/settings/fingerprint/FingerprintSettings;->levelRegister:I

    if-le v3, v6, :cond_0

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_huntip"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400ae

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02008b

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-array v4, v7, [J

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mBuilder:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mBuilder:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "FingerprintSettings"

    const-string v4, "showHuntipForFingerprintIdentification : SettingsActivity is null, Skip Huntip, will try again"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showToastMsg()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a13c2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0a109b

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4

    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startidentify()Z
    .locals 6

    const/4 v2, 0x1

    const-string v3, "FingerprintSettings"

    const-string v4, "startidentify"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    if-nez v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "securityLevel"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "demandExtraEvent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "privileged"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "useManualTimeout"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "privileged_attr"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "identifyFinger: result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateFingerList(II)V
    .locals 15

    monitor-enter p0

    :try_start_0
    sget v10, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    sput p1, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    if-nez v11, :cond_7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    :goto_0
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v11}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showSensorErrorDialog()V

    :cond_0
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v11}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v11

    :goto_1
    iput v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    sget v11, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    const v11, 0x7f070046

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintPreference()V

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setDivider(I)V

    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_13

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFeatureCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBarChange(I)V

    :cond_2
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v12, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerToken:Landroid/os/IBinder;

    invoke-virtual {v11, v12}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v5, v4

    :goto_2
    :try_start_1
    sget v11, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v6, v11, :cond_f

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    const/4 v12, 0x1

    shl-int/2addr v12, v6

    and-int/2addr v11, v12

    if-eqz v11, :cond_1f

    add-int/lit8 v2, v2, 0x1

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v11, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Finger "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v7, v0

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v11, "FingerprintSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateFingerList [Select] : Key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Finger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v11, v6, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v11, v7}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->addCheckedList(Landroid/preference/CheckBoxPreference;)V

    :cond_5
    const/4 v11, 0x1

    if-ne v2, v11, :cond_a

    const-string v11, "Finger 1"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger1:Landroid/preference/Preference;

    :cond_6
    :goto_4
    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object v5, v4

    goto/16 :goto_2

    :cond_7
    :try_start_3
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_9
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a10c1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto/16 :goto_3

    :cond_a
    const/4 v11, 0x2

    if-ne v2, v11, :cond_d

    :try_start_5
    const-string v11, "Finger 2"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger2:Landroid/preference/Preference;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    :goto_6
    :try_start_6
    const-string v11, "FingerprintSettings"

    const-string v12, "updateFingerList [Select] : IllegalStateException"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_b
    :goto_7
    const-string v11, "FingerprintSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateFingerList [mFingerRegistedStatus] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "FingerprintSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateFingerList [mEnrolledFingerCount] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    :goto_8
    monitor-exit p0

    return-void

    :cond_d
    const/4 v11, 0x3

    if-ne v2, v11, :cond_e

    :try_start_7
    const-string v11, "Finger 3"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger3:Landroid/preference/Preference;

    goto/16 :goto_4

    :cond_e
    const/4 v11, 0x4

    if-ne v2, v11, :cond_6

    const-string v11, "Finger 4"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger4:Landroid/preference/Preference;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :cond_f
    :try_start_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v11}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->updateSelectionState()V

    :cond_10
    :goto_9
    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    add-int/lit8 v6, v11, 0x1

    :goto_a
    const/4 v11, 0x4

    if-gt v6, v11, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Finger "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v7, v0

    const-string v11, "FingerprintSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateFingerList [Select] : Remove CheckBoxPreference, key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_11
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v11}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->startSelectionMode()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v1

    move-object v4, v5

    goto/16 :goto_6

    :cond_12
    move-object v4, v5

    goto/16 :goto_7

    :cond_13
    const/4 v11, 0x1

    move/from16 v0, p1

    if-eq v0, v11, :cond_14

    if-nez p1, :cond_b

    :cond_14
    :try_start_9
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->removeAll()V

    sget v11, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-eqz v11, :cond_16

    const/4 v11, 0x2

    if-ne v10, v11, :cond_15

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_15

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startidentify()Z

    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBarChange(I)V

    :cond_16
    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    const/4 v12, 0x1

    if-gt v11, v12, :cond_17

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateRegisterPreference()V

    sget v11, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-eqz v11, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionMenu()V

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setDivider(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    :cond_17
    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v8, v7

    move-object v5, v4

    :goto_b
    :try_start_a
    sget v11, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v6, v11, :cond_1d

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    const/4 v12, 0x1

    shl-int/2addr v12, v6

    and-int/2addr v11, v12

    if-eqz v11, :cond_1e

    add-int/lit8 v2, v2, 0x1

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v11, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    :goto_c
    new-instance v7, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Finger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v11, "FingerprintSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateFingerList [Menu]: Key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Finger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;-><init>(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v11, v6, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const/4 v11, 0x1

    if-ne v2, v11, :cond_1a

    const-string v11, "Finger 1"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger1:Landroid/preference/Preference;

    :cond_18
    :goto_d
    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_e
    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    move-object v5, v4

    goto/16 :goto_b

    :cond_19
    :try_start_d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a10c1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v3

    goto/16 :goto_c

    :cond_1a
    const/4 v11, 0x2

    if-ne v2, v11, :cond_1b

    :try_start_e
    const-string v11, "Finger 2"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger2:Landroid/preference/Preference;
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_d

    :catch_2
    move-exception v1

    :goto_f
    :try_start_f
    const-string v11, "FingerprintSettings"

    const-string v12, "updateFingerList [Menu] : IllegalStateException"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    :cond_1b
    const/4 v11, 0x3

    if-ne v2, v11, :cond_1c

    :try_start_10
    const-string v11, "Finger 3"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger3:Landroid/preference/Preference;

    goto :goto_d

    :cond_1c
    const/4 v11, 0x4

    if-ne v2, v11, :cond_18

    const-string v11, "Finger 4"

    invoke-virtual {p0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger4:Landroid/preference/Preference;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_d

    :cond_1d
    :try_start_11
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateRegisterPreference()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionMenu()V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object v4, v5

    goto/16 :goto_7

    :catch_3
    move-exception v1

    move-object v7, v8

    move-object v4, v5

    goto :goto_f

    :catch_4
    move-exception v1

    move-object v4, v5

    goto :goto_f

    :cond_1e
    move-object v7, v8

    move-object v4, v5

    goto :goto_e

    :cond_1f
    move-object v4, v5

    goto/16 :goto_5
.end method

.method private declared-synchronized updateIdentifiedFinger(ZI)V
    .locals 10

    const/4 v9, 0x1

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    :try_start_0
    sget v6, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v2, v6, :cond_5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    shl-int v7, v9, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    sget-object v6, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_0

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    :cond_0
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    if-nez v6, :cond_1

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    if-nez v6, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    :cond_2
    if-eqz v4, :cond_3

    if-ne p1, v9, :cond_4

    if-lez p2, :cond_3

    if-ne p2, v2, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v6, "FingerprintSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateIdentifiedFinger identified["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string v6, "FingerprintSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateIdentifiedFinger["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "FingerprintSettings"

    const-string v7, "updateIdentifiedFinger : IllegalStateException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private updateMainMenu()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_1
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a111d

    invoke-interface {v1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->resetActionBarView()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionMenu()V

    goto :goto_0

    :cond_4
    const-string v1, "FingerprintSettings"

    const-string v2, "updateMainMenu actionBar null!!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSelectMenu()V
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSelectActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSelectActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a00b8

    invoke-interface {v0, v5, v7, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a10d3

    invoke-interface {v0, v5, v8, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSelectActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->setActionBarView(Landroid/view/View;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "FingerprintSettings"

    const-string v1, "updateSelectMenu null!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected changeMode(I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V

    goto :goto_0
.end method

.method protected finishFingerprintSettings()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish FingerprintSettings, getBackStackEntryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    :cond_0
    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectionUtils()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    :cond_3
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    return-void

    :cond_4
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFragment()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14

    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v9, "FingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult : requestCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resultCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z

    const/16 v9, 0x3ea

    if-ne p1, v9, :cond_3

    const/4 v9, -0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a10f1

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_2

    const-string v9, "FingerprintSettings"

    const-string v10, "ChangePassword_USER_CANCEL"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto :goto_0

    :cond_3
    const/16 v9, 0x65

    if-ne p1, v9, :cond_7

    const/4 v9, -0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_5

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v10, "FingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "fingerprint_used_samsungaccount"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v10, "FingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "fingerprint_used_samsungaccount"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_6

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    const/16 v9, 0x66

    if-ne p1, v9, :cond_b

    const/4 v9, -0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_9

    :try_start_2
    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v10, "FingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "fingerprint_used_samsungaccount"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_8

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    :cond_9
    :try_start_3
    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v10, "FingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "fingerprint_used_samsungaccount"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_a

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    :cond_b
    const/16 v9, 0x3e8

    if-eq p1, v9, :cond_c

    const/16 v9, 0x3e9

    if-ne p1, v9, :cond_13

    :cond_c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    const/4 v9, -0x1

    move/from16 v0, p2

    if-eq v0, v9, :cond_d

    const/4 v9, 0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_11

    :cond_d
    :try_start_4
    const-string v9, "previousStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "support_web_signin"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "FingerprintSettings"

    const-string v10, "previos stage is WebSingin"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :cond_e
    const-string v9, "samsung_pay"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "FingerprintSettings"

    const-string v10, "Fingerprint registered successfully! Launch the SamsungPay"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.samsung.android.spay"

    const-string v10, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "previousStage"

    const-string v10, "FingerprintSettings"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    :cond_f
    const-string v9, "support_samsung_account"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "client_id"

    const-string v10, "s5d189ajvs"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "client_secret"

    const-string v10, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    const-string v9, "FingerprintSettings"

    const-string v10, "SamsungAccountSignedIn is True."

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x65

    invoke-direct {p0, v3, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    const-string v9, "FingerprintSettings"

    const-string v10, "data is null!!"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_10
    const-string v9, "FingerprintSettings"

    const-string v10, "SamsungAccountSignedIn is False."

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v9, "com.osp.app.signin"

    invoke-virtual {v5, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    array-length v7, v8

    if-nez v7, :cond_0

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "client_id"

    const-string v10, "s5d189ajvs"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "client_secret"

    const-string v10, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "mypackage"

    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "OSP_VER"

    const-string v10, "OSP_02"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "MODE"

    const-string v10, "ADD_ACCOUNT"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v9, 0x66

    invoke-direct {p0, v3, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :cond_11
    if-nez p2, :cond_12

    if-eqz p3, :cond_0

    const-string v9, "enrollResult"

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_0

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_0

    :cond_12
    :try_start_8
    const-string v9, "FingerprintSettings"

    const-string v10, "SAMSUNGACCOUNT : there is no case"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_13
    const/16 v9, 0x3ec

    if-ne p1, v9, :cond_0

    const/4 v9, -0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a13b9

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onBackKey()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackKey mFingerRegisterMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectionUtils()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCanceDisclaimerDialog()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    const-string v0, "FingerprintSettings"

    const-string v1, "onCanceDisclaimerDialog: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCancelSamsungAccountDialog()V
    .locals 3

    const-string v1, "FingerprintSettings"

    const-string v2, "onCancelSamsungAccountDialog: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCancelWebSigninDialog()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "FingerprintSettings"

    const-string v1, "onCancelWebSigninDialog: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "FingerprintSettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FingerprintSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() set fingerMax 3 for low-level device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->levelRegister:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->levelRegister:I

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, getSystemFeatureLevel[levelRegister] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/fingerprint/FingerprintSettings;->levelRegister:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setHasOptionsMenu(Z)V

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    return-void

    :cond_1
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9

    const v8, 0x7f0a111d

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateOptionsMenu : enrolledFingerprintNum["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1, v4, v5, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a00b8

    invoke-interface {p1, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v1, 0x7f0a10d3

    invoke-interface {p1, v4, v7, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    sget v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-eq v1, v5, :cond_1

    sget v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-nez v1, :cond_9

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {p1, v4, v5, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const/4 v1, 0x2

    const v2, 0x7f0a0e5b

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-interface {p1, v4, v5, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x7f0a0e5b

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_8
    invoke-interface {p1, v4, v5, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_9
    sget v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "FingerprintSettings"

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInitview:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInitview:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInitview:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FingerprintSettings"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->websignin_do_not_show_again:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSessionForEntry:Z

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    const-string v0, "FingerprintSettings"

    const-string v1, "onDestroy notifyEnd"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "FingerprintSettings"

    const-string v1, "onDestroy skip enrollEnd"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:appid"

    const-string v3, "finger_scanner"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:section"

    const-string v3, "fingerprints"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z

    goto :goto_0

    :pswitch_1
    sget v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->renameFingerPrint()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteFingerprint()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FingerprintSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v3, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_websignin_noti"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->websignin_do_not_show_again:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_samsungaccount_noti"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_do_not_show_again:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    const-string v1, "FingerprintSettings"

    const-string v3, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "FingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceTreeClick"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    if-ne p2, v8, :cond_1

    const-string v6, "FingerprintSettings_register"

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    :goto_1
    return v6

    :cond_1
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-ne p2, v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "pref_samsungaccount_noti"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_do_not_show_again:Z

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    if-ne v8, v6, :cond_3

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v6

    goto :goto_1

    :cond_2
    const-string v8, "FingerprintSettings"

    const-string v9, "through_onpreferencechange is true onPreferenceTreeClick"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    goto :goto_1

    :cond_3
    iget-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v8, :cond_4

    const-string v6, "FingerprintSettings"

    const-string v7, "through_onpreferencechange is false, samsungaccount_objvalue is false onPreferenceTreeClick"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v6

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v8, "FingerprintSettings"

    const-string v9, "[onPreferenceTreeClick]Samsung Account setChecked is False."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger1:Landroid/preference/Preference;

    if-eq p2, v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger2:Landroid/preference/Preference;

    if-eq p2, v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger3:Landroid/preference/Preference;

    if-eq p2, v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFinger4:Landroid/preference/Preference;

    if-ne p2, v8, :cond_b

    :cond_6
    sget v7, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerPrintSelectionUtils:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->updateSelectionState()V

    goto :goto_0

    :cond_7
    sget v7, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-ne v7, v6, :cond_0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v6, :cond_a

    const/4 v2, 0x0

    :goto_4
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget-object v6, v6, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->key:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget v4, v6, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->index:I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->renameFingerPrint(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    if-ne p2, v8, :cond_c

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "previousStage"

    const-string v7, "FingerprintSettings_changepassword"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x3ea

    invoke-direct {p0, v3, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlipayPayment:Landroid/preference/Preference;

    if-ne p2, v8, :cond_d

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "alipays://platformapi/startapp?appId=20000082&isToRegisterFingerprint=YES"

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    if-ne p2, v8, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v8, v6, :cond_e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_5
    move v6, v7

    goto/16 :goto_1

    :cond_e
    const-string v6, "FingerprintSettings"

    const-string v8, "There is no registered fingerprint"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "samsung_pay"

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    const-string v6, "FingerprintSettings"

    const-string v8, "There is Registered Fingerprint. Launch the SamsungPay"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.android.spay"

    const-string v8, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "previousStage"

    const-string v8, "FingerprintSettings"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 9

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "FingerprintSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v6

    :goto_1
    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mFingerRegistedStatus] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mEnrolledFingerCount] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enrolledFingerStatus] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-nez v0, :cond_3

    sput v8, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$2;

    const-wide/16 v2, 0x1e

    const-wide/16 v4, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$2;->start()Landroid/os/CountDownTimer;

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: Mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z

    if-eqz v0, :cond_1

    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isReceivedActivityResult:Z

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-ne v0, v8, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startidentify()Z

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showHuntipForFingerprintIdentification()V

    goto/16 :goto_0

    :cond_2
    move v6, v7

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I

    if-eq v0, v6, :cond_4

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v7, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    const-string v0, "FingerprintSettings"

    const-string v1, "onResume : skip update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onStart()V
    .locals 9

    const v4, 0x7f0d0249

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string v0, "FingerprintSettings"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerSelect:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerMain:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v7, :cond_2

    :goto_0
    if-nez v7, :cond_3

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerSelect:Landroid/graphics/drawable/InsetDrawable;

    :goto_1
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerMain:Landroid/graphics/drawable/InsetDrawable;

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void

    :cond_2
    move v7, v3

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v4, v3

    move v6, v3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->insetdividerSelect:Landroid/graphics/drawable/InsetDrawable;

    goto :goto_1
.end method

.method public onStartDisclaimerFromSamsungAccountDialog()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    return-void
.end method

.method public onStartDisclaimerFromWebSigninDialog()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    return-void
.end method

.method public startDisclaimerFromRegister()V
    .locals 3

    const-string v1, "FingerprintSettings"

    const-string v2, "startDisclaimerFromRegister: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fingerIndex"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    const-string v2, "FingerprintSettings_register"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "FingerprintSettings"

    const-string v9, "startDisclaimerFromSamsungAccount"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v8, v7, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_0
    return v6

    :cond_0
    const-string v7, "support_samsung_account"

    invoke-direct {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v6, "com.osp.app.signin"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v4, v5

    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "client_id"

    const-string v8, "s5d189ajvs"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "client_secret"

    const-string v8, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "mypackage"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "OSP_VER"

    const-string v8, "OSP_02"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "MODE"

    const-string v8, "ADD_ACCOUNT"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x66

    invoke-direct {p0, v1, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    move v6, v7

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "client_id"

    const-string v8, "s5d189ajvs"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "client_secret"

    const-string v8, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    if-ne v6, v7, :cond_4

    const-string v6, "FingerprintSettings"

    const-string v8, "SamsungAccount set_value is true."

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v6, 0x65

    invoke-direct {p0, v1, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string v6, "FingerprintSettings"

    const-string v8, "SamsungAccount set_value is false."

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public startDisclaimerFromWebSignin()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "FingerprintSettings"

    const-string v2, "startDisclaimerFromWebSignin"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const-string v0, "support_web_signin"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto :goto_1
.end method

.method public startSelectListUI(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V

    return-void
.end method

.method public updateOptionMenu()V
    .locals 7

    const v6, 0x7f0a111d

    const v5, 0x7f0a0e5b

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v3, v2, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v3, v2, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected updateRegisterPreference()V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    sget v6, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-ge v5, v6, :cond_0

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v5, "register"

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f0a10f5

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    const v5, 0x7f0400b2

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v5, 0x7f0400b7

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string v5, "register"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    :cond_0
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v5, :cond_1

    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v5, "change_alternative_password"

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f0a10f0

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string v5, "change_alternative_password"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    :cond_1
    const-string v5, "FingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRegisterPreference [mEnrolledFingerCount] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v5

    if-ne v5, v3, :cond_5

    :try_start_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v5, "FingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAMSUNGACCOUNT updateRegisterPreference setChecked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "fingerprint_used_samsungaccount"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_4

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v5, "FingerprintSettings"

    const-string v6, "updateRegisterPreference : IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v5, "FingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAMSUNGACCOUNT updateRegisterPreference setChecked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "fingerprint_used_samsungaccount"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_6

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3
.end method
