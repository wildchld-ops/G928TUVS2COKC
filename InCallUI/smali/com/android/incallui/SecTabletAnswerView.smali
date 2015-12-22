.class public Lcom/android/incallui/SecTabletAnswerView;
.super Lcom/android/incallui/SecTabletView;
.source "SecTabletAnswerView.java"

# interfaces
.implements Lcom/android/incallui/SecAnswerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletView",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/SecAnswerUi;"
    }
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/incallui/SecTabletAnswerView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletAnswerView$1;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public animateForAnswerCall(I)V
    .locals 0

    return-void
.end method

.method public closeDrawer()V
    .locals 0

    return-void
.end method

.method public configureMessageDialog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method dismissWaitingCallPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method getUi()Lcom/android/incallui/SecAnswerUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show answer UI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showMessageDialog()V
    .locals 0

    return-void
.end method

.method public showQuoteMark(Z)V
    .locals 0

    return-void
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 0

    return-void
.end method

.method public showTargets(I)V
    .locals 0

    return-void
.end method

.method public showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerView;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    const-string v3, "wating_calloption_invisible"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "showWaitingCallDialog : call answered without poup"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "wating_calloption_hold"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "wating_calloption_end"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, v4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_2
    move v0, p4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    new-instance v3, Lcom/android/incallui/SecTabletAnswerView$8;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/SecTabletAnswerView$8;-><init>(Lcom/android/incallui/SecTabletAnswerView;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d01fb

    new-instance v4, Lcom/android/incallui/SecTabletAnswerView$9;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecTabletAnswerView$9;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/incallui/SecTabletAnswerView$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecTabletAnswerView$10;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerView;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/SecTabletAnswerView$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerView$2;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d01fb

    new-instance v3, Lcom/android/incallui/SecTabletAnswerView$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecTabletAnswerView$3;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/SecTabletAnswerView$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletAnswerView$4;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletAnswerView;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    move v0, p5

    new-instance v3, Lcom/android/incallui/SecTabletAnswerView$5;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/SecTabletAnswerView$5;-><init>(Lcom/android/incallui/SecTabletAnswerView;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d01fb

    new-instance v4, Lcom/android/incallui/SecTabletAnswerView$6;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecTabletAnswerView$6;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/incallui/SecTabletAnswerView$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecTabletAnswerView$7;-><init>(Lcom/android/incallui/SecTabletAnswerView;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletAnswerView;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    return-void
.end method
