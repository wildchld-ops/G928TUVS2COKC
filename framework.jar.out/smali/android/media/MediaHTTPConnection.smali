.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# static fields
.field private static final GET_DURATION:I = 0x11

.field private static final GET_ENDBYTE:I = 0x16

.field private static final GET_ENDTIME:I = 0x13

.field private static final GET_SEEK_OPTIONS:I = 0x10

.field private static final GET_SERVERTYPE:I = 0x14

.field private static final GET_STARTBYTE:I = 0x15

.field private static final GET_STARTTIME:I = 0x12

.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final VERBOSE:Z

.field private static sDelimitersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mAvailabeSeekRange:Z

.field private mCheckFlag:J

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

.field private mDuration:J

.field private mEndByte:J

.field private mEndTime:J

.field private mFullRandomAccess:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mIsDLNA:Z

.field private mIsTranscodedUrl:Z

.field private mLimitedRandomAccess:Z

.field private mMaxOffsetAllowed:J

.field private mMinOffsetAllowed:J

.field private mNativeContext:J

.field private mPartialDownloadSupported:Z

.field private mProxyIP:Ljava/lang/String;

.field private mProxyPort:I

.field private mReadTimeoutMs:I

.field private mSeekOptions:I

.field private mSetProxy:Z

.field private mStartByte:J

.field private mStartTime:J

.field private mTimeSeekRequested:Z

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/MediaHTTPConnection$1;

    invoke-direct {v0}, Landroid/media/MediaHTTPConnection$1;-><init>()V

    sput-object v0, Landroid/media/MediaHTTPConnection;->sDelimitersMap:Ljava/util/HashMap;

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    iput-object v3, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    iput-object v3, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    iput-object v3, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    iput-object v3, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    iput-boolean v4, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v4, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mIsTranscodedUrl:Z

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mDuration:J

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mStartTime:J

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mEndTime:J

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mStartByte:J

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mEndByte:J

    iput v5, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    iput-boolean v4, p0, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    iput-boolean v4, p0, Landroid/media/MediaHTTPConnection;->mAvailabeSeekRange:Z

    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mFullRandomAccess:Z

    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mLimitedRandomAccess:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCheckFlag:J

    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mSetProxy:Z

    iput-object v3, p0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mIsDLNA:Z

    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mTimeSeekRequested:Z

    iput v5, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    return-void
.end method

