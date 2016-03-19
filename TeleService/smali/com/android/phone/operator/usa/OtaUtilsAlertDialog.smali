.class public Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;
.super Landroid/app/AlertDialog;
.source "OtaUtilsAlertDialog.java"


# static fields
.field private static mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDoneClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$2;-><init>(Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mDoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "OtaUtilsAlertDialog"

    const-string v1, "OtaUtilsAlertDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->createOtaUtilsAlertDialog()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    return-object v0
.end method

.method private createOtaUtilsAlertDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0a07af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mDoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "OtaUtilsAlertDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    :cond_0
    new-instance v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    sget-object v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$1;

    invoke-direct {v1}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$1;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, "OtaUtilsAlertDialog"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
