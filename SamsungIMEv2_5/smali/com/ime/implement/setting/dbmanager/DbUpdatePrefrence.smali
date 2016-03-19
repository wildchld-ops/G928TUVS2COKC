.class public Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;
.super Landroid/preference/Preference;
.source "DbUpdatePrefrence.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;,
        Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;,
        Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_UPDATE_CONNECT_ERROR:B = 0x8t

.field private static final DIALOG_UPDATE_FAILED:B = 0x2t

.field private static final DIALOG_UPDATE_NETWORK_DOWN:B = 0x4t

.field private static final DIALOG_UPDATE_NOTIFICATION_ATTENTION:B = 0xat

.field private static final DIALOG_UPDATE_NO_NETWORK:B = 0x3t

.field private static final DIALOG_UPDATE_SAME_VERSION:B = 0x5t

.field private static final DIALOG_UPDATE_SUCCESSFUL:B = 0x1t

.field private static final DIALOG_UPDATE_TIMEOUT:B = 0x6t

.field public static PREFRENCE_AVAILABLE_STYLE:B = 0x0t

.field public static PREFRENCE_DOWNLOAD_STYLE:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "DbUpdatePrefrence"

.field public static mAcvitePrefrences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cancelUpdateHandler:Landroid/view/View$OnClickListener;

.field private mAlertDialg:Landroid/app/AlertDialog;

.field private mBindView:Landroid/view/View;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDBName:Landroid/widget/TextView;

.field private mDBOperationCB:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;

.field private mDBUpdateDate:Landroid/widget/TextView;

.field private mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

.field private mDbUpdateHandler:Landroid/os/Handler;

.field private mDialogId:I

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mPercentProgress:Landroid/widget/ProgressBar;

.field private mPrefrenceDispStyle:B

.field private mShowUpdateButton:Z

.field private mSystemPrefrenceLayout:I

.field private mUpdateButton:Landroid/widget/Button;

.field private mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

.field private mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

.field private mWaitingProgress:Landroid/widget/ProgressBar;

.field private updateHandler:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-byte v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    const/4 v0, 0x1

    sput-byte v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_AVAILABLE_STYLE:B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget-byte v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    iput-byte v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-byte v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    iput-byte v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-byte v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    iput-byte v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateItem;B)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget-byte v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    iput-byte v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0, p0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->setUpdateCallBack(Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iput-byte p3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->init(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/framework/dbmanager/DbUpdateItem;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)B
    .locals 1

    iget-byte v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    return v0
.end method

.method static synthetic access$302(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;B)B
    .locals 0

    iput-byte p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    return p1
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBOperationCB:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDialogId:I

    return p1
.end method

.method public static clearActivePrefrecens()V
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method private convertDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v3, p1

    if-eqz p1, :cond_0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy.MM.dd"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 2

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->getDbId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setKey(Ljava/lang/String;)V

    new-instance v0, Lcom/ime/framework/dbmanager/DbSettings;

    invoke-direct {v0, p1}, Lcom/ime/framework/dbmanager/DbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    sget-byte v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->hasNewVersion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    :cond_0
    :goto_0
    iput p2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mSystemPrefrenceLayout:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    goto :goto_0
.end method

.method private initCustomLayout()Landroid/view/View;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mSystemPrefrenceLayout:I

    invoke-virtual {v2, v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const v7, 0x1020016

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    const v7, 0x7f03001e

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v3, v7, v8, v10, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v7, 0x101030e

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    const v7, 0x1020018

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object v0
.end method

.method private initItemsByViewHolder(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mDBName:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mDBUpdateDate:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mCancelButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mUpdateButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    iget-object v0, p1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mWaitingProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    iget-object v0, p1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mPercentProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    invoke-direct {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    const v0, 0x7f100038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mDBName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mDBUpdateDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    const v0, 0x7f10003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    const v0, 0x7f10003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    const v0, 0x7f10003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mWaitingProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    const v0, 0x7f10003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;->mPercentProgress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mViewHolder:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    return-object v0
.end method

.method private setDbUpdateDateText()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    sget-byte v3, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0379

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/DbUpdateItem;->getDBUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->convertDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0378

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0377

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setItemStatus(ZI)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    sget-object v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setDbUpdateDateText()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextProperty()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mSystemPrefrenceLayout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1020010

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v5}, Lcom/ime/framework/dbmanager/DbUpdateItem;->getDBName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 6

    const v5, 0x104000a

    const/high16 v4, 0x1040000

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDialogId:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0336

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/DbUpdateItem;->getDBName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0370

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    iput p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDialogId:I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0d036a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0367

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$3;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$3;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$4;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$4;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v4, 0x7f0d036f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0d037d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0d037c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d037f

    new-instance v3, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$5;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$5;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$6;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$6;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v4, 0x7f0d036b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v4, 0x7f0d037b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0383

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0372

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->update()V

    return-void
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkItemUpdatable()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->checkUpdatable()V

    return-void
.end method

.method public dbUpdatePrepare()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWLANConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->startUpdate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->startUpdate()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->showAlertDialog(I)V

    goto :goto_0
.end method

.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUpdatable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    sget-object v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->initViewHolder(Landroid/view/View;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->initItemsByViewHolder(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$ViewHolder;)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/DbUpdateItem;->isUpdating()Z

    move-result v1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/DbUpdateItem;->getUpdatePercent()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setTextProperty()V

    :cond_2
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->initCustomLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->setBackground()V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->cancel()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->dbUpdatePrepare()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->notifyChanged()V

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mAcvitePrefrences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    return-void
.end method

.method public setDbOperationCallBack(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBOperationCB:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;

    return-void
.end method

.method public setDisplayStyle(B)V
    .locals 0

    iput-byte p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B

    return-void
.end method

.method public updateButtonStatus()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/DbUpdateItem;->hasNewVersion()Z

    move-result v0

    iget-boolean v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mShowUpdateButton:Z

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mBindView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
