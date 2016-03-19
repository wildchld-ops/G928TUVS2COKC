.class public Lcom/ime/implement/setting/AutoTextSettings;
.super Landroid/app/Activity;
.source "AutoTextSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/AutoTextSettings$21;,
        Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;
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

.field private mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

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

.field private mFocusedCheckBox:Landroid/widget/CheckBox;

.field private mFocusedPositionCheckBox:I

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsSelectionModeByOnKey:Z

.field private mIsTabletMode:Z

.field private mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

.field private mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private mPhraseTextView:Landroid/widget/EditText;

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field private mSelectActionBarView:Landroid/view/View;

.field private mShortCutTextView:Landroid/widget/EditText;

.field private mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

.field private mTitleCheckBox:Landroid/widget/CheckBox;

.field private mTitleCheckBoxText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mUserWordListView:Landroid/widget/ListView;

.field onAddPopupShowListener:Landroid/content/DialogInterface$OnShowListener;

.field onDismissPopupListener:Landroid/content/DialogInterface$OnDismissListener;

.field private originalShortCutText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->isShortCutEmpty:Z

    iput-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->isPharseEmpty:Z

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettings$6;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettings$6;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettings$7;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettings$7;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettings$15;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettings$15;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->onAddPopupShowListener:Landroid/content/DialogInterface$OnShowListener;

    new-instance v0, Lcom/ime/implement/setting/AutoTextSettings$16;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoTextSettings$16;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->onDismissPopupListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ime/implement/setting/AutoTextSettings;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettings;->getProhibitionShortcutText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/ime/implement/setting/AutoTextSettings;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedPositionCheckBox:I

    return p1
.end method

