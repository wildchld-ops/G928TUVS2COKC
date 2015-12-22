.class public Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
.source "LastCallLogQueryArgs.java"


# static fields
.field private static mContentObserver:Landroid/database/ContentObserver;

.field private static mHandler:Landroid/os/Handler;

.field private static mObserverUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mObserverUri:Landroid/net/Uri;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Logs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mUri:Landroid/net/Uri;

    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->lastCallLogQueryArgsForVIPMode(Ljava/lang/Object;)V

    :goto_0
    const-string v0, "date DESC LIMIT 1"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mOrderBy:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    const-string v1, "duration"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "logtype"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v0, "number=? AND (logtype=? OR logtype=? OR logtype=? OR logtype=?) AND date>=?"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mSelection:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const/4 v0, 0x5

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public lastCallLogQueryArgsForVIPMode(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "duration"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "logtype"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "reject_flag"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v0, "number=? AND (logtype=? OR logtype=? OR logtype=? OR logtype=?) AND date>=? AND reject_flag=?"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mSelection:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    check-cast p1, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p1, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const/4 v0, 0x5

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "0"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method
