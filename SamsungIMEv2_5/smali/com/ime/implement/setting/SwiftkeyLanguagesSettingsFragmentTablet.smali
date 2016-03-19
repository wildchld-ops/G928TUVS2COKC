.class public Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
.super Landroid/preference/PreferenceFragment;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;,
        Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;
    }
.end annotation


# static fields
.field public static final BASE_AVAILABLE:I = 0x3e8

.field public static final BASE_DOWNLOADED:I = 0x1

.field private static final REQUEST_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SwiftkeyLanguagesSettingsFragmentTablet"

.field private static isChineseInstalled:Z

.field private static isDialogShownState:Z

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

.field private static mTotalLanguageCountPrev:I

.field public static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private final LANGUAGE_SEPERATOR:Ljava/lang/String;

.field VOlanguagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

.field availableCategory:Landroid/preference/PreferenceCategory;

.field languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

.field private mActionDeleteView:Landroid/widget/TextView;

.field private mDefaultEnUS:Z

.field mInputManager:Lcom/ime/framework/common/InputManager;

.field public mIsHandwritingSearch:Z

.field public mIsVOHWRenable:Z

.field public mLanguagePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPhotosClickListener:Landroid/view/View$OnClickListener;

.field mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public mTotalLanguageCount:I

.field private mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

.field private mViewUndo:Landroid/view/View;

.field mainScreen:Landroid/preference/PreferenceScreen;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->isDialogShownState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, ";"

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->LANGUAGE_SEPERATOR:Ljava/lang/String;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->VOlanguagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$9;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$9;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$11;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$11;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateSwiftkeyList()V

    return-void
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateListComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateListFail()V

    return-void
.end method

