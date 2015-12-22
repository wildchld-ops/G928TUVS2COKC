.class public Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;
.super Landroid/app/Activity;
.source "EmergencyRadioOnDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mFinishCalled:Z

.field private static sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;


# instance fields
.field private mRadioOnProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mFinishCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private dismissProgressIndication()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v4, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    throw v1
.end method

.method public static finishEmergencyRadioOnDialog()V
    .locals 3

    sget-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishEmergencyRadioOnDialog sMe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mFinishCalled:Z

    goto :goto_0
.end method

.method private showProgressIndication()V
    .locals 2

    sget-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "showProgressIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->dismissProgressIndication()V

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a0204

    invoke-virtual {p0, v1}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a0205

    invoke-virtual {p0, v1}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public static startEmergencyRadioOnDialog()V
    .locals 3

    sget-object v1, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-class v2, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    sget-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->dismissProgressIndication()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mFinishCalled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mFinishCalled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mFinishCalled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->mFinishCalled:Z

    invoke-virtual {p0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->sMe:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    invoke-virtual {p0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->showProgressIndication()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneGlobals;->setErrorDialogActivityInstance(Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;)V

    goto :goto_0
.end method