.method static synthetic access$1100(Lcom/ime/implement/setting/AutoTextSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->originalShortCutText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettings;->getDuplicatedShortcutText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettings;->addUserWord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettings;->editUserWord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupOKButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/ime/implement/setting/AutoTextSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupOKButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ime/implement/setting/AutoTextSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mIsTabletMode:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/AutoTextSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mIsSelectionModeByOnKey:Z

    return v0
.end method

.method static synthetic access$302(Lcom/ime/implement/setting/AutoTextSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mIsSelectionModeByOnKey:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettings;->toggleFocusedCheckBox()V

    return-void
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/AutoTextSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettings;->setPressedSelectedItem(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettings;->resortWordList()V

    return-void
.end method

.method static synthetic access$700()Lcom/touchtype_fluency/Session;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$902(Lcom/ime/implement/setting/AutoTextSettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    return-object p1
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
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettings;->checkUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettings;->deleteUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->addUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    :goto_2
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v3, "S019"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

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
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

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

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

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

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v6}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->removeUserTerms(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "RELOAD_LANGUAGEPACK"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->setSelectionMode(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->finishSelectionMode()V

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

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettings;->deleteUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/AutoTextSettings;->updateUserWord(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

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
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getSeletedUserTerm()Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

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

    invoke-virtual {p0, p1, v1}, Lcom/ime/implement/setting/AutoTextSettings;->checkUserWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getProhibitionShortcutText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettings;->getProhibitionText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v3, ""

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method private getProhibitionText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_14

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    const-string v4, "Blank"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Blank"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x4e00

    if-lt v1, v4, :cond_2

    const v4, 0x9fff

    if-le v1, v4, :cond_10

    :cond_2
    const/16 v4, 0x3400

    if-lt v1, v4, :cond_3

    const/16 v4, 0x4d8f

    if-le v1, v4, :cond_10

    :cond_3
    const/high16 v4, 0x20000

    if-lt v1, v4, :cond_4

    const v4, 0x2a6df

    if-le v1, v4, :cond_10

    :cond_4
    const v4, 0x2a700

    if-lt v1, v4, :cond_5

    const v4, 0x2b73f

    if-le v1, v4, :cond_10

    :cond_5
    const v4, 0x2b740

    if-lt v1, v4, :cond_6

    const v4, 0x2b81f

    if-le v1, v4, :cond_10

    :cond_6
    const/16 v4, 0x2e80

    if-lt v1, v4, :cond_7

    const/16 v4, 0x2eff

    if-le v1, v4, :cond_10

    :cond_7
    const/16 v4, 0x2f00

    if-lt v1, v4, :cond_8

    const/16 v4, 0x2fdf

    if-le v1, v4, :cond_10

    :cond_8
    const/16 v4, 0x2ff0

    if-lt v1, v4, :cond_9

    const/16 v4, 0x2fff

    if-le v1, v4, :cond_10

    :cond_9
    const/16 v4, 0x3000

    if-lt v1, v4, :cond_a

    const/16 v4, 0x303f

    if-le v1, v4, :cond_10

    :cond_a
    const/16 v4, 0x31c0

    if-lt v1, v4, :cond_b

    const/16 v4, 0x31ef

    if-le v1, v4, :cond_10

    :cond_b
    const/16 v4, 0x3200

    if-lt v1, v4, :cond_c

    const/16 v4, 0x32ff

    if-le v1, v4, :cond_10

    :cond_c
    const/16 v4, 0x3300

    if-lt v1, v4, :cond_d

    const/16 v4, 0x33ff

    if-le v1, v4, :cond_10

    :cond_d
    const v4, 0xf900

    if-lt v1, v4, :cond_e

    const v4, 0xfaff

    if-le v1, v4, :cond_10

    :cond_e
    const v4, 0xfe30

    if-lt v1, v4, :cond_f

    const v4, 0xfe4f

    if-le v1, v4, :cond_10

    :cond_f
    const v4, 0x2f800

    if-lt v1, v4, :cond_11

    const v4, 0x2fa1f

    if-gt v1, v4, :cond_11

    :cond_10
    const-string v4, "Chinese"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Chinese"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    const/16 v4, 0x3040

    if-lt v1, v4, :cond_12

    const/16 v4, 0x3130

    if-le v1, v4, :cond_13

    :cond_12
    const/16 v4, 0x3190

    if-lt v1, v4, :cond_0

    const/16 v4, 0x31f0

    if-gt v1, v4, :cond_0

    :cond_13
    const-string v4, "Japanese"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Japanese"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isEmojiContain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "Emoji"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "Emoji"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-object v3
.end method

.method private loadDynamicLM()V
    .locals 10

    new-instance v5, Lcom/ime/implement/setting/AutoTextSettings$5;

    invoke-direct {v5, p0}, Lcom/ime/implement/setting/AutoTextSettings$5;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-static {v5}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getInstance(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "SwiftKey"

    const v8, 0x8000

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "autotext"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    sget-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    sput-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    :cond_1
    const-string v5, "Samsung_nolimit_flow_parameter_193196a"

    invoke-static {v5}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v5

    sput-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "autotext.lm"

    const/4 v7, 0x4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    sget-object v9, Lcom/touchtype_fluency/ModelSetDescription$Type;->OTHER_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;
    :try_end_1
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    :try_start_2
    sget-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v5, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_2
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v5, "AutoText"

    const-string v6, "Invalid SDK license key specified in AutoTextSettings"

    invoke-static {v5, v6}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V
    :try_end_3
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_2
    move-exception v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_1

    :catch_5
    move-exception v4

    goto :goto_1
.end method

.method private populateWordList()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    sget-object v4, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

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
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->setHeaderIndex()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v3, "Caution! ArrayIndexOutOfBoundsException occured from resortWordList"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setPressedSelectedItem(Z)V
    .locals 5

    const v4, 0x7f100015

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, v2, v3

    if-lez v0, :cond_0

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private toggleFocusedCheckBox()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedPositionCheckBox:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/AutoTextSettings;->setTitleCheckBoxChecked(Z)V

    :cond_2
    :goto_1
    const-string v0, ""

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mFocusedPositionCheckBox:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v2

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/ime/implement/setting/AutoTextSettings;->setTitleCheckBoxChecked(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
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
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-static {p2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->addUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    :goto_2
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

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
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

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
    .locals 9

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v6}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v6}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SamsungIME"

    const-string v7, "<<checkUserWord>> find operation by key"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteUserWord(Ljava/lang/String;)V
    .locals 9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v7, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v7}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->removeUserTerms(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
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
    .locals 13

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v9}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v9, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v9}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v9

    invoke-virtual {v9}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v9

    invoke-virtual {v9}, Lcom/touchtype_fluency/Term;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "SamsungIME"

    const-string v10, "<<deleteUserWord>> delete operation by key"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v9, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    iget-object v10, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordListener:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v11, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v11}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v11

    sget-object v12, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->removeUserTerms(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
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
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getmSelectActionBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    return-object v0
.end method

.method protected handleGlobalLayoutListener()V
    .locals 3

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->finish()V

    sget-object v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const v4, 0x7f0906a3

    const/4 v3, -0x2

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09069f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03006a

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettings;->loadDynamicLM()V

    const v1, 0x7f1000ad

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    new-instance v1, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030006

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/ime/implement/setting/AutoTextSettings;)V

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSupportLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v1}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "TABLET_MODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mIsTabletMode:Z

    :cond_1
    new-instance v1, Lcom/ime/implement/setting/AutoTextSettings$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettings$1;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    iput-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    new-instance v2, Lcom/ime/implement/setting/AutoTextSettings$2;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/AutoTextSettings$2;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    new-instance v2, Lcom/ime/implement/setting/AutoTextSettings$3;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/AutoTextSettings$3;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    new-instance v2, Lcom/ime/implement/setting/AutoTextSettings$4;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/AutoTextSettings$4;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f10014c

    const v5, 0x7f10014e

    const v4, 0x7f10014d

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v2

    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mUserWordListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->finishSelectionMode()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->setSelectionMode(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/AutoTextSettings;->showAddPopupDialog(Landroid/view/View;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->startSelectionMode()V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettings;->deleteCheckedUserWord()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->finish()V

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

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->shutDown()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mMyWordList:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->startUp()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoTextSettings;->populateWordList()V

    :cond_0
    return-void
.end method

.method public setAddPopupOkButtonEnable()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->isPharseEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->isShortCutEmpty:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnableOKButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupOKButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setTitleCheckBoxChecked(Z)V
    .locals 4

    const-wide/16 v2, 0x78

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettings$19;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettings$19;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettings$20;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettings$20;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setmSelectActionBarView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    return-void
.end method

.method public showAddPopupDialog(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f030005

    invoke-virtual {v6, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d02e6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-nez p1, :cond_2

    const v6, 0x7f0d02f4

    new-instance v8, Lcom/ime/implement/setting/AutoTextSettings$8;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/AutoTextSettings$8;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const/high16 v6, 0x1040000

    new-instance v8, Lcom/ime/implement/setting/AutoTextSettings$10;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/AutoTextSettings$10;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f100011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    const v6, 0x7f100012

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mPhraseTextView:Landroid/widget/EditText;

    const/16 v4, 0x27

    new-array v2, v9, [Landroid/text/InputFilter;

    new-instance v6, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;

    const-string v8, "MS949"

    invoke-direct {v6, p0, v4, v8}, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;-><init>(Lcom/ime/implement/setting/AutoTextSettings;ILjava/lang/String;)V

    aput-object v6, v2, v7

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mPhraseTextView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-object v10, p0, Lcom/ime/implement/setting/AutoTextSettings;->originalShortCutText:Ljava/lang/String;

    if-eqz p1, :cond_5

    const v6, 0x7f100017

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    move-object v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    :goto_3
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/AutoTextSettings;->mPhraseTextView:Landroid/widget/EditText;

    const v6, 0x7f100018

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v7, p0, Lcom/ime/implement/setting/AutoTextSettings;->isShortCutEmpty:Z

    iput-boolean v7, p0, Lcom/ime/implement/setting/AutoTextSettings;->isPharseEmpty:Z

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->originalShortCutText:Ljava/lang/String;

    :cond_1
    :goto_4
    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    new-instance v7, Lcom/ime/implement/setting/AutoTextSettings$11;

    invoke-direct {v7, p0}, Lcom/ime/implement/setting/AutoTextSettings$11;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mPhraseTextView:Landroid/widget/EditText;

    new-instance v7, Lcom/ime/implement/setting/AutoTextSettings$12;

    invoke-direct {v7, p0}, Lcom/ime/implement/setting/AutoTextSettings$12;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/ime/implement/setting/AutoTextSettings;->onAddPopupShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/ime/implement/setting/AutoTextSettings;->onDismissPopupListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mShortCutTextView:Landroid/widget/EditText;

    new-instance v7, Lcom/ime/implement/setting/AutoTextSettings$13;

    invoke-direct {v7, p0}, Lcom/ime/implement/setting/AutoTextSettings$13;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/ime/implement/setting/AutoTextSettings$14;

    invoke-direct {v7, p0, v3, p1}, Lcom/ime/implement/setting/AutoTextSettings$14;-><init>(Lcom/ime/implement/setting/AutoTextSettings;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2
    const v6, 0x7f0d02c2

    new-instance v8, Lcom/ime/implement/setting/AutoTextSettings$9;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/AutoTextSettings$9;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_3
    const-string v6, ""

    goto/16 :goto_2

    :cond_4
    move v6, v7

    goto/16 :goto_3

    :cond_5
    iput-boolean v9, p0, Lcom/ime/implement/setting/AutoTextSettings;->isShortCutEmpty:Z

    iput-boolean v9, p0, Lcom/ime/implement/setting/AutoTextSettings;->isPharseEmpty:Z

    goto :goto_4
.end method

.method public startSelectionMode()V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getSelectionMode()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5, v9}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->setSelectionMode(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/ime/implement/setting/AutoTextSettings;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030007

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    invoke-virtual {v3, v8, v8}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    const v6, 0x7f10001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    const v6, 0x7f10001b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    const v6, 0x7f10001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mSelectActionBarView:Landroid/view/View;

    const v6, 0x7f10001a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v5

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v6}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v9}, Lcom/ime/implement/setting/AutoTextSettings;->setTitleCheckBoxChecked(Z)V

    :goto_0
    const-string v1, ""

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v5

    if-lez v5, :cond_4

    iget-boolean v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mIsTabletMode:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v7}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/ime/implement/setting/AutoTextSettings$17;

    invoke-direct {v5, p0}, Lcom/ime/implement/setting/AutoTextSettings$17;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/ime/implement/setting/AutoTextSettings$18;

    invoke-direct {v6, p0}, Lcom/ime/implement/setting/AutoTextSettings$18;-><init>(Lcom/ime/implement/setting/AutoTextSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b008e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/AutoTextSettings;->setTitleCheckBoxChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
