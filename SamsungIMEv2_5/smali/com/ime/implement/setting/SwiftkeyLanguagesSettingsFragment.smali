.class public Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SwiftkeyLanguagesSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;
    }
.end annotation


# static fields
.field public static final BASE_AVAILABLE:I = 0x3e8

.field public static final BASE_DOWNLOADED:I = 0x1

.field private static final REQUEST_CODE:I

.field private static isChineseInstalled:Z

.field private static mDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mPopupWindow:Landroid/widget/PopupWindow;

.field public static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mActionDeleteView:Landroid/widget/TextView;

.field mInputManager:Lcom/ime/framework/common/InputManager;

.field public mIsHandwritingSearch:Z

.field public mIsVOHWRenable:Z

.field public mLanguagePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ime/implement/setting/SwiftkeyLanguagePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPhotosClickListener:Landroid/view/View$OnClickListener;

.field mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public mTotalLanguageCount:I

.field private mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

.field private mViewUndo:Landroid/view/View;

.field mainScreen:Landroid/preference/PreferenceScreen;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private salesCode:Ljava/lang/String;

.field private settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

.field private volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->salesCode:Ljava/lang/String;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private notifyUpdateSelectedLanguageList()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private resourceManagerStartQuery()V
    .locals 9

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract$Updates;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Delete is Done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const-string v4, "mDeletingLPList"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPhoneModel()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isNoteModel()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_4
    const/4 v4, 0x0

    sput-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f1000d0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f1000d1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02071f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v14, "handwriting"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    :goto_0
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v14}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v11}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    const v14, 0x7f030092

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->addPreferencesFromResource(I)V

    const-string v14, "select_swiftkey_language_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "TABLET_MODE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x400

    const/16 v16, 0x400

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v14, 0x7f0d0296

    invoke-virtual {v1, v14}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    if-eqz v14, :cond_7

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.myscript.atk.rmc.service.sample"

    sget-object v15, Lcom/myscript/atk/rmc/ResourceManagerIntent;->RESOURCE_MANAGER_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14, v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    if-nez v14, :cond_6

    new-instance v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->resourceManagerStartQuery()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v14}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    sput-object v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "allow_app_permission"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v14, "use_network_connection"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v14, "use_network_connection_checkbox"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v14, "first_use_network_connections_execution"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v14

    if-eqz v14, :cond_c

    if-nez v7, :cond_c

    if-nez v8, :cond_8

    if-eqz v9, :cond_8

    if-nez v10, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->showUseNetworkConnectionsDialog()V

    :cond_9
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.samsung.inputmethod"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    sput-boolean v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_2
    return-void

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->updateLPlist()V

    goto :goto_1

    :catch_0
    move-exception v5

    const/4 v14, 0x0

    sput-boolean v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 8

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    sput-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    :cond_3
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public rebuildLanguageList(Z)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f030092

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->addPreferencesFromResource(I)V

    :cond_1
    const-string v2, "select_swiftkey_language_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    const/16 v16, 0x1

    :goto_0
    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_2

    if-nez v16, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getTotalSupportLanguageList()V

    :cond_3
    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v23

    if-eqz v23, :cond_4

    const-string v2, "allow_app_permission"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v2, "use_network_connection"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string v2, "default_keyboard_language"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    const-string v2, "0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "INPUT_LANGUAGE"

    const v28, 0x656e4742

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultLanguage is null. create defaultLanguageID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v19

    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v25

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_7

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    const-string v2, "en"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v14, v3

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v12, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_7
    const/16 v22, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    if-eqz v8, :cond_a

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v12, :cond_a

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_9
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_a
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v17

    const-string v2, "my"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "z1"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "lo"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "km"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const-string v2, "MYM"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "CAM"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "LAO"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "THL"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "THW"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_c
    sget-boolean v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    if-eqz v2, :cond_d

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    if-eqz v2, :cond_f

    if-eqz v25, :cond_f

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v24

    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/myscript/atk/rmc/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_f
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    if-eqz v2, :cond_16

    const/4 v1, 0x0

    if-eqz v16, :cond_10

    if-eqz v16, :cond_1a

    if-eqz v5, :cond_1a

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    :goto_3
    if-eqz v1, :cond_11

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, v22, 0x1

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->setOrder(I)V

    :goto_4
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSupportedLanguage(I)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->setEnabled(Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v20, :cond_12

    if-nez v21, :cond_12

    if-nez v20, :cond_13

    if-nez v21, :cond_13

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_13
    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v4, v6, v0}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    if-eqz v16, :cond_16

    if-eqz v1, :cond_16

    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->setDependency(Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    goto/16 :goto_2

    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    goto/16 :goto_1

    :cond_19
    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_3

    :cond_1a
    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_3

    :cond_1b
    move/from16 v0, v22

    add-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->setOrder(I)V

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateSupportLanguageListforSwiftkey()V

    :cond_1d
    return-void
.end method
