.class public Lcom/sec/android/cover/manager/CoverPopupManager;
.super Ljava/lang/Object;
.source "CoverPopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/cover/manager/CoverPopupManager;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private mPopupDialog:Landroid/app/Dialog;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/manager/CoverPopupManager;->sInstance:Lcom/sec/android/cover/manager/CoverPopupManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CoverPopupManager"

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->DEBUG:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mDialogType:I

    new-instance v0, Lcom/sec/android/cover/manager/CoverPopupManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverPopupManager$1;-><init>(Lcom/sec/android/cover/manager/CoverPopupManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/manager/CoverPopupManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/cover/manager/CoverPopupManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mDialogType:I

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverPopupManager;->sInstance:Lcom/sec/android/cover/manager/CoverPopupManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverPopupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverPopupManager;->sInstance:Lcom/sec/android/cover/manager/CoverPopupManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverPopupManager;->sInstance:Lcom/sec/android/cover/manager/CoverPopupManager;

    return-object v0
.end method


# virtual methods
.method public dismissPopupDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowingPopupDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Ljava/lang/String;ILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method public showPopupDialog(ILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "CoverPopupManager"

    const-string v2, "view is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mDialogType:I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Landroid/view/View;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method public showPopupDialog(Landroid/view/View;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    const-string v2, "CoverPopupManager"

    const-string v3, "Another popup dialog has been seen already"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    new-instance v3, Lcom/sec/android/cover/manager/CoverPopupManager$2;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/manager/CoverPopupManager$2;-><init>(Lcom/sec/android/cover/manager/CoverPopupManager;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    new-instance v3, Lcom/sec/android/cover/manager/CoverPopupManager$3;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/cover/manager/CoverPopupManager$3;-><init>(Lcom/sec/android/cover/manager/CoverPopupManager;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mDialogType:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x833

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    const-string v1, "CoverPopupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "popup dialog set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_1
.end method

.method public showPopupDialog(Ljava/lang/String;ILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z
    .locals 7

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget v3, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_popup_frame:I

    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v5, "CoverPopupManager"

    const-string v6, "view is null!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_1
    return v5

    :pswitch_1
    sget v3, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_popup_frame:I

    goto :goto_0

    :pswitch_2
    sget v3, Lcom/sec/android/sviewcover/R$layout;->mini_cover_popup_frame:I

    goto :goto_0

    :pswitch_3
    sget v3, Lcom/sec/android/sviewcover/R$layout;->clear_cover_popup_frame:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/sec/android/sviewcover/R$id;->popup_text:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lcom/sec/android/sviewcover/R$id;->popup_frame:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isLightTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v5

    if-nez v5, :cond_1

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->tw_toast_frame_holo_light:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget v5, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mDialogType:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    iput p2, p0, Lcom/sec/android/cover/manager/CoverPopupManager;->mDialogType:I

    :cond_2
    invoke-virtual {p0, v0, p3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Landroid/view/View;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    move-result v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
