.class public Lcom/android/incallui/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;,
        Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;,
        Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCache:Lcom/android/incallui/ContactInfoCache;


# instance fields
.field private final mCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/incalluibind/ServiceFactory;->newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 3

    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    invoke-static {p0, v1, v0, v2, p2}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    return-object v0
.end method

.method private buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    invoke-static {p1, p3, v0, p4, p5}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    iget v3, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    :cond_0
    sget-object v3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v4, "lookup key is null or contact ID is 0. Don\'t create a lookup uri."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    :goto_1
    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    return-object v0

    :cond_1
    iget-boolean v3, p3, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v3, :cond_3

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    iget-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    invoke-static {p1, v4, v5}, Lcom/android/incallui/ContactAgentUtils;->getPresenceMode(Landroid/content/Context;J)I

    move-result v3

    iput v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    goto :goto_0

    :cond_5
    iget-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private clearCallbacks(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/android/incallui/EcidClient;->addContact(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz p4, :cond_3

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_3

    if-eqz v6, :cond_4

    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-direct {p0, v2, v6}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const-string v0, "linkedin_integration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v6, :cond_5

    iget-boolean v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinUpdated:Z

    if-nez v0, :cond_5

    iput-boolean v9, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinUpdated:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getLinkedinHelper()Lcom/android/incallui/sns/SecLinkedInHelper;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v2, v6}, Lcom/android/incallui/sns/SecLinkedInHelper;->searchLinkedInAccount(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_5
    if-eqz p4, :cond_6

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup. Local contacts miss, checking remote"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;

    invoke-direct {v8, p0, v2}, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;-><init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    iget-object v1, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v8, p3}, Lcom/android/incallui/service/PhoneNumberService;->getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V

    :goto_0
    const-string v0, "dcm_sda_support_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Send intent to Docomo SDA for incoming call"

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1, v6}, Lcom/android/incallui/InCallUtils;->sendNotificationToSmartDeviceAgent(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_6
    return-void

    :cond_7
    if-eqz v6, :cond_8

    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup. Local contact found, starting image load"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v3, p0, v2}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact lookup done. Local contact found, no image. name :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Local contact not found and no remote lookup service available."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;
    .locals 3

    const-class v1, Lcom/android/incallui/ContactInfoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/incallui/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    :cond_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const v1, 0x7f0d0126

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const v1, 0x7f0d0127

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const v1, 0x7f0d0128

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 23

    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v12, 0x0

    const/16 v17, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v12

    const-string v20, "sip:"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  ==> no name *or* number! displayName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v20, "ims_call_message"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v20, "emergency_find_lost_phone"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUtils;->changeNameForSKT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object v9, v11

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    :cond_2
    const-string v20, "roaming_auto_dial"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_22

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "in roaming area - display rad number : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "country_detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/CountryDetector;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_3
    :goto_1
    const-string v20, "change_rad_number"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUtils;->changeNameForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_24

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v20, "+82263439000"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    const-string v20, "+82101521044"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_23

    :cond_6
    move-object v9, v5

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    :cond_7
    :goto_2
    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "in roaming area - display number is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p2

    iput v14, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    move-object/from16 v0, p2

    iput-boolean v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move/from16 v0, p3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/incallui/CallerInfo;->contactDataId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personDataId:J

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/CallerInfo;->queryCompleted:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    const-string v20, "cnap_supplementary_service"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    const-string v20, "ims_support_multimedia_caller_id"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->CheckDisplayPLettrering()Z

    move-result v20

    if-nez v20, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    :cond_9
    const-string v20, "cdnip_supplementary_service"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    :cond_a
    const-string v20, "ims_call_message"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    :cond_b
    return-void

    :cond_c
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  ==> presentation not allowed! displayName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    const-string v20, "cnap_supplementary_service"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v9, v16

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  ==> cnapName available: displayName \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', displayNumber \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v9, v16

    if-nez p4, :cond_f

    :cond_f
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Geodescrption: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_10

    const-string v20, "abbreviated_dialing_codes_enable"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-static {v9}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isAbbreviatedDialingCodes(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-static {v9}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_10
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_11

    const-string v20, "usa_cdma_emergency_concept"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v20

    if-eqz v20, :cond_11

    move-object v8, v9

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getECMCardString()Ljava/lang/String;

    move-result-object v9

    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteGroupCall()Z

    move-result v20

    if-nez v20, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v20

    if-nez v20, :cond_12

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/TelecomAdapter;->getParticipantsCount()I

    move-result v20

    if-lez v20, :cond_14

    :cond_12
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getName4startIMSConference()Ljava/lang/String;

    move-result-object v8

    :cond_13
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_14

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getNumber4startIMSConference()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_14

    move-object/from16 v9, v16

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "populateCacheEntry IMSCC displayNumber :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v20, "yellowpage_callerid_info"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/16 v19, 0x0

    const-string v20, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/incallui/YellowPageCallerid;->getYellowPageNameFromNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "populateCacheEntry yellowPageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15

    move-object/from16 v8, v19

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    const v20, 0x7f0d0387

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_15
    const-string v20, "support_spam_call"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    const v20, 0x7f0d0387

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_16
    const-string v20, "fdn_contact_search"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    move/from16 v20, v0

    if-nez v20, :cond_17

    const/4 v10, 0x0

    const-string v20, "-"

    const-string v21, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/secutils/SecCallerInfoUtils;->getNameFromFDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_17

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "populateCacheEntry getNameFromFDN:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v10

    :cond_17
    const-string v20, "ltn_sdnname_display"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    move/from16 v20, v0

    if-nez v20, :cond_18

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v18, 0x0

    const-string v20, "-"

    const-string v21, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/secutils/SecCallerInfoUtils;->getNameFromFDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v20

    const-string v21, "-"

    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/TelecomAdapter;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v18, :cond_18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_18

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "populateCacheEntry getNameFromSDN:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v18

    :cond_18
    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  ==>  no name; falling back to number: displayNumber \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v9}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', displayLocation \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v9, v16

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/incallui/CallerInfo;->numberType:I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_1c

    const-string v20, "geo_description_disable"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1c

    const-string v20, "feature_spr"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1c

    if-nez p4, :cond_1b

    :cond_1b
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Geodescrption: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_1d

    const-string v20, "abbreviated_dialing_codes_enable"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-static {v9}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isAbbreviatedDialingCodes(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-static {v9}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_1d
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_1f

    const-string v20, "usa_cdma_emergency_concept"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v20

    if-eqz v20, :cond_1f

    if-eqz v9, :cond_1e

    move-object v8, v9

    :cond_1e
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getECMCardString()Ljava/lang/String;

    move-result-object v9

    :cond_1f
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v20

    if-eqz v20, :cond_21

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v20

    if-eqz v20, :cond_21

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_20

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v20

    if-eqz v20, :cond_20

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getName4startIMSConference()Ljava/lang/String;

    move-result-object v8

    :cond_20
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_21

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v20

    if-eqz v20, :cond_21

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getNumber4startIMSConference()Ljava/lang/String;

    move-result-object v9

    :cond_21
    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', displayNumber \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " info.name :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    sget-object v20, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v21, "in roaming area - display rad number is null"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_23
    move-object v8, v5

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_24
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_25

    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    :cond_25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object v8, v5

    goto/16 :goto_2
.end method

.method private sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    if-ne v4, v7, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v0, :cond_2

    sget-object v7, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contact lookup. In memory cache hit; lookup "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_1

    const-string v4, "complete"

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v2, v0}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    if-nez v1, :cond_2

    :goto_2
    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    const-string v4, "still running"

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v7, "Contact lookup. In memory cache miss; searching provider."

    invoke-static {v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v7, "Whitepages Enabled, NameId Info lookup. "

    invoke-static {v4, v7, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    iget-object v7, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v8, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    invoke-direct {v5, v7, p2, v8}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;-><init>(Landroid/content/Context;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V

    invoke-static {v4, p1, v5}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    :goto_3
    invoke-direct {p0, p1, v3, p2, v6}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v5, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    invoke-static {v4, p1, v5}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    goto :goto_3
.end method

.method public getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 5

    const-string v3, "Image load complete with context: "

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "Image Load received for empty search entry."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "setting photo for entry: "

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const-string v3, "direct drawable: "

    invoke-static {p0, v3, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v3, "photo icon: "

    invoke-static {p0, v3, p3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "unknown photo"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
