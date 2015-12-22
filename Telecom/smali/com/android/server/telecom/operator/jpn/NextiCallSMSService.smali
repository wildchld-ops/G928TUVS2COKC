.class public Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;
.super Landroid/app/Service;
.source "NextiCallSMSService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method ConvertTimeMillisFromSMS(Ljava/lang/String;)J
    .locals 12

    const/4 v6, 0x0

    const-string v0, "Asia/Tokyo"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v2, 0x6

    const/16 v4, 0x8

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v2, 0x9

    const/16 v5, 0xb

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v2, v7, -0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-gez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v7, -0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v8

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 23

    if-eqz p1, :cond_8

    const-string v2, "sms_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "^\u6d77\u5916\\s\u7740\u4fe1\u901a\u77e5\\(\u65e5\u672c\u6642\u9593\\)\\n"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v4, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9][\\s]?\\n"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    const-string v4, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9][\\s]?\uff83\uff9a\uff8b\uff9e\u96fb\u8a71\\n"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    const-string v4, "\n\n"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    sget-object v2, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand - smsValues.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand - smsValues[0] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move v14, v3

    :goto_0
    move-object/from16 v0, v19

    array-length v3, v0

    if-ge v2, v3, :cond_7

    aget-object v3, v19, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    aget-object v3, v19, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aget-object v4, v19, v2

    const-string v5, "\n"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->ConvertTimeMillisFromSMS(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v3, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    move v15, v3

    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "sip"

    :goto_3
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    new-instance v3, Lcom/android/server/telecom/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZJ)V

    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/Call;->setState(I)V

    new-instance v4, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService$1;-><init>(Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v15}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V

    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    :cond_1
    move v3, v14

    add-int/lit8 v2, v2, 0x1

    move v14, v3

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_3
    const-string v3, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    move v15, v3

    goto :goto_2

    :cond_4
    const-string v3, "\u516c\u8846\u96fb\u8a71"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    move v15, v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    move v15, v3

    goto :goto_2

    :cond_6
    const-string v3, "tel"

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand - addcall_count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    :goto_4
    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_4
.end method
