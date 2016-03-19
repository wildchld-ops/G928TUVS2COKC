.class public Lcom/android/phone/photoring/PhotoringAgreement;
.super Lcom/android/internal/app/AlertActivity;
.source "PhotoringAgreement.java"


# instance fields
.field private agreeFile:[[Ljava/lang/String;

.field private handler_loading:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mAgreeType:I

.field private mContext:Landroid/content/Context;

.field private operator:I

.field private s:Ljava/lang/String;

.field private titleResID:[I

.field private tv:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->s:Ljava/lang/String;

    iput v3, p0, Lcom/android/phone/photoring/PhotoringAgreement;->mAgreeType:I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->titleResID:[I

    new-array v0, v4, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "use_agreeLGT.txt"

    aput-object v2, v1, v3

    const-string v2, "personal_infoLGT.txt"

    aput-object v2, v1, v5

    const-string v2, "use_guideLGT.txt"

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "use_agreeKT.txt"

    aput-object v2, v1, v3

    const-string v2, "personal_infoKT.txt"

    aput-object v2, v1, v5

    const-string v2, "use_guideKT.txt"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "use_agreeLGT.txt"

    aput-object v2, v1, v3

    const-string v2, "personal_infoLGT.txt"

    aput-object v2, v1, v5

    const-string v2, "use_guideLGT.txt"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->agreeFile:[[Ljava/lang/String;

    new-instance v0, Lcom/android/phone/photoring/PhotoringAgreement$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoringAgreement$1;-><init>(Lcom/android/phone/photoring/PhotoringAgreement;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->handler_loading:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x7f0a05d4
        0x7f0a05d5
        0x7f0a05d3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/photoring/PhotoringAgreement;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/photoring/PhotoringAgreement;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/photoring/PhotoringAgreement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/photoring/PhotoringAgreement;)[[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->agreeFile:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/photoring/PhotoringAgreement;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->operator:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/photoring/PhotoringAgreement;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->mAgreeType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method private createThreadAndDialog()V
    .locals 5

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringAgreement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->loadingDialog:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/photoring/PhotoringAgreement$2;

    invoke-direct {v1, p0}, Lcom/android/phone/photoring/PhotoringAgreement$2;-><init>(Lcom/android/phone/photoring/PhotoringAgreement;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringAgreement;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringAgreement;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->mAgreeType:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->view:Landroid/view/View;

    const v2, 0x7f10014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->tv:Landroid/widget/TextView;

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v4, p0, Lcom/android/phone/photoring/PhotoringAgreement;->operator:I

    :goto_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringAgreement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringAgreement;->titleResID:[I

    iget v3, p0, Lcom/android/phone/photoring/PhotoringAgreement;->mAgreeType:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->view:Landroid/view/View;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoringAgreement;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringAgreement;->setupAlert()V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringAgreement;->createThreadAndDialog()V

    return-void

    :cond_0
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->operator:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/photoring/PhotoringAgreement;->operator:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement;->loadingDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
