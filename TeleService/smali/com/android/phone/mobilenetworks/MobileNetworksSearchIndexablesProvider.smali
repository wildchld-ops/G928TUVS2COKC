.class public Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;
.super Ljava/lang/Object;
.source "MobileNetworksSearchIndexablesProvider.java"


# static fields
.field private static final sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;
    .locals 1

    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    return-object v0
.end method

.method private makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.MAIN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object p2, v0, v1

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private makeRow(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;Landroid/provider/SearchIndexableResource;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/MatrixCursor;
    .param p3    # Landroid/provider/SearchIndexableResource;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getTwoStateTypes()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v5

    iget v6, p3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v5, p1, v6}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRow(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;[Landroid/provider/SearchIndexableResource;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/MatrixCursor;
    .param p3    # [Landroid/provider/SearchIndexableResource;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;Landroid/provider/SearchIndexableResource;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public queryRawData(Landroid/content/Context;Landroid/database/MatrixCursor;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsPreferNetworkMode1()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_mode_spinner"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "button_prefer_networkmode1_key"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsPreferNetworkMode2()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_mode_spinner"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "button_prefer_networkmode2_key"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "button_prefer_networkmodespinner1_key"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "button_prefer_networkmodespinner2_key"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1
.end method
