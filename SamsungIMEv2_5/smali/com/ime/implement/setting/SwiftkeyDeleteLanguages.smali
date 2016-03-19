.class public Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;
.super Landroid/app/Activity;
.source "SwiftkeyDeleteLanguages.java"


# static fields
.field private static mDeleteDlg:Landroid/app/AlertDialog;

.field private static mDeletePopup:Z


# instance fields
.field private mAllSelected:Z

.field private final mDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayView:Landroid/widget/ListView;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private final mLPlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenu:Landroid/view/Menu;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field protected mSelectActionBarView:Landroid/view/View;

.field protected mSelectAllButton:Landroid/widget/Button;

.field protected mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

.field protected mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mSelectLanguage:Ljava/lang/String;

.field private mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mSelectallArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectallview:Landroid/widget/ListView;

.field protected mSelectedCountTextView:Landroid/widget/TextView;

.field private final mTotalDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private misTablet:Z

.field private volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/sec/android/inputmethod/menu/PopupList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    return p1
.end method

.method static synthetic access$1100()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    return v0
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    return-object v0
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$6;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$6;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private makeDeletePopup()V
    .locals 7

    const v4, 0x7f0d008b

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d008c

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$7;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$7;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$8;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$8;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$9;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$9;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    const v1, 0x7f0d0165

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    sput-boolean v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0166

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private notifyUpdateSelectedLanguageList()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDoneMenuEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    const v1, 0x7f10014f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method protected allCheckedUpdate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected deselectAllItem()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->clearItems()V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v1, 0x7f100153

    const v2, 0x7f0d008d

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12

    const v11, 0x7f0906a3

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0906a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0906a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0906a4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    invoke-interface {v9}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v9, 0x7f0f0006

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    invoke-virtual {v4, v9, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    invoke-direct {p0, v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a002c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v8, 0x7f1000e3

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v8, 0x7f1000d0

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v8, 0x7f1000d1

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :try_start_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v5

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02071f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v6

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    int-to-float v11, v6

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v2, 0x7f03008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setContentView(I)V

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mRepository:Lcom/ime/framework/repository/Repository;

    const v2, 0x7f0d02f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectLanguage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "TABLET_MODE"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x400

    const/16 v5, 0x400

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setFlags(II)V

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v4, 0x7f030000

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100007

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/inputmethod/menu/PopupList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/sec/android/inputmethod/menu/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/menu/PopupList;->clearItems()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v4, 0x7f100153

    const v5, 0x7f0d008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v4, 0x7f100154

    const v5, 0x7f0d02ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    new-instance v4, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$1;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    new-instance v4, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$2;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/inputmethod/menu/PopupList;->setOnPopupItemClickListener(Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;)V

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_1
    if-eqz v8, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100009

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f10000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f10000b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectLanguage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$3;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z

    const v2, 0x7f1000e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d008d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v4, 0x7f030091

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v17

    const/4 v7, 0x0

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v7

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v2, "languageLongPressed"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mTotalDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_7
    move-object/from16 v14, v16

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    if-eqz v13, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    :cond_9
    new-instance v2, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v4, 0x7f030090

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mListAdapter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v2, 0x7f1000e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0904dc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v3, v2

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mListAdapter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v2, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v2, 0x7f030090

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f1000e6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->selectAllItem()V

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->allCheckedUpdate(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectLanguage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_3
    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->deselectAllItem()V

    goto :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_12
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d02a0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "Delete is Done"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "mDeletingLPList"

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10014f -> :sswitch_1
        0x7f100151 -> :sswitch_1
    .end sparse-switch
.end method

.method protected selectAllItem()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->clearItems()V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v1, 0x7f100154

    const v2, 0x7f0d02ce

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
