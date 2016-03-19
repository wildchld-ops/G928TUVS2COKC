.class public Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
.super Landroid/app/Fragment;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$19;,
        Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$ByteLengthFilter;
    }
.end annotation


# static fields
.field private static final BLANK_WORD:Ljava/lang/String; = "Blank"

.field private static final CHINESE_WORD:Ljava/lang/String; = "Chinese"

.field private static final DYNAMIC_LM_DIR:Ljava/lang/String; = "autotext"

.field private static final EMOJI_WORD:Ljava/lang/String; = "Emoji"

.field private static final JAPANESE_WORD:Ljava/lang/String; = "Japanese"

.field private static final TAG:Ljava/lang/String; = "AutoText"

.field public static mInstance:Lcom/ime/implement/setting/AutoTextSettings;

.field private static mSession:Lcom/touchtype_fluency/Session;


# instance fields
.field public isPharseEmpty:Z

.field public isShortCutEmpty:Z

.field private mAddPopupDialog:Landroid/app/AlertDialog;

.field private mAddPopupOKButton:Landroid/widget/Button;

.field private mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

.field private mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhraseTextView:Landroid/widget/EditText;

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field private mSelectActionBarView:Landroid/view/View;

.field private mShortCutTextView:Landroid/widget/EditText;

.field private mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

.field private mTitleCheckBox:Landroid/widget/CheckBox;

.field private mTitleCheckBoxText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mUserWordListView:Landroid/widget/ListView;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field onAddPopupShowListener:Landroid/content/DialogInterface$OnShowListener;

.field onDismissPopupListener:Landroid/content/DialogInterface$OnDismissListener;

.field private originalShortCutText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    iput-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$3;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$3;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->onAddPopupShowListener:Landroid/content/DialogInterface$OnShowListener;

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$14;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$14;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->onDismissPopupListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->resortWordList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->editUserWord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupOKButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupOKButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBoxText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    return-object v0
.end method

