.class public Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SamsungKeypadSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;
    }
.end annotation


# static fields
.field private static final DELAY_LONG:Ljava/lang/String; = "0.5"

.field private static final DELAY_LONG_ARABIC:Ljava/lang/String; = "\u0660.\u0665"

.field private static final DELAY_MEDIUM:Ljava/lang/String; = "0.3"

.field private static final DELAY_MEDIUM_ARABIC:Ljava/lang/String; = "\u0660.\u0663"

.field private static final DELAY_SHORT:Ljava/lang/String; = "0.2"

.field private static final DELAY_SHORT_ARABIC:Ljava/lang/String; = "\u0660.\u0662"

.field private static delayTextForSummary:[Ljava/lang/CharSequence;

.field private static mChangeUseTraceByChangeListener:Z

.field public static settingActivity:Landroid/app/Activity;


# instance fields
.field public PointingPopup:Z

.field public SwipePopup:Z

.field public TracePopup:Z

.field public TracePopup2:Z

.field private mActionBarArrow:Landroid/widget/ImageView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mContinuousInputSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mCursorControllSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mCustomActionBarView:Landroid/view/View;

.field private mEmergencyMode:Z

.field private mFlickUmlaut:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field mHandler:Landroid/os/Handler;

.field private mHelpAppPackageVersion:I

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsCheckDontShowPinchZoomGuide:Z

.field private mIsCheckDontShowPredictiveTextGuide:Z

.field private mIsChnMode:Z

.field private mIsDaMode:Z

.field private mIsKeypadGuideInHelpApp:Z

.field private mIsKorMode:Z

.field private mIsODDcsc:Z

.field private mIsSwiftKeySDK:Z

.field private mIsUSAString:Z

.field private mLangCode:I

.field mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

.field private mMenuIndex:I

.field private mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mNoneSwipe:Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mT9Toast:Landroid/widget/Toast;

.field private mUseTraceString:Ljava/lang/String;

.field private mXt9Version:I

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private misUseSplitFloatingKeyboard:Z

.field onAutoCapsChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onAutoPeriodChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onAutoSpaceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onAutoTextClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onCharacterPreviewChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onDevSettingEngineChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onKeyboardHeightClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onShuangpinKeyboardClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onSpellCheckerClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseKorKeypadClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseXt9ChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field pointingDialog:Landroid/app/AlertDialog$Builder;

.field salesCode:Ljava/lang/String;

.field swipeDialog:Landroid/app/AlertDialog$Builder;

.field traceDialog:Landroid/app/AlertDialog$Builder;

.field traceDialog2:Landroid/app/AlertDialog$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    const-string v2, "INU"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "INS"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NPL"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SLK"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TML"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsODDcsc:Z

    iput v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$18;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$18;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$19;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$19;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSpellCheckerClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShuangpinKeyboardClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onDevSettingEngineChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$30;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$30;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$31;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$31;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseKorKeypadClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$34;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$34;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$35;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$35;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$37;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$37;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardHeightClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoTextClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$47;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$47;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$48;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$48;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$50;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$50;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoCapsChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$51;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$51;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoSpaceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$52;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$52;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoPeriodChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$53;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$53;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$54;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$54;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$55;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$55;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onCharacterPreviewChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$56;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$56;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->areAllLanguagesDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showAutoReplacementGuideDialogToEnalbe()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showSwiftKeyGuideDialog()V

    return-void
.end method

.method private addLanguageActivityPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V
    .locals 13

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v2, "com.sec.android.inputmethod_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/preference/Preference;

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v10, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v1, "Zawgyi"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a314d4d

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    :goto_0
    const-string v1, "ko"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_3

    const v6, 0x7f07002d

    const v7, 0x7f07002e

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Lcom/sec/android/inputmethod/SpinnerPreference;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x6d794d4d

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_3
    const v6, 0x7f07002b

    const v7, 0x7f07002c

    goto :goto_1

    :cond_4
    if-eqz v10, :cond_1

    invoke-virtual {v10, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOrder(I)V

    const-string v1, "ko"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_6

    const-string v1, "tr"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vi"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ja"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "zh"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "de"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "bg"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    invoke-virtual {p1, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private addLanguageListPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V
    .locals 18

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v2, "com.sec.android.inputmethod_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v11

    const/4 v12, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ja"

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh"

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a68484b

    if-eq v1, v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a685457

    if-ne v1, v2, :cond_8

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    :goto_0
    move-object/from16 v0, p2

    invoke-interface {v15, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v1, "Zawgyi"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a314d4d

    if-ne v1, v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_3
    :goto_1
    const-string v1, "ko"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    if-eqz v1, :cond_f

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v1

    if-eqz v1, :cond_c

    const v6, 0x7f07002b

    const v7, 0x7f07002c

    :cond_5
    :goto_2
    const/4 v1, -0x1

    if-ne v6, v1, :cond_25

    new-instance v13, Landroid/preference/Preference;

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v13, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v13, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_3
    if-eqz v12, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v12}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v12, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSupportedLanguage(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setEnabled(Z)V

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_9
    const-string v1, "ko"

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x6d794d4d

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    const v6, 0x7f070029

    const v7, 0x7f07002a

    goto/16 :goto_2

    :cond_d
    const v6, 0x7f070027

    const v7, 0x7f070028

    goto/16 :goto_2

    :cond_e
    const v6, 0x7f070025

    const v7, 0x7f070026

    goto/16 :goto_2

    :cond_f
    const-string v1, "tr"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_10

    const v6, 0x7f07001b

    const v7, 0x7f07001c

    goto/16 :goto_2

    :cond_10
    const-string v1, "vi"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_11

    const v6, 0x7f070016

    const v7, 0x7f070019

    goto/16 :goto_2

    :cond_11
    const v6, 0x7f070017

    const v7, 0x7f07001a

    goto/16 :goto_2

    :cond_12
    const-string v1, "ja"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_13

    const v6, 0x7f07001d

    const v7, 0x7f07001e

    goto/16 :goto_2

    :cond_13
    const-string v1, "zh"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a68434e

    if-ne v1, v2, :cond_14

    const v6, 0x7f07004e

    const v7, 0x7f07004f

    goto/16 :goto_2

    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a68484b

    if-ne v1, v2, :cond_15

    const v6, 0x7f070052

    const v7, 0x7f070053

    goto/16 :goto_2

    :cond_15
    const v6, 0x7f070056

    const v7, 0x7f070057

    goto/16 :goto_2

    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a68434e

    if-ne v1, v2, :cond_17

    const v6, 0x7f07004c

    const v7, 0x7f07004d

    goto/16 :goto_2

    :cond_17
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    const v2, 0x7a68484b

    if-ne v1, v2, :cond_18

    const v6, 0x7f070050

    const v7, 0x7f070051

    goto/16 :goto_2

    :cond_18
    const v6, 0x7f070054

    const v7, 0x7f070055

    goto/16 :goto_2

    :cond_19
    const v6, 0x7f07001f

    const v7, 0x7f070020

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "de"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const v6, 0x7f070021

    const v7, 0x7f070022

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "bg"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const v6, 0x7f070023

    const v7, 0x7f070024

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_23

    const-string v1, "lo"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "km"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "my"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "z1"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {v11}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonepad_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    const-string v1, "xh"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "zu"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    const-string v16, "phonepad_default_4_4_4_4"

    :cond_1e
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    if-eqz v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "en"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1f

    const v6, 0x7f070014

    const v7, 0x7f070015

    goto/16 :goto_2

    :cond_1f
    const v6, 0x7f070012

    const v7, 0x7f070013

    goto/16 :goto_2

    :cond_20
    const v6, 0x7f070010

    const v7, 0x7f070011

    goto/16 :goto_2

    :catch_0
    move-exception v9

    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ime/framework/util/Utils;->isNotSupportPhonepad(I)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    if-eqz v1, :cond_22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "en"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    const v6, 0x7f070014

    const v7, 0x7f070015

    goto/16 :goto_2

    :cond_21
    const v6, 0x7f070012

    const v7, 0x7f070013

    goto/16 :goto_2

    :cond_22
    const v6, 0x7f070010

    const v7, 0x7f070011

    goto/16 :goto_2

    :cond_23
    const-string v1, "lo"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "km"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "my"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "z1"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {v11}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonepad_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    goto/16 :goto_2

    :cond_25
    invoke-virtual/range {p3 .. p3}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Lcom/sec/android/inputmethod/SpinnerPreference;

    move-result-object v12

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method private addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    const-string v1, "HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguageListPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguageActivityPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V

    goto :goto_0
.end method

.method private areAllLanguagesDisable()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v10

    array-length v14, v10

    new-array v11, v14, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_1
    array-length v14, v13

    if-ge v4, v14, :cond_3

    const-string v14, "0x%08x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v13, v4

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/common/Language;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    invoke-interface {v12, v7, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v15, v13, v4

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_2

    const/4 v14, 0x0

    :goto_3
    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v13

    goto :goto_0

    :cond_1
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v9}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v3}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_6

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_4

    :cond_6
    const/4 v14, 0x1

    goto :goto_3
.end method

.method private createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Lcom/sec/android/inputmethod/SpinnerPreference;
    .locals 2

    new-instance v0, Lcom/sec/android/inputmethod/SpinnerPreference;

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/android/inputmethod/SpinnerPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setPersistent(Z)V

    invoke-virtual {v0, p4}, Lcom/sec/android/inputmethod/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p5}, Lcom/sec/android/inputmethod/SpinnerPreference;->setEntries(I)V

    invoke-virtual {v0, p6}, Lcom/sec/android/inputmethod/SpinnerPreference;->setEntryValues(I)V

    invoke-virtual {v0, p2}, Lcom/sec/android/inputmethod/SpinnerPreference;->setOrder(I)V

    :cond_0
    return-object v0
.end method

.method private createLanguageListPreference()V
    .locals 23

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v18

    :goto_0
    const/4 v8, 0x0

    const/4 v13, -0x1

    const-string v19, "SETTINGS_INPUT_LANGUAGES"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    if-nez v10, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v18

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->removeAll()V

    sget-object v19, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v20, "com.sec.android.inputmethod_preferences"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_3

    const-string v19, "0x%08x"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v22, v18, v5

    invoke-virtual/range {v22 .. v22}, Lcom/ime/framework/common/Language;->getId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v8, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    aget-object v20, v18, v5

    invoke-interface/range {v19 .. v20}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v9

    aget-object v19, v18, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v10, v9, v1, v13}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    sget-boolean v19, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v19, :cond_4

    const-string v19, "SamsungIME_HWR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createLanguageListPreference mInputManager.isNeedToLoadHwrLibrary() : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isNeedToLoadHwrLibrary()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isNeedToLoadHwrLibrary()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->initializeEngineAndInputModule()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->updateHwrInputModule()V

    :cond_5
    :goto_3
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v19, "0x%08x"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v11}, Lcom/ime/framework/common/Language;->getId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v19, "default_keyboard_language"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Lcom/ime/framework/common/Language;->getId()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v10, v4, v1, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v9, v11, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V

    const-string v19, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    move-object/from16 v0, v19

    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_4
    new-instance v15, Landroid/preference/Preference;

    sget-object v19, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0d03c2

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const-string v19, "select_swiftkey_language_list"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.ime.implement.setting.SWIFTKEY_LANGUAGES_SETTINGS"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_7
    :goto_5
    const/16 v19, 0x3e8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOrder(I)V

    const v19, 0x7f020721

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setIcon(I)V

    new-instance v19, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$46;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$46;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_8
    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->releaseEngineAndInputModule()V

    goto/16 :goto_3

    :cond_9
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v9, v11, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/ime/framework/common/Language;I)V

    const-string v19, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    move-object/from16 v0, v19

    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_a
    const-string v19, "select_language_list"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.ime.implement.setting.AC_LANGUAGES_SETTINGS"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_5
