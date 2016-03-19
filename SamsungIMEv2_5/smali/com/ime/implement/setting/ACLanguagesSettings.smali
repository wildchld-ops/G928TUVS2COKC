.class public Lcom/ime/implement/setting/ACLanguagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "ACLanguagesSettings.java"


# static fields
.field private static final AVAILABLE_ORDER:I = 0x3e8

.field private static final DOWNLOAD_AVAILABLE:I = 0x0

.field private static final DOWNLOAD_COMPLETE:I = 0x1

.field private static final DOWNLOAD_COMPLETE_OREDR:I = 0x0

.field private static final DOWNLOAD_ING:I = 0x2

.field private static final KL_DELETE_ACTIVITY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"

.field private static final UPDATE_AVAILABLE:I = 0x3

.field private static final WILL_BE_DOWNLOAD:I = 0x4


# instance fields
.field private mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

.field public mAppointedDownloadLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemNumber:I

.field public mDownloadLanguageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public mDownloadedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public mDownloadingLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsCheckboxDontShowDownloadList:Z

.field public mIsConnected:Z

.field mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/implement/setting/ACLanguagesSettingsPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ime/implement/setting/ACLanguagesSettingsPreference;",
            ">;"
        }
    .end annotation
.end field

.field public mPreloadedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSupportedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field mainScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/ACLanguagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->showChinaModeTOSDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/ACLanguagesSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    return v0
.end method

.method static synthetic access$102(Lcom/ime/implement/setting/ACLanguagesSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/ACLanguagesSettings;)Lcom/ime/framework/acmanager/ACDownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method

.method private deletelanguae()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/ime/implement/setting/ACDeleteLanguages;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getLanguageList()V
    .locals 8

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    const/16 v3, 0x100

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v3

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadLanguageIdList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getSupportedLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getDownloadableLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getDownloadedLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getDownloadingLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getUpdateableLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/ime/framework/acmanager/ACDownloadManager;->getAppointedDownloadLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-void
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

.method private isLanguageDeleteState()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    iget v5, v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    iget v5, v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showChinaModeTOSDialog()V
    .locals 4

    invoke-static {}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->getInstance()Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    move-result-object v1

    new-instance v2, Lcom/ime/implement/setting/ACLanguagesSettings$1;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/ACLanguagesSettings$1;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->getTosDialog(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;Z)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addCurrentDownloadingListener(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method addNewDownloadableLanguageIntoDownloadableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewDownloadedLanguageIntoDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewDownloadingLanguageIntoDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewUpdateableLanguageIntoUpdateableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cancelDownloadForFrench(I)V
    .locals 5

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateCancelState()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v3}, Lcom/ime/framework/acmanager/ACDownloadManager;->stopProgressBarThread()V

    :cond_3
    return-void
.end method

.method public downloadFrenchLanguage(ILjava/lang/String;Z)V
    .locals 9

    const/4 v8, -0x1

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1}, Lcom/ime/framework/acmanager/ACDownloadManager;->download(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v3}, Lcom/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v3}, Lcom/ime/framework/acmanager/ACDownloadManager;->dummyDownload(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v6

    if-ne v6, p1, :cond_3

    if-eqz p3, :cond_4

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getLanguageId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v8, :cond_3

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1}, Lcom/ime/framework/acmanager/ACDownloadManager;->download(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->setUpdateState(IZ)V

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v3}, Lcom/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    goto :goto_0
.end method

.method public getCheckedItemNumber()I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mCheckedItemNumber:I

    return v0
.end method

.method public getKeyByLanguageId(I)Ljava/lang/String;
    .locals 10

    const-string v2, ""

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    if-ne p1, v6, :cond_0

    const-string v6, "0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getXt9LanguageId(I)I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->getXt9LanguageId(I)I

    move-result v0

    return v0
.end method

