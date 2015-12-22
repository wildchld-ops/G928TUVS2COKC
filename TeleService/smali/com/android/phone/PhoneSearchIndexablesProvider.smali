.class public Lcom/android/phone/PhoneSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "PhoneSearchIndexablesProvider.java"


# static fields
.field private static INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    new-array v0, v6, [Landroid/provider/SearchIndexableResource;

    const/4 v1, 0x0

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const v3, 0x7f07002e

    const-class v4, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030001

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1    # [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isOwnerMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isNoPhoneGlobalsHere()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;[Landroid/provider/SearchIndexableResource;)V

    goto :goto_0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1    # [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isOwnerMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->getVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isNoPhoneGlobalsHere()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->queryRawData(Landroid/content/Context;Landroid/database/MatrixCursor;)V

    goto :goto_0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1    # [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isOwnerMode()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->getVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v1, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isNoPhoneGlobalsHere()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->updateIndexableRes(Landroid/content/Context;)[Landroid/provider/SearchIndexableResource;

    move-result-object v5

    sput-object v5, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    sget-object v5, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    if-nez v5, :cond_4

    move-object v1, v4

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v5, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v5, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    array-length v0, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    const/4 v5, 0x7

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "android.intent.action.MAIN"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "com.android.phone"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v6, v6, v2

    iget-object v6, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