.end method

.method private getAutoReplacementSelectedLanguages()Ljava/lang/String;
    .locals 18

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-string v10, ""

    const-string v11, ""

    sget-object v14, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v15, "com.sec.android.inputmethod_preferences"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v13

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v14, v13

    if-ge v3, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v15, v13, v3

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->isAutoReplacementSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v14

    if-nez v14, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v13

    goto :goto_0

    :cond_2
    const-string v14, "0x%08x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/common/Language;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    invoke-interface {v12, v7, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v15, v13, v3

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    const-string v14, "ko"

    aget-object v15, v13, v3

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_3
    aget-object v14, v13, v3

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    if-eqz v1, :cond_0

    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    aget-object v14, v13, v3

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_3

    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v13, v3

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    :cond_5
    if-eqz v1, :cond_0

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    aget-object v14, v13, v3

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v13, v3

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_7
    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_8
    :goto_4
    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v9}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v9}, Lcom/ime/framework/common/InputManager;->isAutoReplacementSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v6

    const-string v14, "ko"

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    if-nez v6, :cond_f

    :cond_9
    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_11

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-eqz v14, :cond_a

    if-nez v6, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v2}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_b
    :goto_6
    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0197

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_d
    return-object v10

    :cond_e
    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    move-object v10, v11

    goto/16 :goto_4

    :cond_f
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_5

    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-eqz v14, :cond_12

    if-nez v6, :cond_b

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v2}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6
.end method