.method public isAlreadyDownloading(I)Z
    .locals 5

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v3

    if-eq v3, p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v13, "languageIdList"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_0
    const/4 v7, -0x1

    const-string v13, "com.sec.android.inputmethod_preferences"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v12

    if-nez v9, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_3

    const/high16 v13, 0x66720000

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v13

    if-ne v7, v13, :cond_7

    const/4 v5, 0x0

    const v13, 0x66724652

    if-ne v8, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const v14, 0x66724341

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_2
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ime/implement/setting/ACLanguagesSettings;->removeDownloadedLanguageFromDownloadedLanguageList(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ime/implement/setting/ACLanguagesSettings;->addNewDownloadableLanguageIntoDownloadableLanguageList(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v13, v7}, Lcom/ime/framework/acmanager/ACDownloadManager;->deleteLanguage(I)V

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/ime/implement/setting/ACLanguagesSettings;->getKeyByLanguageId(I)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    :cond_3
    :goto_4
    const/4 v4, 0x0

    :goto_5
    array-length v13, v12

    if-ge v4, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget-object v14, v12, v4

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/ime/framework/engine/InputEngineManager;->getXt9LanguageId(I)I

    move-result v13

    if-ne v13, v7, :cond_4

    const-string v13, "0x%08x"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v16, v12, v4

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/common/Language;->getId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "0x%08x"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v16, v12, v4

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/common/Language;->getId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v1, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    const v13, 0x66724341

    if-ne v8, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const v14, 0x66724652

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ime/implement/setting/ACLanguagesSettings;->removeDownloadedLanguageFromDownloadedLanguageList(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ime/implement/setting/ACLanguagesSettings;->addNewDownloadableLanguageIntoDownloadableLanguageList(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v13, v7}, Lcom/ime/framework/acmanager/ACDownloadManager;->deleteLanguage(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/ime/implement/setting/ACLanguagesSettings;->getKeyByLanguageId(I)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v13, "ACDownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onActivityResult after mDownloadableLanguageList : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "ACDownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onActivityResult after mDownloadedLanguageList : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "ACDownloadManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onActivityResult after mUpdateableLanguageList : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f0300a8

    invoke-virtual {p0, v5}, Lcom/ime/implement/setting/ACLanguagesSettings;->addPreferencesFromResource(I)V

    const-string v5, "select_language_list"

    invoke-virtual {p0, v5}, Lcom/ime/implement/setting/ACLanguagesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ime/framework/acmanager/ACDownloadManager;->newInstance(Landroid/content/Context;)Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v5}, Lcom/ime/framework/acmanager/ACDownloadManager;->getACManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v5}, Lcom/ime/framework/acmanager/ACDownloadManager;->start()V

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadLanguageIdList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceList:Ljava/util/List;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    const-string v5, "downloaded"

    invoke-virtual {p0, v5, v6}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "downloadable"

    invoke-virtual {p0, v5, v6}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "updateable"

    invoke-virtual {p0, v5, v6}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "ACDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate after mDownloadableLanguageList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ACDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate after mDownloadedLanguageList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ACDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate after mUpdateableLanguageList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ACDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate after mAppointedDownloadLanguageList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string v5, "first_swiftkey_download_list_execution"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "swiftkey_download_list_execution"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "ACDownloadManager"

    const-string v6, "ACChineseDictionaryManager hasn\'t init"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/ime/framework/util/Utils;->isChinaMainlandBinaryByCSC()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->isTosAccept()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->showChinaModeLegalInformationDialog()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-static {}, Lcom/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->showListUpdateGuideDialog()V

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0d008b

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getLanguageList()V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0d0150

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202c1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->isLanguageDeleteState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202bd

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v4

    :cond_0
    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202be

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v2, "ACDownloadManager"

    const-string v3, "onOptionsItemSelected updateLPlist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0161

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->updateLPlist()V

    goto :goto_0

    :sswitch_2
    const-string v2, "ACDownloadManager"

    const-string v3, "onOptionsItemSelected deletelanguae"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->deletelanguae()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0d008b

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getLanguageList()V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0d0150

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202c1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->isLanguageDeleteState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202bd

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v4

    :cond_0
    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202be

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

.method public rebuildLanguageList()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceScreen;->removeAll()V

    const v22, 0x7f0300a8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->addPreferencesFromResource(I)V

    const-string v22, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getLanguageList()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v14

    const/16 v17, 0x0

    const/4 v9, 0x2

    const/16 v21, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v19

    const/4 v7, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    move-object v3, v14

    array-length v15, v3

    const/4 v8, 0x0

    move v10, v9

    :goto_0
    if-ge v8, v15, :cond_f

    aget-object v13, v3, v8

    invoke-virtual {v13}, Lcom/ime/framework/common/Language;->getId()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    move v9, v10

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    invoke-virtual {v13}, Lcom/ime/framework/common/Language;->getId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/4 v4, 0x2

    :goto_2
    const-string v22, "0x%08x"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v13}, Lcom/ime/framework/common/Language;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    new-instance v18, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v13, v2, v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;Lcom/ime/framework/common/Language;II)V

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    add-int v22, v17, v10

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const-string v22, "fr"

    invoke-virtual {v13}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->addCurrentDownloadingListener(I)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    :cond_3
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const/high16 v22, 0x66720000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    invoke-virtual {v13}, Lcom/ime/framework/common/Language;->getId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    const/16 v17, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v17, 0x3e8

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/16 v17, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v17, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x3e8

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setCurrentState(I)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v22

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    if-eqz v20, :cond_10

    const-string v22, "default_keyboard_language"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    const-string v22, "0x%08x"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v25

    const-string v26, "INPUT_LANGUAGE"

    const v27, 0x656e4742

    invoke-interface/range {v25 .. v27}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_10
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setEnabled(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v6, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/common/Language;->getId()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v22

    if-nez v22, :cond_12

    const-string v22, "0x%08x"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v25

    const-string v26, "INPUT_LANGUAGE"

    const v27, 0x656e4742

    invoke-interface/range {v25 .. v27}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setEnabled(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v6, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    :cond_12
    return-void
.end method

.method removeDownloadableLanguageFromDownloadableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeDownloadedLanguageFromDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeDownloadingLanguageFromDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeUpdateableLanguageFromUpdateableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCheckedItemNumber(I)V
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mCheckedItemNumber:I

    return-void
.end method

.method public showChinaModeLegalInformationDialog()V
    .locals 15

    const/4 v14, 0x1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v12, 0x7f030061

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v12, 0x7f100033

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v12, 0x7f100034

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    const v12, 0x7f0d0387

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/ACLanguagesSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    const v12, 0x7f0d0388

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/ACLanguagesSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d0389

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/ACLanguagesSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v12, "CN"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v11, 0x68

    const/16 v5, 0x6d

    :goto_1
    new-instance v12, Lcom/ime/implement/setting/ACLanguagesSettings$1TouchableSpan;

    invoke-direct {v12, p0}, Lcom/ime/implement/setting/ACLanguagesSettings$1TouchableSpan;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    const/16 v13, 0x21

    invoke-virtual {v10, v12, v11, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d038a

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/ACLanguagesSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/ime/implement/setting/ACLanguagesSettings$2;

    invoke-direct {v13, p0}, Lcom/ime/implement/setting/ACLanguagesSettings$2;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    invoke-virtual {v2, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d038c

    new-instance v13, Lcom/ime/implement/setting/ACLanguagesSettings$3;

    invoke-direct {v13, p0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings$3;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V

    invoke-virtual {v2, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_4

    iget-object v12, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    iput-boolean v12, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    :cond_3
    new-instance v12, Lcom/ime/implement/setting/ACLanguagesSettings$4;

    invoke-direct {v12, p0, v3}, Lcom/ime/implement/setting/ACLanguagesSettings$4;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    const-string v12, "HK"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v11, 0x62

    const/16 v5, 0x67

    goto :goto_1

    :cond_6
    const-string v12, "TW"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v11, 0x69

    const/16 v5, 0x6e

    goto :goto_1

    :cond_7
    const-string v12, "KR"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v11, 0x93

    const/16 v5, 0x97

    goto :goto_1

    :cond_8
    const-string v12, "GB"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v11, 0xf3

    const/16 v5, 0x107

    goto/16 :goto_1

    :cond_9
    const/16 v11, 0xfd

    const/16 v5, 0x111

    goto/16 :goto_1
.end method

.method public showListUpdateGuideDialog()V
    .locals 12

    const v11, 0x7f0d017a

    const/4 v10, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getListUpdateGuideLayoutRscId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getListUpdateGuideCheckBoxRscId()I

    move-result v1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0179

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f100086

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v11}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v8, 0x7f0d017e

    new-instance v9, Lcom/ime/implement/setting/ACLanguagesSettings$5;

    invoke-direct {v9, p0}, Lcom/ime/implement/setting/ACLanguagesSettings$5;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0d00b5

    new-instance v9, Lcom/ime/implement/setting/ACLanguagesSettings$6;

    invoke-direct {v9, p0}, Lcom/ime/implement/setting/ACLanguagesSettings$6;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    iput-boolean v8, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    :cond_0
    if-eqz v4, :cond_1

    new-instance v8, Lcom/ime/implement/setting/ACLanguagesSettings$7;

    invoke-direct {v8, p0, v4}, Lcom/ime/implement/setting/ACLanguagesSettings$7;-><init>(Lcom/ime/implement/setting/ACLanguagesSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0d017c

    invoke-virtual {p0, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateLPlist()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v3}, Lcom/ime/framework/acmanager/ACDownloadManager;->getSupportedLanguageList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v3, v1

    if-le v0, v4, :cond_0

    const v2, 0x7f0d0162

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    if-ne v0, v4, :cond_1

    const v2, 0x7f0d0163

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v2, 0x7f0d0164

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updateOrder(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x3e8

    iget-object v2, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getOrder()I

    move-result v0

    invoke-virtual {v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v2

    if-nez v2, :cond_1

    if-ge v0, v4, :cond_0

    add-int/lit16 v0, v0, 0x3e8

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setOrder(I)V

    iget-object v2, v1, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v2

    if-ne v2, v6, :cond_2

    if-le v0, v4, :cond_0

    add-int/lit16 v0, v0, -0x3e8

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-nez p2, :cond_0

    if-ge v0, v4, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-virtual {v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v1, v6}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setCurrentState(I)V

    goto :goto_0
.end method
