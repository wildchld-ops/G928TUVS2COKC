.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModeFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalPageModeFingerprint"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintDialog:Landroid/app/Dialog;

.field private mFingerprintListner:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field final mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintListner:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleIdentify()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method private handleFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 3

    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "PersonalPageModeFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FingerprintEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->verifySucess()V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private handleIdentify()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintListner:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private initFingerprintManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    :cond_0
    return-void
.end method

.method private requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    const/16 v2, 0x400

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requestIdentify()V
    .locals 2

    const/16 v1, 0x401

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private verifySucess()V
    .locals 2

    const-string v0, "PersonalPageModeFingerprint"

    const-string v1, "veritySucess"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestPrivateModeOn()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->initFingerprintManager()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestIdentify()V

    return-void
.end method