.method private getHelpAppIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "helphub:section"

    const-string v2, "sip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v1, "helphub:appid"

    const-string v2, "keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getHelpAppPackageVersion()I
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v4, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSpellCheckerSelectedLanguages()Ljava/lang/String;
    .locals 18

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-string v10, ""

    const-string v11, ""

    sget-object v14, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v15, "com.sec.android.inputmethod_preferences"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v13

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v14, v13

    if-ge v3, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v15, v13, v3

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->isSpellCheckerSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v14

    if-nez v14, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v13

    goto :goto_0

    :cond_2
    const-string v14, "0x%08x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/common/Language;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    invoke-interface {v12, v7, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v15, v13, v3

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->makeSpellCheckerPrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    const-string v14, "ko"

    aget-object v15, v13, v3

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_3
    aget-object v14, v13, v3

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    if-eqz v1, :cond_0

    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    aget-object v14, v13, v3

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_3

    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v13, v3

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    :cond_5
    if-eqz v1, :cond_0

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    aget-object v14, v13, v3

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v13, v3

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_7
    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_8
    :goto_4
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v9}, Lcom/ime/framework/common/InputManager;->makeSpellCheckerPrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v9}, Lcom/ime/framework/common/InputManager;->isSpellCheckerSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_10

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-eqz v14, :cond_9

    if-nez v6, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v2}, Lcom/ime/framework/common/InputManager;->makeSpellCheckerPrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a
    :goto_6
    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "SETTINGS_DEFAULT_SPELL_CHECKER"

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_c

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0197

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_c
    return-object v10

    :cond_d
    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    move-object v10, v11

    goto/16 :goto_4

    :cond_e
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_5

    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-eqz v14, :cond_11

    if-nez v6, :cond_a

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14, v2}, Lcom/ime/framework/common/InputManager;->makeSpellCheckerPrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6
.end method

.method private isEnableToRemovePredictionOption()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerHelpAppPrefIntent()V
    .locals 2

    const-string v1, "HELP_INTEGRATION"

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private removedPreferenceOnTalkbackEnabled()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "SETTINGS_SMART_TYPING"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isSupportSpaceLanguageChange()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v4, "SETTINGS_SMART_TYPING"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v4, "settings_keyboard_swipe"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v4, "SETTINGS_SHORTCUT_PHRASE"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v4, "settings_key_tap_feedback"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v4, "SETTINGS_DEFAULT_HOLD_DELAY"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v4, "customisationl"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v4, "SETTINGS_AUTOTEXT_PHRASE"

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    return-void
.end method

.method private setSummaryForPredictiveText()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v3, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V

    return-void
.end method