.method static synthetic access$500()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->volpm:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private deletelangauecount()I
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private deletelanguage()V
    .locals 3

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-direct {v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;-><init>()V

    const v2, 0x7f1000be

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private exitSwiftkeyLanguageSettings(Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getSelectedHandwritingLanguageList()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->isInsertedHandwritingLanguage(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->showHandwritingLanguageSettingDialog(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->isRemovedHandwritingLanguage(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->showHandwritingLanguageSettingDialog(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private getSelectedHandwritingLanguageList()Ljava/lang/StringBuilder;
    .locals 12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ar"

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v7

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v10}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v9

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v3

    const-string v10, "en_GB"

    invoke-virtual {v9, v10}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v2

    new-instance v1, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v1}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    const-string v10, "USA"

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "en_US"

    invoke-virtual {v9, v10}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v10, "en_US"

    invoke-virtual {v2}, Lcom/myscript/atk/rmc/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDefaultEnUS:Z

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/myscript/atk/rmc/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v10, "ar"

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v10, ";"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method private getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$12;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$12;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private isInsertedHandwritingLanguage(Ljava/lang/StringBuilder;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "handwriting_language_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v6, ";"

    invoke-direct {v0, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    move v4, v5

    goto :goto_0
.end method

.method private isRemovedHandwritingLanguage(Ljava/lang/StringBuilder;)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "handwriting_language"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "handwriting_language_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private notifyUpdateSelectedLanguageList()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private resourceManagerStartQuery()V
    .locals 9

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract$Updates;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private showHandwritingLanguageSettingDialog(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v1, 0x7f0d02a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d00b6

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$6;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$6;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$7;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$7;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method private updateListComplete()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList()V

    iget v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTotalLanguageCount:I

    sget v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTotalLanguageCountPrev:I

    sub-int v0, v2, v3

    if-le v0, v4, :cond_0

    const v1, 0x7f0d0162

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    if-ne v0, v4, :cond_1

    const v1, 0x7f0d0163

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0164

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateListFail()V
    .locals 4

    const v0, 0x7f0d015e

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateSwiftkeyList()V
    .locals 5

    const v1, 0x7f0d0161

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iget v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTotalLanguageCount:I

    sput v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTotalLanguageCountPrev:I

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v3, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateVOList()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->VOlanguagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->updateVOLanguagePackManager(Lcom/touchtype_fluency/util/RefreshListener;)V

    return-void
.end method


# virtual methods
.method public notifyVODBListUpdated()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f1000d0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f1000d1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

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

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

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

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v14, "handwriting"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mIsHandwritingSearch:Z

    :goto_0
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v14}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v11}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    const v14, 0x7f030092

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->addPreferencesFromResource(I)V

    const-string v14, "select_swiftkey_language_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mIsVOHWRenable:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "TABLET_MODE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->misTablet:Z

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v14, 0x7f0d0296

    invoke-virtual {v1, v14}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mIsVOHWRenable:Z

    if-eqz v14, :cond_6

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.myscript.atk.rmc.service.sample"

    sget-object v15, Lcom/myscript/atk/rmc/ResourceManagerIntent;->RESOURCE_MANAGER_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v14, v12}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;

    if-nez v14, :cond_5

    new-instance v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRMQueryAsyncHandler:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->resourceManagerStartQuery()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v14}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    sput-object v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mLanguagePreferenceMap:Ljava/util/HashMap;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList(Z)V

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

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

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v14

    if-eqz v14, :cond_b

    if-nez v7, :cond_b

    if-nez v8, :cond_7

    if-eqz v9, :cond_7

    if-nez v10, :cond_b

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->showUseNetworkConnectionsDialog()V

    :cond_8
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.samsung.inputmethod"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    sput-boolean v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->isChineseInstalled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    return-void

    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mIsHandwritingSearch:Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateLPlist()V

    goto :goto_1

    :catch_0
    move-exception v5

    const/4 v14, 0x0

    sput-boolean v14, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->isChineseInstalled:Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->deletelangauecount()I

    move-result v2

    if-lez v2, :cond_0

    const v2, 0x7f0d008b

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0202bd

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v2, 0x2

    const v3, 0x7f0d0151

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0202c1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    return-void
.end method

.method public onFragmentResult(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_0
    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    const/4 v4, 0x0

    sput-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->notifyUpdateSelectedLanguageList()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "allow_app_permission"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v8, "use_network_connection"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v8, "use_network_connection_checkbox"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v8, "first_use_network_connections_execution"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "default_input_method"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mIsHandwritingSearch:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v6

    sput-boolean v7, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->isDialogShownState:Z

    if-le v6, v7, :cond_0

    new-instance v8, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$2;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$2;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    invoke-direct {p0, v8}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->exitSwiftkeyLanguageSettings(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->deletelanguage()V

    goto :goto_0

    :sswitch_2
    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->showUseNetworkConnectionsDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateLPlist()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 8

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;

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

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    sput-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->notifyUpdateSelectedLanguageList()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateLPlist()V

    :cond_3
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->sendSupportLanguage()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->deletelangauecount()I

    move-result v2

    if-lez v2, :cond_0

    const v2, 0x7f0d008b

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0202bd

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v2, 0x2

    const v3, 0x7f0d0151

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0202c1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    :cond_0
    iget-boolean v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->misTablet:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    return-void
.end method

.method public rebuildLanguageList()V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList(Z)V

    goto :goto_0
.end method

.method public rebuildLanguageList(Z)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    if-eqz p1, :cond_1

    const v3, 0x7f030092

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->addPreferencesFromResource(I)V

    :cond_1
    const-string v3, "select_swiftkey_language_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v18, 0x1

    :goto_0
    const-string v3, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_2

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getTotalSupportLanguageList()V

    :cond_3
    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v25

    if-eqz v25, :cond_4

    const-string v3, "allow_app_permission"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string v3, "use_network_connection"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    const-string v3, "default_keyboard_language"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    const-string v3, "0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v28, "INPUT_LANGUAGE"

    const v29, 0x656e4742

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v8, v0, v1}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultLanguage is null. create defaultLanguageID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v3}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v20

    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v27

    const/16 v16, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_7

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/util/LanguagePack;

    const-string v3, "en"

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v14, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_7
    const/16 v24, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTotalLanguageCount:I

    const/16 v23, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/util/LanguagePack;

    if-eqz v10, :cond_a

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v14, :cond_a

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_9
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_a
    sget-boolean v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->isChineseInstalled:Z

    if-eqz v3, :cond_b

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mIsHandwritingSearch:Z

    if-eqz v3, :cond_d

    if-eqz v27, :cond_d

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v26

    if-eqz v26, :cond_8

    invoke-virtual/range {v26 .. v26}, Lcom/myscript/atk/rmc/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    :cond_d
    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mLanguagePreferenceMap:Ljava/util/HashMap;

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_11

    :cond_e
    :goto_3
    return-void

    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    goto/16 :goto_1

    :cond_11
    if-eqz v18, :cond_12

    if-eqz v18, :cond_1a

    if-eqz v7, :cond_1a

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    :goto_4
    if-eqz v2, :cond_13

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v3, v24, 0x1

    invoke-virtual {v2, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->setOrder(I)V

    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v21, :cond_14

    if-nez v22, :cond_14

    if-nez v21, :cond_15

    if-nez v22, :cond_15

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_15
    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v3, :cond_17

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    if-eqz v18, :cond_18

    if-eqz v2, :cond_18

    const-string v3, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {v2, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->setDependency(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTotalLanguageCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mTotalLanguageCount:I

    goto/16 :goto_2

    :cond_19
    new-instance v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    const/4 v3, 0x0

    sget-object v6, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_4

    :cond_1a
    new-instance v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    const/4 v3, 0x0

    sget-object v6, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_4

    :cond_1b
    const/16 v23, 0x1

    move/from16 v0, v24

    add-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->setOrder(I)V

    goto/16 :goto_5

    :cond_1c
    if-nez v23, :cond_1d

    const-string v3, "available_languages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->availableCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->availableCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->updateSupportLanguageListforSwiftkey()V

    goto/16 :goto_3
.end method

.method public sendSupportLanguage()V
    .locals 5

    const/4 v4, -0x2

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getSelectedHandwritingLanguageList()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "handwriting_language_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->setAvailableHWRLanguage()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "handwriting_language_list"

    const-string v3, ""

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public showUseNetworkConnectionsDialog()V
    .locals 15

    const v11, 0x7f0300a3

    const v10, 0x7f0d016d

    const v12, 0x7f0d016e

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%s"

    const v14, 0x7f0d0008

    invoke-virtual {p0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v12, 0x7f100111

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const v12, 0x7f10000d

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v12, "use_network_connection_checkbox"

    const/4 v13, 0x1

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x104000a

    new-instance v13, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$3;

    invoke-direct {v13, p0, v5, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$3;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$4;

    invoke-direct {v13, p0, v5, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$4;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$5;

    invoke-direct {v12, p0, v5, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$5;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateLPlist()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SwiftkeyLanguagesSettingsFragmentTablet"

    const-string v1, "SwiftkeyLanguageSettings.updateLPlist() : No network state."

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v1, 0x7f0d01aa

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mIsVOHWRenable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateVOList()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateSwiftkeyList()V

    goto :goto_0
.end method
