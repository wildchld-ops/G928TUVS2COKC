.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$6;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts_passwd"

.field private static final PASSWORD_INPUT_TEXT:Ljava/lang/String; = "password_input_text"

.field public static final TAG:Ljava/lang/String; = "PersonalPageModePassword"

.field private static final blockInputFilter:[Landroid/text/InputFilter;

.field private static final normalInputFilter:[Landroid/text/InputFilter;


# instance fields
.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEtPassword:Landroid/widget/EditText;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$1;

    invoke-direct {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$1;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->blockInputFilter:[Landroid/text/InputFilter;

    new-array v0, v2, [Landroid/text/InputFilter;

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->normalInputFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    const-string v0, "pref_attempt_deadline_passwd"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V

    return-void
.end method

.method static synthetic access$300()[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->normalInputFilter:[Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private getDeadline()J
    .locals 8

    const-wide/16 v6, 0x7530

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_attempt_deadline_passwd"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const-string v3, "PersonalPageModePassword"

    const-string v4, "Wrong PASSWORD deadline is detected."

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_1

    const-string v3, "PersonalPageModePassword"

    const-string v4, "Deadline PASSWORD initialize"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setDeadline(J)V

    :cond_0
    return-wide v0

    :cond_1
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Assign new PASSWORD deadline"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$5;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private setDeadline(J)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_attempt_deadline_passwd"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$6;->$SwitchMap$com$samsung$android$personalpage$service$activity$PersonalPageModePassword$Stage:[I

    invoke-virtual {p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->blockInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->isWhiteTheme:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setContentView(I)V

    :goto_0
    if-eqz p1, :cond_0

    const-string v2, "num_wrong_attempts_passwd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    :cond_0
    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    new-instance v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setContentView(I)V

    goto :goto_0

    :cond_4
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setContentView(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "PersonalPageModePassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mContext:Landroid/content/Context;

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const-string v1, "password_input_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->getDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->handleAttemptLockout(J)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$4;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "num_wrong_attempts_passwd"

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "password_input_text"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected verifyPassword()V
    .locals 8

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PersonalPageModePassword"

    const-string v4, "Verify password success"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->requestPrivateModeOn()V

    goto :goto_0

    :cond_1
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Verify password fail"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long v0, v4, v6

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setDeadline(J)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V

    goto :goto_0
.end method
