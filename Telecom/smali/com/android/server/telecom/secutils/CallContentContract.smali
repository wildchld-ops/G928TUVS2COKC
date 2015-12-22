.class public Lcom/android/server/telecom/secutils/CallContentContract;
.super Ljava/lang/Object;
.source "CallContentContract.java"


# static fields
.field public static final CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

.field public static final COMPOSER_DATA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.vodafone.callplus.provider/callcontent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "direction"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c_importance"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "c_location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "c_location_map"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "c_background"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "c_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "u_audioclip"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "u_callreason"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/secutils/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    return-void
.end method
