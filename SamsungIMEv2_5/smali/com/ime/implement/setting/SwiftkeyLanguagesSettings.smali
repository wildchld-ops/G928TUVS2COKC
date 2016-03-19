.class public Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "SwiftkeyLanguagesSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SwiftKeySample"

.field private static isDialogShownState:Z

.field static mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field public static mPointerX:I

.field public static mPointerY:I

.field private static mTotalLanguageCountPrev:I

.field public static sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;


# instance fields
.field private final LANGUAGE_SEPERATOR:Ljava/lang/String;

.field VOlanguagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

.field languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

.field private mDefaultEnUS:Z

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsCheckboxDontShowDownloadList:Z

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, ";"

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->LANGUAGE_SEPERATOR:Ljava/lang/String;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->VOlanguagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$5;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$5;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    return-void
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->updateSwiftkeyList()V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->updateListComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->updateListFail()V

    return-void
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    return v0
.end method

.method static synthetic access$402(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    return p1
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z

    return p0
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

.method private deletelanguae()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private exitSwiftkeyLanguageSettings(Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getSelectedHandwritingLanguageList()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isInsertedHandwritingLanguage(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->showHandwritingLanguageSettingDialog(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isRemovedHandwritingLanguage(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->showHandwritingLanguageSettingDialog(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private getListUpdateGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f100087

    return v0
.end method

.method private getListUpdateGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f030052

    return v0
.end method

.method private getSelectedHandwritingLanguageList()Ljava/lang/StringBuilder;
    .locals 12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ar"

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v7

    invoke-static {p0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

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

    iput-boolean v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mDefaultEnUS:Z

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

.method private isInsertedHandwritingLanguage(Ljava/lang/StringBuilder;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "handwriting_language"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$2;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$2;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$3;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$3;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->finish()V

    goto :goto_0
.end method

.method private updateListComplete()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v2, v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget v2, v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    sget v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mTotalLanguageCountPrev:I

    sub-int v0, v2, v3

    if-le v0, v4, :cond_0

    const v1, 0x7f0d0162

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    if-ne v0, v4, :cond_1

    const v1, 0x7f0d0163

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateListFail()V
    .locals 3

    const v0, 0x7f0d015e

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateSwiftkeyList()V
    .locals 4

    const v1, 0x7f0d0161

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget v2, v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    sput v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mTotalLanguageCountPrev:I

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateVOList()V
    .locals 2

    invoke-static {p0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->VOlanguagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->updateVOLanguagePackManager(Lcom/touchtype_fluency/util/RefreshListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    div-int/lit16 v0, v1, 0xff

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mPointerY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mPointerX:I

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public notifyVODBListUpdated()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-direct {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->deletelangauecount()I

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

    return v5
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-boolean v3, v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.spen_usp"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    if-le v1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    sput-boolean v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    new-instance v3, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$1;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-direct {p0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->exitSwiftkeyLanguageSettings(Ljava/lang/Runnable;)V

    sput-boolean v2, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

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

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "default_input_method"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-boolean v8, v8, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v6

    sput-boolean v7, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z

    if-le v6, v7, :cond_0

    new-instance v8, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$10;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$10;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-direct {p0, v8}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->exitSwiftkeyLanguageSettings(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->deletelanguae()V

    goto :goto_0

    :sswitch_2
    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->showUseNetworkConnectionsDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->updateLPlist()V

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
    .locals 3

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->sendSupportLanguage()V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_mobilekeyboard_change_language_popup_excution"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->initSelectedLanguage()V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->deletelangauecount()I

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

    return v5
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v1, v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v1, v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method public rebuildLanguageList()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mSwiftkeyLanguagesSettingsFragment:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    goto :goto_0
.end method

.method public sendSupportLanguage()V
    .locals 5

    const/4 v4, -0x2

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getSelectedHandwritingLanguageList()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "handwriting_language_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->setAvailableHWRLanguage()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "handwriting_language_list"

    const-string v3, ""

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public showListUpdateGuideDialog()V
    .locals 13

    const v12, 0x7f0d017a

    const/4 v11, 0x1

    sget-boolean v9, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getListUpdateGuideLayoutRscId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getListUpdateGuideCheckBoxRscId()I

    move-result v1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0179

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f100086

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d017c

    invoke-virtual {p0, v10}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v9, 0x7f0d017e

    new-instance v10, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$6;

    invoke-direct {v10, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$6;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0d00b5

    new-instance v10, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$7;

    invoke-direct {v10, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$7;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$8;

    invoke-direct {v9, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$8;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v4, :cond_1

    const-string v9, "swiftkey_download_list_checkbox"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v9, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$9;

    invoke-direct {v9, p0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$9;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    sput-boolean v11, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public showUseNetworkConnectionsDialog()V
    .locals 15

    const v11, 0x7f0300a3

    const v10, 0x7f0d016d

    const v12, 0x7f0d016e

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%s"

    const v14, 0x7f0d0008

    invoke-virtual {p0, v14}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v12, 0x7f100111

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

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

    new-instance v13, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$11;

    invoke-direct {v13, p0, v5, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$11;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$12;

    invoke-direct {v13, p0, v5, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$12;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$13;

    invoke-direct {v12, p0, v5, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$13;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateLPlist()V
    .locals 2

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SwiftKeySample"

    const-string v1, "SwiftkeyLanguageSettings.updateLPlist() : No network state."

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0d01aa

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->initRMHelper()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->updateVOList()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->updateSwiftkeyList()V

    goto :goto_0
.end method
