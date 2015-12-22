.class public Lcom/android/phone/SpamCallsLegalInfoDialog;
.super Landroid/app/Activity;
.source "SpamCallsLegalInfoDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field createDialog:Landroid/app/AlertDialog;

.field mAutoUpdateCheckbox:Landroid/widget/CheckBox;

.field mDoNotShowCheckbox:Landroid/widget/CheckBox;

.field mNM:Lcom/android/phone/NotificationMgr;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SpamCallsLegalInfoDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 11

    const/4 v10, 0x1

    const-string v7, "SpamCallsLegalInfoDialog"

    const-string v8, "initView"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/phone/SpamCallsLegalInfoDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v7, 0x7f0400b6

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mView:Landroid/view/View;

    const v8, 0x7f100128

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0790

    invoke-virtual {p0, v7}, Lcom/android/phone/SpamCallsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0a07a5

    invoke-virtual {p0, v7}, Lcom/android/phone/SpamCallsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/URLSpan;

    const-string v8, "http://www.qq.com/privacy.htm"

    invoke-direct {v7, v8}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    const/16 v9, 0x21

    invoke-virtual {v3, v7, v2, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mView:Landroid/view/View;

    const v8, 0x7f1001e4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mView:Landroid/view/View;

    const v8, 0x7f1001e5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showLegalInfoDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a07a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a07a3

    new-instance v3, Lcom/android/phone/SpamCallsLegalInfoDialog$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SpamCallsLegalInfoDialog$3;-><init>(Lcom/android/phone/SpamCallsLegalInfoDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a07a4

    new-instance v3, Lcom/android/phone/SpamCallsLegalInfoDialog$2;

    invoke-direct {v3, p0}, Lcom/android/phone/SpamCallsLegalInfoDialog$2;-><init>(Lcom/android/phone/SpamCallsLegalInfoDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/SpamCallsLegalInfoDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/SpamCallsLegalInfoDialog$1;-><init>(Lcom/android/phone/SpamCallsLegalInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/SpamCallsLegalInfoDialog$4;

    invoke-direct {v2, p0}, Lcom/android/phone/SpamCallsLegalInfoDialog$4;-><init>(Lcom/android/phone/SpamCallsLegalInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SpamCallsLegalInfoDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iput-object v0, p0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Lcom/android/phone/SpamCallsLegalInfoDialog;->initView()V

    invoke-direct {p0}, Lcom/android/phone/SpamCallsLegalInfoDialog;->showLegalInfoDialog()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
