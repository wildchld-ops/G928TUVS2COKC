.class public Lcom/android/incallui/secservice/SecVideoState;
.super Ljava/lang/Object;
.source "SecVideoState.java"


# static fields
.field public static CONFERENCE:I

.field public static HELD_VIDEO:I

.field public static HOLDING:I

.field public static HOLDING_THE_OTHER_PARTY:I

.field public static INCOMING:I

.field public static MAIN_STATE:I

.field public static MODIFY_DUMMY:I

.field public static MODIFY_RECEIVE:I

.field public static MODIFY_REQUEST:I

.field public static MODIFY_VOICE_TO_VIDEO:I

.field public static MODIFY_VOICE_TO_VS:I

.field public static MODIFY_VS_TO_VIDEO:I

.field public static OUTGOING:I

.field public static SUB_STATE:I

.field public static VIDEO_GENERAL:I

.field public static VIDEO_NONE:I

.field public static VIDEO_SHARE_RX:I

.field public static VIDEO_SHARE_TX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    const/16 v0, 0x8

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    const/16 v0, 0x10

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    const/16 v0, 0x20

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    const/16 v0, 0x40

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    const/16 v0, 0x80

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    const/16 v0, 0x100

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    const/16 v0, 0x200

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    const/16 v0, 0x400

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->CONFERENCE:I

    const/16 v0, 0x800

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    const/16 v0, 0x1000

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    const/16 v0, 0x2000

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    const/16 v0, 0x4000

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->MAIN_STATE:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->CONFERENCE:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/incallui/secservice/SecVideoState;->SUB_STATE:I

    return-void
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v1, v2, :cond_0

    const-string v1, "VIDEO_GENERAL"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v1, v2, :cond_1

    const-string v1, "VIDEO_SHARE_RX"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v1, v2, :cond_2

    const-string v1, "VIDEO_SHARE_TX"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v1, v2, :cond_3

    const-string v1, "MODIFY_RECEIVE"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    if-ne v1, v2, :cond_4

    const-string v1, "MODIFY_REQUEST"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-ne v1, v2, :cond_5

    const-string v1, "INCOMING"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_5
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    if-ne v1, v2, :cond_6

    const-string v1, "OUTGOING"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_6
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-ne v1, v2, :cond_7

    const-string v1, "HOLDING_THE_OTHER_PARTY"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_7
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->CONFERENCE:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->CONFERENCE:I

    if-ne v1, v2, :cond_8

    const-string v1, "CONFERENCE"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_8
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    if-ne v1, v2, :cond_9

    const-string v1, "MODIFY_VOICE_TO_VIDEO"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_9
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v1, v2, :cond_a

    const-string v1, "MODIFY_VOICE_TO_VS"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_a
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    if-ne v1, v2, :cond_b

    const-string v1, "MODIFY_VS_TO_VIDEO"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_b
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-ne v1, v2, :cond_c

    const-string v1, "MODIFY_DUMMY"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_c
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    if-ne v1, v2, :cond_d

    const-string v1, "HOLDING"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_d
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-ne v1, v2, :cond_e

    const-string v1, "HELD_VIDEO"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_e
    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-ne p0, v1, :cond_f

    const-string v1, "VIDEO_NONE"

    invoke-static {v0, v1}, Lcom/android/incallui/secservice/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