.method private checkForAvailableSeekRange(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "HEAD"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "getAvailableSeekRange.dlna.org"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v4, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    if-lez v4, :cond_2

    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeekRange setReadTimeout with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget v5, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget v5, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_2
    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "seekRange response code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_3

    const/16 v4, 0xce

    if-ne v2, v4, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->parseAllowedOffset()V

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    return-void

    :cond_4
    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error code from server for checkForAvailableSeekRange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
.end method

.method private convertAttributeValuesToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v6, Landroid/media/MediaHTTPConnection;->sDelimitersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/media/MediaHTTPConnection;->sDelimitersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    :goto_0
    const-string v6, "MediaHTTPConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convertAttributeValuesToMap :: delimiters are "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaHTTPConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key values are "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "MediaHTTPConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Exception occurred: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const-string v1, ";="

    goto :goto_0
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private doCheckHeaderOptions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HeaderOptions response code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->updateSeekOptions()V

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    return-void

    :cond_1
    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error code from server response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    iget-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v3, "localhost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native native_init()V
.end method

.method private final native native_readAt(JI)I
.end method

.method private final native native_setup()V
.end method

.method private parseAllowedOffset()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "availableSeekRange.dlna.org"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "availabeSeekRange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bytes="

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v2, :cond_1

    if-lez v1, :cond_1

    if-ne v3, v8, :cond_1

    iput-boolean v8, p0, Landroid/media/MediaHTTPConnection;->mAvailabeSeekRange:Z

    add-int/lit8 v4, v1, 0x6

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mMinOffsetAllowed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMaxOffsetAllowed ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Landroid/media/MediaHTTPConnection;->mAvailabeSeekRange:Z

    goto :goto_0
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private readAt(J[BI)I
    .locals 9

    const/16 v5, 0xa

    const/4 v3, -0x1

    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    iget v4, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/media/MediaHTTPConnection;->mTimeSeekRequested:Z

    if-nez v4, :cond_1

    :cond_0
    iget v4, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    if-eq v4, v5, :cond_2

    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    :cond_2
    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    if-nez v4, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    const-string v3, "MediaHTTPConnection"

    const-string v4, "Return -EPIPE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x20

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3f2

    goto :goto_0

    :catch_2
    move-exception v0

    move v1, v3

    goto :goto_0

    :catch_3
    move-exception v0

    move v1, v3

    goto :goto_0
.end method

.method private seekTo(J)V
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mIsDLNA:Z

    move/from16 v42, v0

    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    move/from16 v42, v0

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->doCheckHeaderOptions()V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mIsDLNA:Z

    move/from16 v42, v0

    if-eqz v42, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mLimitedRandomAccess:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4

    invoke-direct/range {p0 .. p2}, Landroid/media/MediaHTTPConnection;->checkForAvailableSeekRange(J)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAvailabeSeekRange:Z

    move/from16 v42, v0

    if-nez v42, :cond_1

    const-string v42, "MediaHTTPConnection"

    const-string/jumbo v43, "mAvailabeSeekRange mode is 0 we cannot seek "

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-ltz v42, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-ltz v42, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    move-wide/from16 v42, v0

    cmp-long v42, p1, v42

    if-lez v42, :cond_2

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "offset = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "mMaxOffsetAllowed = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x1

    sub-long p1, v42, v44

    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    move-wide/from16 v42, v0

    cmp-long v42, p1, v42

    if-gez v42, :cond_3

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "offset = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "mMinOffsetAllowed = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x1

    add-long p1, v42, v44

    :cond_3
    const-wide/16 v42, -0x1

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mMinOffsetAllowed:J

    const-wide/16 v42, -0x1

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mMaxOffsetAllowed:J

    :cond_4
    const/16 v27, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v24

    :cond_5
    :goto_1
    if-eqz v24, :cond_8

    sget-object v42, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual/range {v41 .. v42}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v42

    check-cast v42, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v42, v0

    if-lez v42, :cond_6

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "setReadTimeout with "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "ms"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v42, v0

    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v44, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v15

    const-wide/16 v42, -0x1

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    if-eqz v42, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    :cond_7
    const-wide/16 v42, -0x1

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    throw v15

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mSetProxy:Z

    move/from16 v42, v0

    if-eqz v42, :cond_9

    new-instance v26, Ljava/net/Proxy;

    sget-object v42, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v43, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v45, v0

    invoke-direct/range {v43 .. v45}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v42

    check-cast v42, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v42

    check-cast v42, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mTimeSeekRequested:Z

    move/from16 v42, v0

    if-nez v42, :cond_b

    const-wide/16 v42, 0x0

    cmp-long v42, p1, v42

    if-lez v42, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    const-string v43, "Range"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "bytes="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "-"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "response code = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v42, 0x12c

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_e

    const/16 v42, 0x12d

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_e

    const/16 v42, 0x12e

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_e

    const/16 v42, 0x12f

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_e

    const/16 v42, 0x133

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    :cond_c
    const/16 v42, 0xce

    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    const-string v43, "Content-Range"

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v42, -0x1

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    if-eqz v8, :cond_d

    const/16 v42, 0x2f

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    if-ltz v21, :cond_d

    add-int/lit8 v42, v21, 0x1

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v40

    :try_start_2
    invoke-static/range {v40 .. v40}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_d
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mTimeSeekRequested:Z

    move/from16 v42, v0

    if-nez v42, :cond_18

    const-wide/16 v42, 0x0

    cmp-long v42, p1, v42

    if-lez v42, :cond_18

    const/16 v42, 0xce

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_18

    const-string v42, "MediaHTTPConnection"

    const-string v43, "Server doesnt support Partial Request"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    new-instance v42, Ljava/net/ProtocolException;

    invoke-direct/range {v42 .. v42}, Ljava/net/ProtocolException;-><init>()V

    throw v42

    :cond_e
    add-int/lit8 v27, v27, 0x1

    const/16 v42, 0x14

    move/from16 v0, v27

    move/from16 v1, v42

    if-le v0, v1, :cond_f

    new-instance v42, Ljava/net/NoRouteToHostException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Too many redirects: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v42

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v23

    const/16 v42, 0x133

    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_10

    const-string v42, "GET"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_10

    const-string v42, "HEAD"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_10

    new-instance v42, Ljava/net/NoRouteToHostException;

    const-string v43, "Invalid redirect"

    invoke-direct/range {v42 .. v43}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v42

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    const-string v43, "Location"

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_11

    new-instance v42, Ljava/net/NoRouteToHostException;

    const-string v43, "Invalid redirect"

    invoke-direct/range {v42 .. v43}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v42

    :cond_11
    new-instance v41, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v43, "https"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_12

    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v43, "http"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_12

    new-instance v42, Ljava/net/NoRouteToHostException;

    const-string v43, "Unsupported protocol redirect"

    invoke-direct/range {v42 .. v43}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v42

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    move/from16 v42, v0

    if-nez v42, :cond_13

    if-nez v30, :cond_13

    new-instance v42, Ljava/net/NoRouteToHostException;

    const-string v43, "Cross-protocol redirects are disallowed"

    invoke-direct/range {v42 .. v43}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v42

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v42, v0

    if-nez v42, :cond_14

    if-nez v29, :cond_14

    new-instance v42, Ljava/net/NoRouteToHostException;

    const-string v43, "Cross-domain redirects are disallowed"

    invoke-direct/range {v42 .. v43}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v42

    :cond_14
    const/16 v42, 0x133

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    goto/16 :goto_1

    :cond_15
    const/16 v42, 0xc8

    move/from16 v0, v28

    move/from16 v1, v42

    if-eq v0, v1, :cond_16

    new-instance v42, Ljava/io/IOException;

    invoke-direct/range {v42 .. v42}, Ljava/io/IOException;-><init>()V

    throw v42

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    move-wide/from16 v42, v0

    const-wide/16 v44, -0x1

    cmp-long v42, v42, v44

    if-nez v42, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    const-string v43, "Content-Length"

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    :cond_17
    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "mTotalSize is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mIsTranscodedUrl:Z

    move/from16 v42, v0

    if-eqz v42, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    const-string v43, "X-ASP-DURATION-TIME"

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1a

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mDuration:J

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "duration is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mDuration:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_19
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mIsDLNA:Z

    move/from16 v42, v0

    if-eqz v42, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    move/from16 v42, v0

    const/16 v43, 0xa

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    const-string v43, "TimeSeekRange.dlna.org"

    invoke-virtual/range {v42 .. v43}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "timeseekrangevalue "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v38, :cond_29

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaHTTPConnection;->mTimeSeekRequested:Z

    const-string v42, "TimeSeekRange.dlna.org"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/media/MediaHTTPConnection;->convertAttributeValuesToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v42, "bytes"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v42, "npt"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "timeseekrange "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "  byte range:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1c

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v42, "-/"

    move-object/from16 v0, v42

    invoke-direct {v6, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v42, 0x3

    move/from16 v0, v42

    new-array v7, v0, [J

    move v13, v12

    :goto_6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v42

    if-eqz v42, :cond_1b

    add-int/lit8 v12, v13, 0x1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    aput-wide v42, v7, v13

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "token "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    add-int/lit8 v44, v12, -0x1

    aget-wide v44, v7, v44

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move v13, v12

    goto :goto_6

    :cond_1a
    :try_start_5
    const-string v42, "MediaHTTPConnection"

    const-string v43, "could not get the duration"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    :cond_1b
    const/16 v42, 0x0

    :try_start_6
    aget-wide p1, v7, v42

    const/16 v42, 0x2

    aget-wide v42, v7, v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mStartByte:J

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "offset is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mStartByte:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " total size is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v25, v37

    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "nptinfo "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v25, :cond_20

    const/16 v42, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v42

    if-lez v42, :cond_24

    new-instance v32, Ljava/util/StringTokenizer;

    const-string v42, "-/"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v42, 0x3

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v19, 0x0

    :goto_7
    const/16 v42, 0x3

    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_1d

    invoke-virtual/range {v32 .. v32}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1d

    invoke-virtual/range {v32 .. v32}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v39, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_1d
    const/16 v42, 0x3

    move/from16 v0, v19

    move/from16 v1, v42

    if-ne v0, v1, :cond_23

    new-instance v33, Ljava/util/StringTokenizer;

    const/16 v42, 0x0

    aget-object v42, v39, v42

    const-string v43, ":"

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v34, Ljava/util/StringTokenizer;

    const/16 v42, 0x1

    aget-object v42, v39, v42

    const-string v43, ":"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v35, Ljava/util/StringTokenizer;

    const/16 v42, 0x2

    aget-object v42, v39, v42

    const-string v43, ":"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v42, 0x3

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v42, 0x3

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v42, 0x3

    move/from16 v0, v42

    new-array v14, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    :goto_8
    const/16 v42, 0x3

    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_1e

    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1e

    invoke-virtual/range {v34 .. v34}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1e

    invoke-virtual/range {v35 .. v35}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1e

    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v31, v19

    invoke-virtual/range {v34 .. v34}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v16, v19

    invoke-virtual/range {v35 .. v35}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v14, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    :cond_1e
    const/16 v42, 0x3

    move/from16 v0, v19

    move/from16 v1, v42

    if-ne v0, v1, :cond_22

    const/16 v42, 0x0

    aget-object v42, v31, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    const-wide/16 v44, 0x3c

    mul-long v42, v42, v44

    const-wide/16 v44, 0x3c

    mul-long v42, v42, v44

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    const/16 v44, 0x1

    aget-object v44, v31, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    const-wide/16 v46, 0x3c

    mul-long v44, v44, v46

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    add-long v42, v42, v44

    const/16 v44, 0x2

    aget-object v44, v31, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    add-long v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mStartTime:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mStartTime:J

    const/16 v42, 0x0

    aget-object v42, v16, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    const-wide/16 v44, 0x3c

    mul-long v42, v42, v44

    const-wide/16 v44, 0x3c

    mul-long v42, v42, v44

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    const/16 v44, 0x1

    aget-object v44, v16, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    const-wide/16 v46, 0x3c

    mul-long v44, v44, v46

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    add-long v42, v42, v44

    const/16 v44, 0x2

    aget-object v44, v16, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    add-long v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mEndTime:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mEndTime:J

    const/16 v42, 0x0

    aget-object v42, v14, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    const-wide/16 v44, 0x3c

    mul-long v42, v42, v44

    const-wide/16 v44, 0x3c

    mul-long v42, v42, v44

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    const/16 v44, 0x1

    aget-object v44, v14, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    const-wide/16 v46, 0x3c

    mul-long v44, v44, v46

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    add-long v42, v42, v44

    const/16 v44, 0x2

    aget-object v44, v14, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    add-long v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mDuration:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mDuration:J

    :cond_1f
    :goto_9
    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "mStartTime "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mStartTime:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " mEndTime "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mEndTime:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " mDuration "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mDuration:J

    move-wide/from16 v44, v0

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_a
    const-string v42, "MediaHTTPConnection"

    const-string v43, "Successfully parsed header"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_21
    :goto_b
    :try_start_7
    new-instance v42, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_22
    :try_start_8
    const-string v42, "MediaHTTPConnection"

    const-string/jumbo v43, "time info token parsing failed"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_1
    move-exception v42

    goto :goto_b

    :cond_23
    const-string v42, "MediaHTTPConnection"

    const-string/jumbo v43, "npt info token parsing failed "

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_24
    const/16 v18, 0x0

    const-string v42, "*"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_25

    const/16 v18, 0x1

    const/16 v42, 0x2d

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    if-ltz v21, :cond_1f

    const/16 v42, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v42

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v31

    :try_start_9
    const-string v42, "MediaHTTPConnection"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "startTime "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v42

    const-wide v44, 0x412e848000000000L    # 1000000.0

    mul-double v42, v42, v44

    move-wide/from16 v0, v42

    double-to-long v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mStartTime:J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_9

    :catch_2
    move-exception v42

    goto/16 :goto_9

    :cond_25
    :try_start_a
    new-instance v32, Ljava/util/StringTokenizer;

    const-string v42, "-/"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v42, 0x3

    move/from16 v0, v42

    new-array v0, v0, [J

    move-object/from16 v36, v0

    const/4 v10, 0x0

    move v11, v10

    :goto_c
    invoke-virtual/range {v32 .. v32}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v42

    if-eqz v42, :cond_26

    add-int/lit8 v10, v11, 0x1

    invoke-virtual/range {v32 .. v32}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v42

    const-wide v44, 0x408f400000000000L    # 1000.0

    mul-double v42, v42, v44

    const-wide v44, 0x408f400000000000L    # 1000.0

    mul-double v42, v42, v44

    move-wide/from16 v0, v42

    double-to-long v0, v0

    move-wide/from16 v42, v0

    aput-wide v42, v36, v11

    move v11, v10

    goto :goto_c

    :cond_26
    const/16 v42, 0x3

    move/from16 v0, v42

    if-ne v11, v0, :cond_27

    const/16 v42, 0x0

    aget-wide v42, v36, v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mStartTime:J

    const/16 v42, 0x1

    aget-wide v42, v36, v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mEndTime:J

    const/16 v42, 0x2

    aget-wide v42, v36, v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mDuration:J

    goto/16 :goto_9

    :cond_27
    const/16 v42, 0x2

    move/from16 v0, v42

    if-ne v11, v0, :cond_28

    const/16 v42, 0x0

    aget-wide v42, v36, v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mStartTime:J

    const/16 v42, 0x1

    aget-wide v42, v36, v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mDuration:J

    goto/16 :goto_9

    :cond_28
    const-string v42, "MediaHTTPConnection"

    const-string/jumbo v43, "nptinfo token parsing failed-2"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_29
    const-string v42, "MediaHTTPConnection"

    const-string v43, "TimeSeekRange.dlna.org not found"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_a

    :catch_3
    move-exception v42

    goto/16 :goto_4
.end method

.method private teardownConnection()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    :cond_0
    return-void
.end method

.method private updateSeekOptions()V
    .locals 14

    const/16 v13, 0xd3

    const/16 v12, 0xb

    const/4 v11, 0x3

    const/4 v10, 0x1

    iget-object v7, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v8, "contentFeatures.dlna.org"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "MediaHTTPConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contentfeature "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    const-string v7, "contentFeatures.dlna.org"

    invoke-direct {p0, v7, v1}, Landroid/media/MediaHTTPConnection;->convertAttributeValuesToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v7, "DLNA.ORG_OP"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v7, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v7, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    iput-boolean v10, p0, Landroid/media/MediaHTTPConnection;->mFullRandomAccess:Z

    const-string v7, "MediaHTTPConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSeekOptions value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    if-eq v7, v10, :cond_0

    iget v7, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    if-ne v7, v12, :cond_1

    :cond_0
    iget-object v7, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    const-string v8, "Range"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    const-string v8, "Range"

    const-string v9, "bytes=0-"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const-string v7, "DLNA.ORG_FLAGS"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "MediaHTTPConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lop_bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v13, :cond_5

    iput-boolean v10, p0, Landroid/media/MediaHTTPConnection;->mLimitedRandomAccess:Z

    const-string v7, "MediaHTTPConnection"

    const-string/jumbo v8, "mLimitedRandomAccess = true"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-boolean v7, p0, Landroid/media/MediaHTTPConnection;->mFullRandomAccess:Z

    if-ne v7, v10, :cond_3

    if-ne v3, v13, :cond_3

    if-ne v6, v10, :cond_3

    const-string v7, "MediaHTTPConnection"

    const-string v8, "Error. Mutually exclusive values being set."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v7, "MediaHTTPConnection"

    const-string v8, "DLNA.ORG_OP not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-ne v4, v12, :cond_2

    const-wide/16 v8, 0x1

    iput-wide v8, p0, Landroid/media/MediaHTTPConnection;->mCheckFlag:J

    const-string v7, "MediaHTTPConnection"

    const-string v8, "MCVT TEST"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v7, "MediaHTTPConnection"

    const-string v8, "DLNA.ORG_FLAGS not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public checkFlag()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCheckFlag:J

    return-wide v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    const-string/jumbo v1, "type=TS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MediaHTTPConnection"

    const-string v2, "It is transcoded url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mIsTranscodedUrl:Z

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    const-string v2, "getcontentFeatures.dlna.org"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MediaHTTPConnection"

    const-string v2, "getcontentFeatures.dlna.org key found. Setting mIsDLNA to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mIsDLNA:Z

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    const-string v2, "TimeSeekRange.dlna.org"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MediaHTTPConnection"

    const-string v2, "TimeSeekRange.dlna.org key found. Setting mIsDLNA to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mTimeSeekRequested:Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method public getProperties(I)J
    .locals 3

    const-string v0, "MediaHTTPConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mDuration:J

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/media/MediaHTTPConnection;->mSeekOptions:I

    int-to-long v0, v0

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mStartByte:J

    goto :goto_0

    :pswitch_4
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mStartTime:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getSize()J
    .locals 4

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-wide v2, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAt(JI)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    move-result v0

    return v0
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "MediaHTTPConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProxy  Proxy IP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Proxy Port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mSetProxy:Z

    iput-object p1, p0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    :cond_0
    return-void
.end method

.method public setReadTimeOut(I)V
    .locals 3

    const-string v0, "MediaHTTPConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReadTimeOut =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    return-void
.end method
