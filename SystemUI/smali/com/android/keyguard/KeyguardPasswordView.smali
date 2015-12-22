.class public Lcom/android/keyguard/KeyguardPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardPasswordView"

.field private static mHasWindowFocus:Z

.field private static mIsPaused:Z


# instance fields
.field private final mDisappearYTranslation:I

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInstructionsMessageRunnable:Ljava/lang/Runnable;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;

.field private mSpaceBouncerAndBottom:Landroid/view/View;

.field private mSpaceBouncerTop:Landroid/view/View;

.field private mVisibility:I

.field private wasImmHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->mHasWindowFocus:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->mIsPaused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->wasImmHeight:I

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustLinearLayoutParams(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private canAdjustKeygboardHeight()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isZenProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNobleProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    if-le v2, v10, :cond_1

    :goto_1
    return v10

    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private resizeKeyboardScreen()V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardPasswordView;->resetPasswordText(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->canAdjustKeygboardHeight()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.sec.android.inputmethod.height"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_ime_default_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_ime_adjust_max_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    sub-int v6, v4, v5

    if-le v6, v1, :cond_3

    move v0, v1

    :goto_2
    const-string v6, "KeyguardPasswordView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imeCurrentHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", adjustHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerAndBottom:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerAndBottom:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->canAdjustKeygboardHeight()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerTop:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerTop:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_password_mobile_keyboard_space_bouncer_top_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/KeyguardPasswordView;->adjustLinearLayoutParams(Landroid/view/View;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v6, "KeyguardPasswordView"

    const-string v7, "Can not get ime height"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sub-int v0, v4, v5

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerAndBottom:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->canAdjustKeygboardHeight()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerTop:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerTop:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_password_default_space_bouncer_top_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v0

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/KeyguardPasswordView;->adjustLinearLayoutParams(Landroid/view/View;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/samsung/android/security/MemoryWipeUtils;->getChars(Landroid/widget/TextView;)[C

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lcom/samsung/android/security/MemoryWipeUtils;->clear([C)V

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->resizeKeyboardScreen()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_3

    if-eqz p2, :cond_0

    const/4 v4, 0x6

    if-eq p2, v4, :cond_0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    move v0, v3

    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->verifyPasswordAndUnlock()V

    move v2, v3

    :cond_2
    return v2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget v8, Lcom/android/keyguard/R$id;->space_between_bouncer_and_bottom:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerAndBottom:Landroid/view/View;

    sget v8, Lcom/android/keyguard/R$id;->space_bouncer_top:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSpaceBouncerTop:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordTextViewId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v9, 0x81

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v9, Lcom/android/keyguard/KeyguardPasswordView$3;

    invoke-direct {v9, p0}, Lcom/android/keyguard/KeyguardPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v9, Lcom/android/keyguard/KeyguardPasswordView$4;

    invoke-direct {v9, p0}, Lcom/android/keyguard/KeyguardPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setNewActionPopupMenu(IZ)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v9, Lcom/android/keyguard/KeyguardPasswordView$5;

    invoke-direct {v9, p0}, Lcom/android/keyguard/KeyguardPasswordView$5;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "clipboardEx"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    :cond_1
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->requestFocus()Z

    sget v8, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v8, v10}, Lcom/android/keyguard/KeyguardPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    new-instance v8, Lcom/android/keyguard/KeyguardPasswordView$6;

    invoke-direct {v8, p0}, Lcom/android/keyguard/KeyguardPasswordView$6;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-nez v2, :cond_3

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->disableDevicePermanently()V

    :cond_4
    sget v8, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v8, v6, Landroid/widget/ScrollView;

    if-eqz v8, :cond_6

    const-string v8, "KeyguardPasswordView"

    const-string v9, "scrollView Exists."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v8, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-eqz v0, :cond_5

    const-string v8, "KeyguardPasswordView"

    const-string v9, "emergency circle Exists."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v6

    check-cast v8, Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setScrollView(Landroid/widget/ScrollView;)V

    :cond_5
    sget v8, Lcom/android/keyguard/R$id;->sec_keyguard_camera_circle:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-eqz v0, :cond_6

    const-string v8, "KeyguardPasswordView"

    const-string v9, "camera circle Exists."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v6, Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setScrollView(Landroid/widget/ScrollView;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->resizeKeyboardScreen()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onMeasure(II)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v3

    iget v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->wasImmHeight:I

    if-eq v6, v3, :cond_1

    move v0, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->wasImmHeight:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-lez v3, :cond_3

    :goto_2
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->kg_password_bouncer_frame_top_margin_in_sip:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v5, v4

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->mIsPaused:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->setNullHintMessage()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->mIsPaused:Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onWindowFocusChanged(Z)V

    sput-boolean p1, Lcom/android/keyguard/KeyguardPasswordView;->mHasWindowFocus:Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->mIsPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mVisibility:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$7;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected resetState()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    invoke-interface {v0, v1, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$string;->kg_password_instructions:I

    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/KeyguardPasswordView;->setHintOrMessageText(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/KeyguardPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_password_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/keyguard/KeyguardPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isHintMessageArea()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/keyguard/R$string;->kg_password_bouncer_instructions:I

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardPasswordView;->setHintOrMessageText(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method
