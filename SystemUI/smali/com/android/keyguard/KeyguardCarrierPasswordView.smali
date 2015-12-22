.class public Lcom/android/keyguard/KeyguardCarrierPasswordView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierPasswordView"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private deadline:J

.field imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBackupPin:Landroid/widget/EditText;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFailedAttempts:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOk:Landroid/widget/Button;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    return-void
.end method

.method private CheckSecondlock()V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordValid(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->onCheckSecondLockResult(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private onCheckSecondLockResult(Z)V
    .locals 5

    sget-object v2, Lcom/android/keyguard/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardCarrierPasswordView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->CheckSecondlock()V

    :cond_0
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
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->CheckSecondlock()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->carrierlock_password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget v0, Lcom/android/keyguard/R$id;->ok:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockoutAttemptDeadline()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_1

    sget v2, Lcom/android/keyguard/R$string;->kg_login_too_many_attempts:I

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v3, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, ""

    invoke-interface {v2, v3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/keyguard/R$string;->kg_login_instructions:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 0

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
