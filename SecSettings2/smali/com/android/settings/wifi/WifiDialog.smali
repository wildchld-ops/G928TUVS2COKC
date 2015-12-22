.class public Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# static fields
.field public static mIsShow:Z


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field private TAG:Ljava/lang/String;

.field private isVzwDialog:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field public mCurrentFocusView:Landroid/widget/EditText;

.field private mEapIdentity:Landroid/widget/EditText;

.field private mEdit:Z

.field protected mHandler:Landroid/os/Handler;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private final mRetry:Z

.field private mSaved:Z

.field private mSoftKeyboardVisible:Z

.field private mSsid:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "WifiDialog"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSoftKeyboardVisible:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSaved:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mLinkProperties:Landroid/net/LinkProperties;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->isVzwDialog:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->MSG_SHOW_SOFTINPUT:I

    new-instance v0, Lcom/android/settings/wifi/WifiDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDialog$1;-><init>(Lcom/android/settings/wifi/WifiDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:Z

    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->mRetry:Z

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "WifiDialog"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSoftKeyboardVisible:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSaved:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mLinkProperties:Landroid/net/LinkProperties;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->isVzwDialog:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->MSG_SHOW_SOFTINPUT:I

    new-instance v0, Lcom/android/settings/wifi/WifiDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDialog$1;-><init>(Lcom/android/settings/wifi/WifiDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:Z

    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->mRetry:Z

    iput-object p6, p0, Lcom/android/settings/wifi/WifiDialog;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSoftInput()V

    return-void
.end method

.method private showSoftInput()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->isFocusedView(Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    const-string v4, "isFolderModel showSoftInput returned false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->isVzwDialog:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public isFocusedView(Z)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100471

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100503

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100504

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100510

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100511

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100513

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100514

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100512

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f10052b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f10050a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f10050b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f10050c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f10052f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f100530

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    const-string v2, "    **** isFocusedView() return true  *****"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x1

    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog;->isVzwDialog:Z

    :cond_0
    sput-boolean v3, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040233

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSaved:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiDialog;->mRetry:Z

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiDialog;->mSaved:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f100471

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f1004b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f100503

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    const-string v1, "    **** [onCreate] showSoftKeyboard :: show keypad  !!!*****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSoftInput()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiDialog;->mRetry:Z

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiDialog;->mRetry:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSoftInput()V

    :cond_1
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->isVzwDialog:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->isVzwDialog:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->isFocusedView(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    const-string v1, "    **** show() :: showSoftKeyboard :: show keypad  !!!*****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSoftInput()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowPassword()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowAdvancedOptions()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowProxyAuthenticationOptions()V

    :cond_1
    return-void
.end method
