.class public Lcom/android/phone/photoring/PhotoringGuide;
.super Lcom/android/internal/app/AlertActivity;
.source "PhotoringGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ac:Lcom/android/internal/app/AlertController;

.field private handler_loading:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mbtnAgree:Landroid/widget/ImageButton;

.field private mbtnPInfo:Landroid/widget/ImageButton;

.field private mcbAgree:Landroid/widget/CheckBox;

.field private mcbPInfo:Landroid/widget/CheckBox;

.field private mvAgree:Landroid/view/View;

.field private mvPInfo:Landroid/view/View;

.field private s:Ljava/lang/String;

.field private tv:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->s:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/photoring/PhotoringGuide$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoringGuide$1;-><init>(Lcom/android/phone/photoring/PhotoringGuide;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->handler_loading:Landroid/os/Handler;

    return-void
.end method

.method private Endguide(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "finishApp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/photoring/PhotoringGuide;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/photoring/PhotoringGuide;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/PhotoringGuide;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/photoring/PhotoringGuide;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/phone/photoring/PhotoringGuide;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/photoring/PhotoringGuide;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/PhotoringGuide;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/photoring/PhotoringGuide;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/photoring/PhotoringGuide;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/photoring/PhotoringGuide;)V
    .locals 0
    .param p0    # Lcom/android/phone/photoring/PhotoringGuide;

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringGuide;->loadText()V

    return-void
.end method

.method private createThreadAndDialog()V
    .locals 5

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/photoring/PhotoringGuide$2;

    invoke-direct {v1, p0}, Lcom/android/phone/photoring/PhotoringGuide$2;-><init>(Lcom/android/phone/photoring/PhotoringGuide;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadText()V
    .locals 2

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "use_guideLGT.txt"

    invoke-static {p0, v0}, Lcom/android/phone/photoring/PhotoringUtil;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->s:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->handler_loading:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "use_guideKT.txt"

    invoke-static {p0, v0}, Lcom/android/phone/photoring/PhotoringUtil;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->s:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "use_guideLGT.txt"

    invoke-static {p0, v0}, Lcom/android/phone/photoring/PhotoringUtil;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->s:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbAgree:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbPInfo:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_photoring_use_guide_show"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/phone/photoring/PhotoringGuide;->Endguide(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoringGuide;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoringGuide;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbAgree:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbAgree:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringGuide;->ac:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbAgree:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbPInfo:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :pswitch_4
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbPInfo:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbPInfo:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringGuide;->ac:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbAgree:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbPInfo:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    move v3, v4

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x7f10015e
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->inflater:Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040072

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    const v2, 0x7f10015d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    const v2, 0x7f10015f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbAgree:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    const v2, 0x7f100163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mcbPInfo:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    const v2, 0x7f100161

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mbtnAgree:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    const v2, 0x7f100165

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mbtnPInfo:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    const v2, 0x7f10015e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mvAgree:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    const v2, 0x7f100162

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mvPInfo:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mbtnAgree:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mbtnPInfo:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mvAgree:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mvPInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->mAlert:Lcom/android/internal/app/AlertController;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->ac:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->view:Landroid/view/View;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0a0090

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoringGuide;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringGuide;->setupAlert()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide;->ac:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringGuide;->createThreadAndDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoringGuide;->Endguide(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