.method private setSummaryForPredictiveText(Z)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v3, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "settings_keyboard_swipe"

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    const-string v2, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getAutoReplacementSelectedLanguages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const v2, 0x7f0d004d

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v2, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d0070

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    const-string v2, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0d0073

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_5
    const v2, 0x7f0d029b

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_6
    const-string v2, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    const v2, 0x7f0d0196

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_7
    const-string v2, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const v2, 0x7f0d004e

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private showAutoReplacementGuideDialogToEnalbe()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v2, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v3, 0x7f0e0000

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0192

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0195

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d00b5

    new-instance v2, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$49;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$49;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method private showSwiftKeyGuideDialog()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const v5, 0x7f030060

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getResources()Landroid/content/res/Resources;

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

    sget-object v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v8, 0x7f0e0000

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    new-instance v6, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;

    invoke-direct {v6, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x104000a

    new-instance v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$42;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$42;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d0154

    new-instance v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;

    invoke-direct {v7, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

    move-object v2, v0

    iput-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "must implement OnDetailMenuSelected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a002c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    if-eqz v8, :cond_0

    :try_start_0
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v9, 0x102000a

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v9, 0x7f1000d0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v9, 0x7f1000d1

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v5

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02071f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v7

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v7

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v6, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v8, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget v8, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v8, v13, :cond_3

    invoke-virtual {v3, v12}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_1
    const-string v8, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    iget v8, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v8, v13, :cond_4

    invoke-virtual {v3, v12}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {v3, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 53

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v49

    sput-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 v25, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    if-nez v49, :cond_0

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/util/Utils;->isKNOX(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_26

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/repository/InputStatus;->setKNOXStatus(Z)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mEmergencyMode:Z

    new-instance v6, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v6}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/ConfigFeature;->isUSAString()Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsUSAString:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v49 .. v49}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsUSAString:Z

    move/from16 v49, v0

    if-eqz v49, :cond_29

    const-string v49, "SWIFTKEY"

    const-string v50, "XT9"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_27

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0d0069

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_3

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v50, "com.sec.android.inputmethod_preferences"

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    const-string v49, "da_mode"

    const/16 v50, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    const-string v49, "support_hwr_mode"

    const/16 v50, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v35

    if-eqz v35, :cond_1

    const-string v49, "USE_HWR_MODE"

    const/16 v50, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    const-string v49, "TABLET_MODE"

    const/16 v50, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misUseSplitFloatingKeyboard:Z

    const-string v49, "INPUT_LANGUAGE"

    const v50, 0x656e4742

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v21

    const/high16 v49, -0x10000

    and-int v49, v49, v21

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    const/high16 v50, -0x10000

    and-int v25, v49, v50

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_2b

    if-eqz v44, :cond_2

    if-nez v47, :cond_2a

    :cond_2
    const v49, 0x7f030081

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->dismissAllDialog()V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppPackageVersion()I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    move/from16 v49, v0

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_33

    const/16 v49, 0x0

    :goto_3
    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->registerHelpAppPrefIntent()V

    const/16 v42, 0x0

    const/16 v30, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_34

    const-string v49, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_4

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v50, "com.sec.android.inputmethod_preferences"

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    const-string v49, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v50, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    instance-of v0, v9, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    :goto_4
    sget-boolean v49, Lcom/ime/framework/util/Debug;->DBG_DEVELOPER_MODE:Z

    if-eqz v49, :cond_5

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v49, 0x0

    const-string v50, "Xt9"

    aput-object v50, v20, v49

    const/16 v49, 0x1

    const-string v50, "SwiftKey"

    aput-object v50, v20, v49

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    new-instance v29, Landroid/preference/PreferenceCategory;

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v49, 0x7f0d03bd

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v33, Landroid/preference/ListPreference;

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const v49, 0x7f0d03bf

    move-object/from16 v0, v33

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    const v49, 0x7f0d03bf

    move-object/from16 v0, v33

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const/16 v49, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v49

    if-eqz v49, :cond_35

    const-string v12, "SwiftKey"

    :goto_5
    const-string v49, "dev_setting_engine_type"

    move-object/from16 v0, v36

    move-object/from16 v1, v49

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onDevSettingEngineChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v49, "settings_keyboard_swipe_flick_umlaut"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_6

    const-string v49, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceCategory;

    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v49, "SETTINGS_DEFAULT_HOLD_DELAY"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_7

    const-string v49, "settings_key_tap_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceCategory;

    if-eqz v29, :cond_7

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v49, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_8

    const-string v49, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v49, v0

    const/high16 v50, 0x6a610000

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_36

    const/16 v46, 0x1

    :goto_6
    if-eqz v46, :cond_9

    const-string v49, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_9

    const/16 v49, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->removedPreferenceOnTalkbackEnabled()V

    const-string v49, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v49

    const-string v50, "CscFeature_Sip_DisableAutoCorrection"

    invoke-virtual/range {v49 .. v50}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v49

    const-string v50, "CscFeature_Sip_ApplyAutoCorrectionPatent"

    invoke-virtual/range {v49 .. v50}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_b

    const v49, 0x7f0d0194

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_b
    :goto_7
    const-string v49, "SETTINGS_DEFAULT_SPELL_CHECKER"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSpellCheckerClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_c
    const-string v49, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_d
    const-string v49, "SETTINGS_AUTOTEXT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoTextClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v49

    const-string v50, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual/range {v49 .. v50}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    const-string v49, "settings_key_tap_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceCategory;

    if-eqz v29, :cond_f

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    const-string v49, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v49, v0

    if-eqz v49, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v49

    if-eqz v49, :cond_12

    :cond_11
    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_12

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v42

    check-cast v42, Landroid/preference/SwitchPreference;

    if-eqz v42, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v49

    if-nez v49, :cond_13

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_13

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    if-eqz v31, :cond_13

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_14

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    move/from16 v49, v0

    if-nez v49, :cond_3c

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v49

    if-eqz v49, :cond_3c

    const-string v49, "tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    const-string v49, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v30, :cond_16

    if-eqz v33, :cond_16

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    if-eqz v31, :cond_3b

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    :goto_8
    sget-boolean v49, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v49, :cond_16

    const-string v49, "SamsungIME"

    const-string v50, "Removing Help App and Tutorial for Knox Mode"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_41

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isSupportSpaceLanguageChange()Z

    move-result v49

    if-eqz v49, :cond_41

    const-string v49, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_17

    new-instance v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$1;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_17
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isNoteModel()Z

    move-result v49

    if-eqz v49, :cond_43

    const-string v49, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_18

    new-instance v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$3;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$3;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_18
    :goto_b
    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v49 .. v49}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "hand_adaptable_operation"

    const/16 v51, 0x3

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_45

    const-string v49, "SETTINGS_DEFAULT_ONE_HAND"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1a

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v49 .. v49}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "onehand_samsungkeypad_enabled"

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v49, 0x1

    move/from16 v0, v27

    move/from16 v1, v49

    if-ne v0, v1, :cond_44

    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setPreOneHandSettingValue(I)V

    :cond_19
    new-instance v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$4;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$4;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1a
    :goto_d
    if-nez v5, :cond_1b

    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_1b

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v49, v0

    const/high16 v50, 0x6a610000

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_1c

    const-string v49, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_1c

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v49, v0

    if-eqz v49, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v49, v0

    const/high16 v50, 0x74720000

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_46

    const-string v49, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/ListPreference;

    if-eqz v26, :cond_1d

    invoke-virtual/range {v26 .. v26}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v49

    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1d
    :goto_e
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/ListPreference;

    if-eqz v26, :cond_1e

    invoke-virtual/range {v26 .. v26}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v49

    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1e
    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    check-cast v43, Lcom/sec/android/inputmethod/SpinnerPreference;

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v49

    if-eqz v49, :cond_47

    if-eqz v43, :cond_1f

    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v50, "com.sec.android.inputmethod_preferences"

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const v49, 0x7f0d001f

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setTitle(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Lcom/sec/android/inputmethod/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    const/16 v49, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setPersistent(Z)V

    const v49, 0x7f07002f

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setEntries(I)V

    const v49, 0x7f070030

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setEntryValues(I)V

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v49

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1f
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_21

    const-string v49, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/ListPreference;

    if-eqz v26, :cond_20

    invoke-virtual/range {v26 .. v26}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v49

    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v49, v0

    if-eqz v49, :cond_21

    const-string v49, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_21

    new-instance v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$5;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$5;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_21
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_22
    const-string v49, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v49, v0

    const/high16 v50, 0x6a610000

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_23

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    :goto_10
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_24
    const-string v49, "settings_keyboard_swipe_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    const-string v49, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v34, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v49, v0

    if-eqz v49, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v45

    :goto_11
    sget-object v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v50, "com.sec.android.inputmethod_preferences"

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    const/16 v22, 0x0

    const/16 v28, -0x1

    const/16 v39, -0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    const/16 v40, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v49, v0

    add-int/lit8 v17, v49, -0x1

    :goto_12
    if-ltz v17, :cond_4a

    const-string v49, "0x%08x"

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget-object v52, v45, v17

    invoke-virtual/range {v52 .. v52}, Lcom/ime/framework/common/Language;->getId()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    invoke-static/range {v49 .. v50}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    const/16 v49, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_25

    add-int/lit8 v28, v28, 0x1

    move/from16 v39, v17

    aget-object v49, v45, v17

    invoke-virtual/range {v49 .. v49}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    const/high16 v50, -0x10000

    and-int v40, v49, v50

    if-nez v10, :cond_25

    move/from16 v0, v40

    if-ne v11, v0, :cond_25

    const/4 v10, 0x1

    :cond_25
    add-int/lit8 v17, v17, -0x1

    goto :goto_12

    :cond_26
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/repository/InputStatus;->setKNOXStatus(Z)V

    goto/16 :goto_0

    :cond_27
    const-string v49, "SWIFTKEY"

    const-string v50, "SWIFTKEY"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-interface {v0, v8}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_28

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0d006a

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    goto/16 :goto_1

    :cond_28
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0d0068

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    goto/16 :goto_1

    :cond_29
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0d0068

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2a
    const v49, 0x7f030080

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v49, v0

    if-nez v49, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v49

    if-eqz v49, :cond_2d

    :cond_2c
    const v49, 0x7f03007e

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v49, v0

    if-eqz v49, :cond_2f

    if-nez v47, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v49, v0

    if-eqz v49, :cond_2e

    const v49, 0x7f03007f

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_2e
    const v49, 0x7f03007d

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v49, v0

    if-eqz v49, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v49, v0

    if-eqz v49, :cond_30

    const v49, 0x7f03007f

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_30
    const v49, 0x7f03007d

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_31
    const/high16 v49, 0x7a680000

    move/from16 v0, v25

    move/from16 v1, v49

    if-ne v0, v1, :cond_32

    const v49, 0x7f03007c

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_32
    const v49, 0x7f03007c

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_33
    const/16 v49, 0x1

    goto/16 :goto_3

    :cond_34
    const-string v49, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    :cond_35
    const-string v12, "Xt9"

    goto/16 :goto_5

    :cond_36
    const/16 v46, 0x0

    goto/16 :goto_6

    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v49, v0

    const/high16 v50, 0x7a680000

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v49, v0

    const/high16 v50, 0x6a610000

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_39

    :cond_38
    const/16 v46, 0x1

    :goto_13
    goto/16 :goto_6

    :cond_39
    const/16 v46, 0x0

    goto :goto_13

    :cond_3a
    const-string v49, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceCategory;

    if-eqz v29, :cond_b

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_15

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3e

    const-string v49, "tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_16

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    if-eqz v31, :cond_3d

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3d
    const-string v49, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v31, :cond_16

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_3e
    const-string v49, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_40

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    if-eqz v31, :cond_3f

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3f
    const-string v49, "tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v31, :cond_40

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v49, v0

    if-nez v49, :cond_16

    const-string v49, "tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_16

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    if-eqz v31, :cond_16

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_42

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isSupportSpaceLanguageChange()Z

    move-result v49

    if-eqz v49, :cond_42

    const-string v49, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_17

    new-instance v49, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$2;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$2;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_a

    :cond_42
    const-string v49, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_17

    const-string v49, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    if-eqz v31, :cond_17

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    :cond_43
    const-string v49, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_18

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    if-eqz v31, :cond_18

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    :cond_44
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_c

    :cond_45
    const-string v49, "SETTINGS_DEFAULT_ONE_HAND"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_1a

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    :cond_46
    const-string v49, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/ListPreference;

    if-eqz v26, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_1d

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    :cond_47
    if-eqz v43, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_1f

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_10

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v45

    goto/16 :goto_11

    :cond_4a
    const/16 v49, -0x1

    move/from16 v0, v28

    move/from16 v1, v49

    if-ne v0, v1, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    const/high16 v50, -0x10000

    and-int v11, v49, v50

    :cond_4b
    :goto_14
    const/high16 v49, 0x6a610000

    move/from16 v0, v49

    if-ne v11, v0, :cond_56

    const/16 v49, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    :cond_4c
    :goto_15
    const-string v49, "SETTINGS_VIETNAMESE_INPUT_METHOD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/preference/ListPreference;

    if-eqz v48, :cond_4e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v49, v0

    const/high16 v50, 0x76690000

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_4d

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingVietnameseTelex()Z

    move-result v49

    if-nez v49, :cond_4e

    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    if-eqz v32, :cond_4e

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4e
    new-instance v49, Landroid/app/AlertDialog$Builder;

    sget-object v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v50, 0x7f0d0070

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d0072

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d00b5

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d0154

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$7;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$7;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    new-instance v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$6;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$6;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    new-instance v49, Landroid/app/AlertDialog$Builder;

    sget-object v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d006f

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d00b5

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d0154

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$10;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$10;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    new-instance v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$9;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$9;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    new-instance v49, Landroid/app/AlertDialog$Builder;

    sget-object v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mUseTraceString:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d0079

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d00b5

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$14;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$14;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d0154

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$13;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$13;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    new-instance v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$12;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$12;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    new-instance v49, Landroid/app/AlertDialog$Builder;

    sget-object v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v50, 0x7f0d0048

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d0078

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d00b5

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$17;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$17;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    const v50, 0x7f0d0154

    new-instance v51, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$16;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$16;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    new-instance v50, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$15;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$15;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    const v49, 0x7f0d0047

    const/16 v50, 0x0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;

    const-string v49, "keyboard_height"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardHeightClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_51

    const-string v49, "enhanced_prediction"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardHeightClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_50
    const-string v49, "shuangpin_keyboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    if-eqz v30, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isHKTWBinaryByCSC()Z

    move-result v49

    if-eqz v49, :cond_57

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_51
    :goto_16
    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v49

    const-string v50, "MENU"

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I

    move/from16 v49, v0

    if-gez v49, :cond_52

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I

    move/from16 v49, v0

    const/16 v50, 0x3

    move/from16 v0, v49

    move/from16 v1, v50

    if-le v0, v1, :cond_52

    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I

    :cond_52
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v49, v0

    if-eqz v49, :cond_53

    const-string v49, "input_method_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Landroid/preference/PreferenceScreen;

    const-string v49, "SETTINGS_INPUT_LANGUAGES"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceCategory;

    const-string v49, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/PreferenceCategory;

    const-string v49, "settings_key_tap_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    const-string v49, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I

    move/from16 v49, v0

    packed-switch v49, :pswitch_data_0

    :cond_53
    :goto_18
    return-void

    :cond_54
    if-eqz v28, :cond_55

    if-nez v10, :cond_4b

    :cond_55
    aget-object v49, v45, v39

    invoke-virtual/range {v49 .. v49}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    const/high16 v50, -0x10000

    and-int v11, v49, v50

    goto/16 :goto_14

    :cond_56
    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    const/high16 v49, 0x7a680000

    move/from16 v0, v49

    if-ne v11, v0, :cond_4c

    const/16 v49, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShuangpinKeyboardClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_16

    :catch_0
    move-exception v14

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I

    goto/16 :goto_17

    :pswitch_0
    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v49, "com.sec.android.inputmethod.SettingsInputLanguagesFragment"

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setFragment(Ljava/lang/String;)V

    goto :goto_18

    :pswitch_1
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_18

    :pswitch_2
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    :pswitch_3
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const v2, 0x7f0f0009

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    sget-object v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v3, "SamsungIME"

    const-string v4, "Help app is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100152 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 50

    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    if-nez v46, :cond_0

    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_1

    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setHasOptionsMenu(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v46, v0

    if-eqz v46, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v46

    check-cast v46, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMenuIndex:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v46

    check-cast v46, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    const/16 v46, 0x1

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/repository/InputModeStatus;->setChangedMainValuesForStartInputView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v46

    const-string v47, "INPUT_LANGUAGE"

    const v48, 0x656e4742

    invoke-interface/range {v46 .. v48}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v46

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v46

    if-eqz v46, :cond_5

    const-string v46, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    const-string v46, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    const-string v46, "Portrait keyboard types"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    if-eqz v31, :cond_5

    if-eqz v15, :cond_3

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-eqz v14, :cond_5

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    if-eqz v46, :cond_41

    const-string v46, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->isVoiceInputSelected()Z

    move-result v46

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListPreference()V

    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v47, "com.sec.android.inputmethod_preferences"

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    const/16 v43, 0x0

    const/16 v24, 0x0

    const/16 v27, -0x1

    const/16 v35, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    const/16 v36, -0x1

    const/4 v9, 0x0

    const/16 v18, 0x0

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    if-eqz v29, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v46, v0

    if-eqz v46, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v43

    :goto_0
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v13, v46, -0x1

    :goto_1
    if-ltz v13, :cond_a

    const-string v46, "0x%08x"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget-object v49, v43, v13

    invoke-virtual/range {v49 .. v49}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v46, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_8

    aget-object v46, v43, v13

    invoke-virtual/range {v46 .. v46}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v46, v46, v47

    move/from16 v0, v46

    if-ne v0, v10, :cond_7

    const/16 v18, 0x1

    :cond_7
    add-int/lit8 v27, v27, 0x1

    move/from16 v35, v13

    aget-object v46, v43, v13

    invoke-virtual/range {v46 .. v46}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v36, v46, v47

    if-nez v9, :cond_8

    move/from16 v0, v36

    if-ne v10, v0, :cond_8

    const/4 v9, 0x1

    :cond_8
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v43

    goto :goto_0

    :cond_a
    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->initSelectedLanguage()V

    :cond_b
    const/16 v46, -0x1

    move/from16 v0, v27

    move/from16 v1, v46

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageSize()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v10, v46, v47

    :cond_c
    :goto_2
    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v46, v0

    if-eqz v46, :cond_16

    const/high16 v46, 0x6a610000

    move/from16 v0, v46

    if-ne v10, v0, :cond_15

    const/16 v44, 0x1

    :goto_3
    if-eqz v44, :cond_1a

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v29, :cond_d

    const/16 v46, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz v19, :cond_19

    const v46, 0x7f0d0029

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_d
    :goto_4
    const-string v46, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v46, v0

    if-eqz v46, :cond_e

    move-object/from16 v42, v29

    check-cast v42, Landroid/preference/SwitchPreference;

    const-string v46, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_e
    if-eqz v29, :cond_f

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_f
    const-string v46, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const-string v46, "SETTINGS_SHORTCUT_PHRASE"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v29, :cond_10

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v46, v0

    if-eqz v46, :cond_1d

    move-object/from16 v42, v29

    check-cast v42, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_10
    :goto_5
    const-string v46, "SETTINGS_AUTOTEXT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    if-eqz v29, :cond_28

    const/16 v19, 0x0

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    if-nez v43, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v46, v0

    if-eqz v46, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v43

    :cond_11
    :goto_6
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v13, v46, -0x1

    :goto_7
    if-ltz v13, :cond_26

    const-string v46, "0x%08x"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget-object v49, v43, v13

    invoke-virtual/range {v49 .. v49}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v46, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v46, v0

    if-nez v46, :cond_21

    const/high16 v46, 0x6a610000

    move/from16 v0, v36

    move/from16 v1, v46

    if-ne v0, v1, :cond_20

    const/16 v44, 0x1

    :goto_8
    if-eqz v21, :cond_25

    move/from16 v35, v13

    aget-object v46, v43, v13

    invoke-virtual/range {v46 .. v46}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v36, v46, v47

    if-eqz v44, :cond_24

    :cond_12
    :goto_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    :cond_13
    if-eqz v27, :cond_14

    if-nez v9, :cond_c

    :cond_14
    aget-object v46, v43, v35

    invoke-virtual/range {v46 .. v46}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v10, v46, v47

    goto/16 :goto_2

    :cond_15
    const/16 v44, 0x0

    goto/16 :goto_3

    :cond_16
    const/high16 v46, 0x7a680000

    move/from16 v0, v46

    if-eq v10, v0, :cond_17

    const/high16 v46, 0x6a610000

    move/from16 v0, v46

    if-ne v10, v0, :cond_18

    :cond_17
    const/16 v44, 0x1

    :goto_a
    goto/16 :goto_3

    :cond_18
    const/16 v44, 0x0

    goto :goto_a

    :cond_19
    const v46, 0x7f0d002a

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    :cond_1a
    const/16 v46, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v46, v0

    if-eqz v46, :cond_1b

    move-object/from16 v42, v29

    check-cast v42, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_1b
    if-eqz v19, :cond_1c

    const v46, 0x7f0d0029

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    :cond_1c
    const v46, 0x7f0d002a

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    :cond_1d
    if-eqz v19, :cond_1e

    const v46, 0x7f0d0029

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    :cond_1e
    const v46, 0x7f0d002a

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v43

    goto/16 :goto_6

    :cond_20
    const/16 v44, 0x0

    goto/16 :goto_8

    :cond_21
    const/high16 v46, 0x7a680000

    move/from16 v0, v36

    move/from16 v1, v46

    if-eq v0, v1, :cond_22

    const/high16 v46, 0x6a610000

    move/from16 v0, v36

    move/from16 v1, v46

    if-ne v0, v1, :cond_23

    :cond_22
    const/16 v44, 0x1

    :goto_b
    goto/16 :goto_8

    :cond_23
    const/16 v44, 0x0

    goto :goto_b

    :cond_24
    const/16 v19, 0x1

    goto/16 :goto_9

    :cond_25
    if-nez v44, :cond_12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    goto/16 :goto_9

    :cond_26
    if-eqz v19, :cond_27

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z

    move/from16 v46, v0

    if-nez v46, :cond_28

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_28
    const-string v46, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_29

    const-string v46, "SETTINGS_DEFAULT_AUTO_CAPS"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoCapsChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v46, 0x7f0d0054

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    :cond_29
    const-string v46, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v46

    const/high16 v47, 0x6b6f0000

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    move/from16 v46, v0

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_33

    const-string v46, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceCategory;

    if-eqz v28, :cond_2a

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2a
    :goto_c
    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    if-eqz v29, :cond_2b

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    :cond_2b
    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoSpaceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2c
    const-string v46, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2d

    const-string v46, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoPeriodChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2d
    const-string v46, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2e

    const-string v46, "SETTINGS_DEFAULT_USE_PREVIEW"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onCharacterPreviewChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2e
    const-string v46, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_31

    const/16 v38, 0x1

    const-string v46, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/util/Utils;->isUltraPowerSavingModeON(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_2f

    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/util/Utils;->isEmergencyModeON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_30

    :cond_2f
    const/16 v38, 0x0

    :cond_30
    move/from16 v0, v38

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_31
    const-string v46, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v32, :cond_37

    if-nez v43, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v46, v0

    if-eqz v46, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v43

    :goto_d
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v13, v46, -0x1

    :goto_e
    if-ltz v13, :cond_35

    const-string v46, "0x%08x"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget-object v49, v43, v13

    invoke-virtual/range {v49 .. v49}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v46, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_32

    add-int/lit8 v27, v27, 0x1

    move/from16 v35, v13

    aget-object v46, v43, v13

    invoke-virtual/range {v46 .. v46}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v36, v46, v47

    if-nez v9, :cond_32

    move/from16 v0, v36

    if-ne v10, v0, :cond_32

    const/4 v9, 0x1

    :cond_32
    add-int/lit8 v13, v13, -0x1

    goto :goto_e

    :cond_33
    const-string v46, "SETTINGS_DEFAULT_AUTO_SPACING"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_c

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v43

    goto :goto_d

    :cond_35
    const/16 v46, -0x1

    move/from16 v0, v27

    move/from16 v1, v46

    if-ne v0, v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v10, v46, v47

    :cond_36
    :goto_f
    const/high16 v46, 0x6a610000

    move/from16 v0, v46

    if-ne v10, v0, :cond_4c

    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    :cond_37
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText()V

    const-string v46, "SETTINGS_DEFAULT_SPELL_CHECKER"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    if-eqz v29, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getSpellCheckerSelectedLanguages()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v46, 0x7f0d019a

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitleDescription(I)V

    :cond_38
    const-string v46, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_3b

    const/16 v38, 0x1

    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/util/Utils;->isPowerSavingModeON(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_39

    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/util/Utils;->isEmergencyModeON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_4f

    :cond_39
    const/16 v19, 0x0

    const/16 v38, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v46

    if-eqz v46, :cond_3a

    const/16 v38, 0x0

    :cond_3a
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3b
    const-string v46, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_3e

    const/16 v38, 0x1

    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "sip_key_feedback_sound"

    const/16 v48, -0x1

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_52

    if-eqz v34, :cond_3c

    const-string v46, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_51

    const/16 v19, 0x1

    :cond_3c
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v46

    if-eqz v46, :cond_3d

    const/16 v38, 0x0

    :cond_3d
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3e
    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/ime/framework/common/EasyMode;->isDeviceEasyModeOn(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_3f

    const-string v46, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    if-eqz v29, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    if-eqz v31, :cond_3f

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mEmergencyMode:Z

    move/from16 v46, v0

    if-eqz v46, :cond_40

    const-string v46, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/PreferenceCategory;

    const-string v46, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    if-eqz v30, :cond_40

    if-eqz v29, :cond_40

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v46, v0

    if-eqz v46, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v46, v0

    const-string v47, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    const-string v46, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    const-string v46, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_41

    move/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_41
    const-string v46, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    instance-of v0, v3, Landroid/preference/SwitchPreference;

    move/from16 v46, v0

    if-eqz v46, :cond_42

    move-object v4, v3

    check-cast v4, Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_42

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->areAllLanguagesDisable()Z

    move-result v46

    if-eqz v46, :cond_42

    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_42
    const-string v46, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v40

    move-object/from16 v0, v40

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v46, v0

    if-eqz v46, :cond_43

    move-object/from16 v41, v40

    check-cast v41, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v41 .. v41}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_54

    const/16 v46, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_43
    :goto_13
    const-string v46, "SETTINGS_AUTOTEXT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    instance-of v0, v5, Landroid/preference/SwitchPreference;

    move/from16 v46, v0

    if-eqz v46, :cond_44

    move-object/from16 v41, v5

    check-cast v41, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v41 .. v41}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_55

    const/16 v46, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_44
    :goto_14
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->isEnableToRemovePredictionOption()Z

    move-result v46

    if-eqz v46, :cond_46

    const/16 v33, 0x0

    const/16 v31, 0x0

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    if-eqz v31, :cond_45

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_45
    const-string v46, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    if-eqz v31, :cond_46

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "default_input_method"

    invoke-static/range {v46 .. v47}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v46, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_48

    const-string v46, "keyboard_height"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    if-eqz v22, :cond_47

    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_47
    if-eqz v5, :cond_48

    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v46

    if-eqz v46, :cond_49

    const-string v46, "keyboard_height"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v46, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string v46, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    if-eqz v23, :cond_49

    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_49
    return-void

    :cond_4a
    if-eqz v27, :cond_4b

    if-nez v9, :cond_36

    :cond_4b
    aget-object v46, v43, v35

    invoke-virtual/range {v46 .. v46}, Lcom/ime/framework/common/Language;->getId()I

    move-result v46

    const/high16 v47, -0x10000

    and-int v10, v46, v47

    goto/16 :goto_f

    :cond_4c
    const/high16 v46, 0x7a680000

    move/from16 v0, v46

    if-ne v10, v0, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v37

    if-eqz v37, :cond_4d

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_4d

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v47, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    :goto_15
    const-string v46, "settings_keyboard_swipe_none"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_4d
    const/16 v46, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    goto :goto_15

    :cond_4e
    const/16 v46, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setEnabled(Z)V

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    if-eqz v29, :cond_37

    const-string v46, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_4f
    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "sip_key_feedback_vibration"

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_50

    const/16 v19, 0x1

    goto/16 :goto_11

    :cond_50
    const/16 v19, 0x0

    goto/16 :goto_11

    :cond_51
    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_52
    sget-object v46, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "sip_key_feedback_sound"

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_53

    const/16 v19, 0x1

    goto/16 :goto_12

    :cond_53
    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_54
    const/16 v46, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_13

    :cond_55
    const/16 v46, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_14
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public showPinchZoomGuideDialog()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_3

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    sget-object v15, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v16, 0x7f0e0000

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d009d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v11, 0x7f100094

    const v10, 0x7f100095

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isUsedSplitKeyboard()Z

    move-result v14

    if-eqz v14, :cond_4

    const v12, 0x7f03005c

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isCheckDontShowPinchZoomGuide()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    sget-object v14, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1020016

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    const v14, 0x104000a

    new-instance v15, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$39;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$39;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f100096

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v14, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v6, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    const v12, 0x7f030058

    goto/16 :goto_0
.end method

.method public showPredictiveTextGuideDialog()V
    .locals 9

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f03005d

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isCheckDontShowPredictiveTextGuide()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    sget-object v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x1020016

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    const v7, 0x104000a

    new-instance v8, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$44;

    invoke-direct {v8, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$44;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f10009b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$45;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$45;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_3
    return-void
.end method
