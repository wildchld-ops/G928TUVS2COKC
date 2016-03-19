.class public Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;
.super Landroid/app/Fragment;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"


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

.field private mParentActivity:Landroid/app/Activity;

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

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Lcom/sec/android/inputmethod/menu/PopupList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletePopup:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z

    return p1
.end method

.method static synthetic access$1100()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeleteDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->setDoneMenuEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallview:Landroid/widget/ListView;

    return-object v0
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$4;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$5;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$5;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$6;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$6;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private makeDeletePopup()V
    .locals 7

    const v4, 0x7f0d008b

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletePopup:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d008c

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$7;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$7;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$9;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$9;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    const v1, 0x7f0d0165

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    sput-boolean v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletePopup:Z

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeleteDlg:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0166

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDoneMenuEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mMenu:Landroid/view/Menu;

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

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected deselectAllItem()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->clearItems()V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v1, 0x7f100153

    const v2, 0x7f0d008d

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSplitRatioController()Lcom/ime/implement/setting/SettingsSplitRatioController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setEndableHomeButton(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mMenu:Landroid/view/Menu;

    invoke-interface {v7}, Landroid/view/Menu;->clear()V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v7, 0x7f0f0006

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mMenu:Landroid/view/Menu;

    invoke-virtual {v3, v7, v8}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-direct {p0, v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->setDoneMenuEnabled(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mainView:Landroid/view/View;

    const v7, 0x7f1000e3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mainView:Landroid/view/View;

    const v7, 0x7f1000d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mainView:Landroid/view/View;

    const v7, 0x7f1000d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :try_start_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x1

    int-to-float v9, v4

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02071f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x1

    int-to-float v9, v5

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x1

    int-to-float v9, v5

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->setDoneMenuEnabled(Z)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f03008f

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mainView:Landroid/view/View;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->setHasOptionsMenu(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const v2, 0x7f0d02f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectLanguage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "TABLET_MODE"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->misTablet:Z

    if-eqz v9, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v2, ""

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v4, 0x7f030000

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100007

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/inputmethod/menu/PopupList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5}, Lcom/sec/android/inputmethod/menu/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/menu/PopupList;->clearItems()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v4, 0x7f100153

    const v5, 0x7f0d008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v4, 0x7f100154

    const v5, 0x7f0d02ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllButton:Landroid/widget/Button;

    new-instance v4, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    new-instance v4, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/inputmethod/menu/PopupList;->setOnPopupItemClickListener(Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;)V

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_1
    if-eqz v9, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100009

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f10000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v4, 0x7f10000b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectLanguage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletePopup:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mainView:Landroid/view/View;

    const v4, 0x7f1000e4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallview:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d008d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    const v5, 0x7f030091

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v2, v4, v5, v6, v0}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallview:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallview:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallview:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallview:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v17

    const/4 v8, 0x0

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v8

    :cond_5
    const-string v13, ""

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->misTablet:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v2, "languageLongPressed"

    const-string v4, ""

    invoke-virtual {v7, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_6
    :goto_0
    const/4 v14, 0x0

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_8
    move-object/from16 v14, v16

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v2, "languageLongPressed"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    if-eqz v13, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    :cond_b
    new-instance v2, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    const v5, 0x7f030090

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v2, v4, v5, v6, v0}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mListAdapter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mainView:Landroid/view/View;

    const v4, 0x7f1000e5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0904dc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v3, v2

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mListAdapter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v2, 0x7f030090

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f1000e6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v14}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->selectAllItem()V

    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->allCheckedUpdate(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectLanguage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mainView:Landroid/view/View;

    return-object v2

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->deselectAllItem()V

    goto :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

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

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllButton:Landroid/widget/Button;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_12
    if-eqz v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d02a0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onDetach()V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSplitRatioController()Lcom/ime/implement/setting/SettingsSplitRatioController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setEndableHomeButton(Z)V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->deleteLanguages(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10014f -> :sswitch_1
        0x7f100151 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method protected selectAllItem()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->clearItems()V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;

    const v1, 0x7f100154

    const v2, 0x7f0d02ce

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
