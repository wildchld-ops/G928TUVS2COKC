.class Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuredLockSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuredLockIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

.field private mXmlResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    const-class v0, Lcom/android/settings/SecuredLockSettingsMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoFactoryReset()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "auto_factory_reset"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_1

    const/high16 v3, 0x90000

    if-eq v0, v3, :cond_1

    const v3, 0x9100

    if-eq v0, v3, :cond_1

    const-string v3, "visiblepattern"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "action_meno_on_lock_screen"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, "power_button_instantly_locks"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v2
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const v11, 0x7f0a126b

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v5, 0x7f0a126b

    const v9, 0x7f0a13fc

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    # invokes: Lcom/android/settings/SecuredLockSettingsMenu;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    invoke-static {v9, v4}, Lcom/android/settings/SecuredLockSettingsMenu;->access$000(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iget-object v9, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput v11, v2, Lcom/android/settings/search/SearchIndexableRaw;->parentTitleRes:I

    const-string v9, "trust_agent"

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v9, "lock_after_timeout"

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string v9, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    const v9, 0x7f0a102e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    :goto_1
    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput v11, v2, Lcom/android/settings/search/SearchIndexableRaw;->parentTitleRes:I

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a1405

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v9, 0x7f0a1406

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput v11, v2, Lcom/android/settings/search/SearchIndexableRaw;->parentTitleRes:I

    const-string v9, "action_meno_on_lock_screen"

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v7

    :cond_3
    const v9, 0x7f0a01a3

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_0

    const v2, 0x7f070093

    iput v2, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    :goto_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const v2, 0x7f070083

    iput v2, p0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    goto :goto_0
.end method
