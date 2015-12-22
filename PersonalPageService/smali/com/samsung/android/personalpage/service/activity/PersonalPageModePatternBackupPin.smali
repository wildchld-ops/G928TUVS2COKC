.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePatternBackupPin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PersonalPageModePatternBackupPin"

.field private static final blockInputFilter:[Landroid/text/InputFilter;

.field private static final normalInputFilter:[Landroid/text/InputFilter;


# instance fields
.field private final BACKPIN_INPUT_TEXT:Ljava/lang/String;

.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private lock_out_time:J

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEtPassword:Landroid/widget/EditText;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$1;

    invoke-direct {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$1;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->blockInputFilter:[Landroid/text/InputFilter;

    new-array v0, v2, [Landroid/text/InputFilter;

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    const-string v0, "backpin_input_text"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->BACKPIN_INPUT_TEXT:Ljava/lang/String;

    const-string v0, "pref_attempt_deadline"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->lock_out_time:J

    return-wide v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->blockInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    iget-boolean v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->isWhiteTheme:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.feature.cocktailbar"

    invoke-static {v3, v4}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setContentView(I)V

    :goto_0
    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    const v4, 0x7f05000c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lock_out_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->lock_out_time:J

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f070011

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const v3, 0x7f03000a

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setContentView(I)V

    goto :goto_0

    :cond_3
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setContentView(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "PersonalPageModePatternBackupPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, "backpin_input_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    iget-wide v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->lock_out_time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->lock_out_time:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->handleAttemptLockout(J)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$4;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "backpin_input_text"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected verifyBackupPinAndMountSecretBox()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockBackupPin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PersonalPageModePatternBackupPin"

    const-string v3, "Verify Backup PIN success"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->requestPrivateModeOn()V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_attempt_deadline"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const-string v2, "PersonalPageModePatternBackupPin"

    const-string v3, "Verify Backup PIN fail"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
