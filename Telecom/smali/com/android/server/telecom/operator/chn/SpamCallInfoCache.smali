.class public Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
.super Ljava/lang/Object;
.source "SpamCallInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static volatile mSpamCallToEntry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;


# instance fields
.field private entry:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

.field private mFirstNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->LOG_TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    sput-object v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mFirstNumber:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->init()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    goto :goto_0
.end method

.method static init()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    invoke-direct {v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;-><init>()V

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    :goto_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times! sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->sMe:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    goto :goto_0
.end method

.method public isSpamCallInfoCache(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSpamCallInfoCache(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V
    .locals 7

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    iget-object v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mTagName:Ljava/lang/String;

    iget-object v2, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mNumber:Ljava/lang/String;

    iget v3, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mCount:I

    iget v4, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mTagType:I

    iget-boolean v5, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->isSpam:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->entry:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->entry:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GOLD HashMap size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->mSpamCallToEntry:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->entry:Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->log(Ljava/lang/String;)V

    return-void
.end method