.method static synthetic access$300()Lcom/touchtype_fluency/Session;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getProhibitionShortcutText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->originalShortCutText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getDuplicatedShortcutText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->addUserWord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addUserWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->checkUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->deleteUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->addUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    :goto_2
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v3, "S019"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->addUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private deleteCheckedUserWord()V
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordCheckList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordCheckList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v6}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->removeUserTerms(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "RELOAD_LANGUAGEPACK"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->setSelectionMode(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->finishSelectionMode()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method private editUserWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->deleteUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->updateUserWord(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "RELOAD_LANGUAGEPACK"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_1
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getSeletedUserTerm()Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual/range {v0 .. v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->editUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method

.method private getDuplicatedShortcutText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->checkUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getProhibitionShortcutText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getProhibitionText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v2, ""

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private getProhibitionText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_14

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    const-string v3, "Blank"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Blank"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x4e00

    if-lt v1, v3, :cond_2

    const v3, 0x9fff

    if-le v1, v3, :cond_10

    :cond_2
    const/16 v3, 0x3400

    if-lt v1, v3, :cond_3

    const/16 v3, 0x4d8f

    if-le v1, v3, :cond_10

    :cond_3
    const/high16 v3, 0x20000

    if-lt v1, v3, :cond_4

    const v3, 0x2a6df

    if-le v1, v3, :cond_10

    :cond_4
    const v3, 0x2a700

    if-lt v1, v3, :cond_5

    const v3, 0x2b73f

    if-le v1, v3, :cond_10

    :cond_5
    const v3, 0x2b740

    if-lt v1, v3, :cond_6

    const v3, 0x2b81f

    if-le v1, v3, :cond_10

    :cond_6
    const/16 v3, 0x2e80

    if-lt v1, v3, :cond_7

    const/16 v3, 0x2eff

    if-le v1, v3, :cond_10

    :cond_7
    const/16 v3, 0x2f00

    if-lt v1, v3, :cond_8

    const/16 v3, 0x2fdf

    if-le v1, v3, :cond_10

    :cond_8
    const/16 v3, 0x2ff0

    if-lt v1, v3, :cond_9

    const/16 v3, 0x2fff

    if-le v1, v3, :cond_10

    :cond_9
    const/16 v3, 0x3000

    if-lt v1, v3, :cond_a

    const/16 v3, 0x303f

    if-le v1, v3, :cond_10

    :cond_a
    const/16 v3, 0x31c0

    if-lt v1, v3, :cond_b

    const/16 v3, 0x31ef

    if-le v1, v3, :cond_10

    :cond_b
    const/16 v3, 0x3200

    if-lt v1, v3, :cond_c

    const/16 v3, 0x32ff

    if-le v1, v3, :cond_10

    :cond_c
    const/16 v3, 0x3300

    if-lt v1, v3, :cond_d

    const/16 v3, 0x33ff

    if-le v1, v3, :cond_10

    :cond_d
    const v3, 0xf900

    if-lt v1, v3, :cond_e

    const v3, 0xfaff

    if-le v1, v3, :cond_10

    :cond_e
    const v3, 0xfe30

    if-lt v1, v3, :cond_f

    const v3, 0xfe4f

    if-le v1, v3, :cond_10

    :cond_f
    const v3, 0x2f800

    if-lt v1, v3, :cond_11

    const v3, 0x2fa1f

    if-gt v1, v3, :cond_11

    :cond_10
    const-string v3, "Chinese"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Chinese"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0x3040

    if-lt v1, v3, :cond_12

    const/16 v3, 0x3130

    if-le v1, v3, :cond_13

    :cond_12
    const/16 v3, 0x3190

    if-lt v1, v3, :cond_0

    const/16 v3, 0x31f0

    if-gt v1, v3, :cond_0

    :cond_13
    const-string v3, "Japanese"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Japanese"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isEmojiContain(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "Emoji"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "Emoji"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-object v2
.end method

.method private loadDynamicLM()V
    .locals 9

    new-instance v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$2;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$2;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-static {v4}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getInstance(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "SwiftKey"

    const v7, 0x8000

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "autotext"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    sget-object v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    sput-object v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    :cond_1
    const-string v4, "Samsung_nolimit_flow_parameter_193196a"

    invoke-static {v4}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v4

    sput-object v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "autotext.lm"

    const/4 v6, 0x4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Lcom/touchtype_fluency/ModelSetDescription$Type;->OTHER_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    sget-object v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v4, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v4, "AutoText"

    const-string v5, "Invalid SDK license key specified in AutoTextSettings"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v4, "AutoText"

    const-string v5, "Error loading language models in AutoTextSettings"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populateWordList()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    sget-object v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v1, v2, v3, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->listUserTerms(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private resortWordList()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->setHeaderIndex()V

    return-void
.end method

.method private showInputMethodIfRequired()V
    .locals 4

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$11;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$11;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$12;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$12;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateUserWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->addUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    :goto_2
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->addUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkUserWord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SamsungIME"

    const-string v6, "<<checkUserWord>> find operation by key"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteUserWord(Ljava/lang/String;)V
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v6}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->removeUserTerms(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteUserWord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v8}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v8}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/Term;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "SamsungIME"

    const-string v9, "<<deleteUserWord>> delete operation by key"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v9, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v10, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v10}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v10

    sget-object v11, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v8, v7, v9, v10, v11}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->removeUserTerms(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/4 v3, 0x1

    :cond_1
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public finishSelectionMode()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSplitRatioController()Lcom/ime/implement/setting/SettingsSplitRatioController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setEndableHomeButton(Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordCheckList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->notifyDataSetChanged()V

    return-void
.end method

.method public getmSelectActionBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    return-object v0
.end method

.method protected handleGlobalLayoutListener()V
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mPhraseTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {p1, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setOnKeyBackPressedListener(Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;)V

    return-void
.end method

.method public onBack()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->finishSelectionMode()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->setSelectionMode(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setOnKeyBackPressedListener(Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "TABLET_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->misTablet:Z

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const v5, 0x7f10014c

    const v4, 0x7f10014e

    const v3, 0x7f10014d

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getCheckListSize()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x1

    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->loadDynamicLM()V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v2, 0x7f1000ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mUserWordListView:Landroid/widget/ListView;

    new-instance v1, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030006

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mUserWordListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v1}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$1;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mainView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mUserWordListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setOnKeyBackPressedListener(Lcom/sec/android/inputmethod/SamsungKeypadSettings$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

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
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->showAddPopupDialog(Landroid/view/View;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->startSelectionMode()V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->deleteCheckedUserWord()V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f10014c -> :sswitch_0
        0x7f10014d -> :sswitch_2
        0x7f10014e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->shutDown()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->showInputMethodIfRequired()V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->populateWordList()V

    :cond_0
    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->misTablet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    :cond_1
    return-void
.end method

.method public setAddPopupOkButtonEnable()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnableOKButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupOKButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setTitleCheckBoxChecked(Z)V
    .locals 4

    const-wide/16 v2, 0x78

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$17;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$17;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$18;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$18;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setmSelectActionBarView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    return-void
.end method

.method public showAddPopupDialog(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f030005

    invoke-virtual {v6, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d02e6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-nez p1, :cond_1

    const v6, 0x7f0d02f4

    new-instance v8, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$5;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$5;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const/high16 v6, 0x1040000

    new-instance v8, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$7;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$7;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f100011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    const v6, 0x7f100012

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mPhraseTextView:Landroid/widget/EditText;

    const/16 v4, 0x28

    new-array v2, v9, [Landroid/text/InputFilter;

    new-instance v6, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$ByteLengthFilter;

    const-string v8, "MS949"

    invoke-direct {v6, p0, v4, v8}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$ByteLengthFilter;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;ILjava/lang/String;)V

    aput-object v6, v2, v7

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mPhraseTextView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-object v10, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->originalShortCutText:Ljava/lang/String;

    if-eqz p1, :cond_4

    const v6, 0x7f100017

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    move-object v6, v5

    :goto_1
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    :goto_2
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mPhraseTextView:Landroid/widget/EditText;

    const v6, 0x7f100018

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v7, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    iput-boolean v7, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->originalShortCutText:Ljava/lang/String;

    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;

    new-instance v7, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;

    invoke-direct {v7, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mPhraseTextView:Landroid/widget/EditText;

    new-instance v7, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;

    invoke-direct {v7, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->onAddPopupShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->onDismissPopupListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->showInputMethodIfRequired()V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10;

    invoke-direct {v7, p0, v3, p1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const v6, 0x7f0d02c2

    new-instance v8, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$6;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$6;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_2
    const-string v6, ""

    goto/16 :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    :cond_4
    iput-boolean v9, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    iput-boolean v9, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    goto :goto_3
.end method

.method public startSelectionMode()V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSplitRatioController()Lcom/ime/implement/setting/SettingsSplitRatioController;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setEndableHomeButton(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getSelectionMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4, v8}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->setSelectionMode(Z)V

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v5, 0x7f10001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBoxText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v5, 0x7f10001b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v5, 0x7f10001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    const v5, 0x7f10001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getCheckListSize()I

    move-result v4

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->setTitleCheckBoxChecked(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    const-string v1, ""

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getCheckListSize()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getCheckListSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBoxText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$15;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$15;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;

    invoke-direct {v5, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->notifyDataSetChanged()V

    return-void

    :cond_2
    invoke-virtual {p0, v7}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->setTitleCheckBoxChecked(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
