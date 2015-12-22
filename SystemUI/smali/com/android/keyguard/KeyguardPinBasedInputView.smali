.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardPinBasedInputView"

.field private static mHasWindowFocus:Z

.field private static mIsPaused:Z


# instance fields
.field private doVerifyPasswordRunnable:Ljava/lang/Runnable;

.field private isSupportMobileKeyboard:Z

.field protected mArrKeyPadIds:[I

.field private mButton0:Lcom/android/keyguard/NumPadKey;

.field private mButton1:Lcom/android/keyguard/NumPadKey;

.field private mButton2:Lcom/android/keyguard/NumPadKey;

.field private mButton3:Lcom/android/keyguard/NumPadKey;

.field private mButton4:Lcom/android/keyguard/NumPadKey;

.field private mButton5:Lcom/android/keyguard/NumPadKey;

.field private mButton6:Lcom/android/keyguard/NumPadKey;

.field private mButton7:Lcom/android/keyguard/NumPadKey;

.field private mButton8:Lcom/android/keyguard/NumPadKey;

.field private mButton9:Lcom/android/keyguard/NumPadKey;

.field private mCurrentMobileKeyboard:I

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDivider:Landroid/view/View;

.field private mDividerBottom:Landroid/view/View;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mKeyboardEntry:Landroid/widget/TextView;

.field private mKeyboardView:Landroid/widget/LinearLayout;

.field private mLeftArrowImage:Landroid/widget/ImageButton;

.field private mMaxLength:I

.field protected mMobileKeyboard:Z

.field private mNumericThemeTypeface:Landroid/graphics/Typeface;

.field private mNumpadkeyView:Landroid/widget/LinearLayout;

.field private mOkButton:Landroid/view/View;

.field private mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private mPinViewFrame:Landroid/widget/FrameLayout;

.field private mRightArrowImage:Landroid/widget/ImageButton;

.field private mRightPressed:Z

.field private mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

.field private mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

.field private mSecPinArea:Landroid/view/View;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumericThemeTypeface:Landroid/graphics/Typeface;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    iput v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    const/16 v2, 0xd

    new-array v2, v2, [I

    sget v3, Lcom/android/keyguard/R$id;->key0:I

    aput v3, v2, v1

    sget v3, Lcom/android/keyguard/R$id;->key1:I

    aput v3, v2, v0

    const/4 v3, 0x2

    sget v4, Lcom/android/keyguard/R$id;->key2:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/android/keyguard/R$id;->key3:I

    aput v4, v2, v3

    const/4 v3, 0x4

    sget v4, Lcom/android/keyguard/R$id;->key4:I

    aput v4, v2, v3

    const/4 v3, 0x5

    sget v4, Lcom/android/keyguard/R$id;->key5:I

    aput v4, v2, v3

    const/4 v3, 0x6

    sget v4, Lcom/android/keyguard/R$id;->key6:I

    aput v4, v2, v3

    const/4 v3, 0x7

    sget v4, Lcom/android/keyguard/R$id;->key7:I

    aput v4, v2, v3

    const/16 v3, 0x8

    sget v4, Lcom/android/keyguard/R$id;->key8:I

    aput v4, v2, v3

    const/16 v3, 0x9

    sget v4, Lcom/android/keyguard/R$id;->key9:I

    aput v4, v2, v3

    const/16 v3, 0xa

    sget v4, Lcom/android/keyguard/R$id;->key_enter:I

    aput v4, v2, v3

    const/16 v3, 0xb

    sget v4, Lcom/android/keyguard/R$id;->delete_button:I

    aput v4, v2, v3

    const/16 v3, 0xc

    sget v4, Lcom/android/keyguard/R$id;->key_enter_text:I

    aput v4, v2, v3

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->doVerifyPasswordRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$10;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$10;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$12;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$12;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$13;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView$13;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    const-string v0, "KeyguardPinBasedInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private chooseKeyboardType()V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget v0, Lcom/android/keyguard/R$id;->keyboardentry:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(Z)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setMaxLength(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/PasswordTextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$6;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_ripple_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

    sget v0, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_delete_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$drawable;->theme_pin_delete_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isHintMessageArea()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$7;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$8;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_9
    sget v0, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Lcom/android/keyguard/NumPadKey;

    sget v0, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Lcom/android/keyguard/NumPadKey;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$9;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0
.end method

.method private initOnehandPINView()V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->onehand_left_arrow_pin:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_left_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->onehand_right_arrow_pin:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_right_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->onehand_numpadkey_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    goto :goto_0
.end method

.method private isOnehandMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private movePinLock(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800005

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pin_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pin_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private registerOnehandAnyScreenObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterOnehandAnyScreenObserver()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardPinBasedInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PIN Onehand Observer is not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->num_pad_ripple_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected getEntryTextview()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyboardentry:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const-string v1, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    goto :goto_0
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->registerOnehandAnyScreenObserver()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v3, :cond_0

    const-string v0, "KeyguardPinBasedInputView"

    const-string v3, "keyboard ConfigurationChange"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->unregisterOnehandAnyScreenObserver()V

    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->verifyPasswordAndUnlock()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const/16 v4, 0x8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_imagebg_pinlock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/keyguard/R$id;->pin_view_frame:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/keyguard/R$drawable;->pin_lock_bg_image:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_2
    sget v1, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->dividerbottom:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$drawable;->lock_ripple_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_5
    sget v1, Lcom/android/keyguard/R$id;->keyboard_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/keyguard/R$id;->numpadkey_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->chooseKeyboardType()V

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->disableDevicePermanently()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateBlackTextOnWhiteWallpaper()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->initOnehandPINView()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOnehandPINView()V

    return-void

    :cond_7
    sget v1, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    :cond_8
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    const/16 v0, 0x113

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/16 v2, 0x90

    const/16 v6, 0x10

    const/4 v0, 0x7

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/16 v4, 0x43

    if-eq p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    move v2, v3

    goto :goto_0

    :cond_2
    if-lt p1, v0, :cond_3

    if-le p1, v6, :cond_4

    :cond_3
    if-lt p1, v2, :cond_6

    const/16 v4, 0x99

    if-gt p1, v4, :cond_6

    :cond_4
    if-lt p1, v0, :cond_5

    if-gt p1, v6, :cond_5

    :goto_1
    sub-int v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    move v2, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->measureChildren(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOnehandPINView()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onWindowFocusChanged(Z)V

    sput-boolean p1, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputView$11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$11;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isHintMessageArea()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected setEnableKeyPad(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    return-void
.end method

.method public setOnehandPINView()V
    .locals 6

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_direction"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public showBouncer(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showBouncer(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateBlackTextOnWhiteWallpaper()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setHintTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setHintTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    goto/16 :goto_0
.end method
