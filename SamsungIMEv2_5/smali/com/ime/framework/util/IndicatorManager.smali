.class public Lcom/ime/framework/util/IndicatorManager;
.super Ljava/lang/Object;
.source "IndicatorManager.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ime/framework/util/IndicatorManager;


# instance fields
.field private final SERVICE_ID:I

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0202ff

    iput v0, p0, Lcom/ime/framework/util/IndicatorManager;->SERVICE_ID:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    sput-object p1, Lcom/ime/framework/util/IndicatorManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/ime/framework/util/IndicatorManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotiManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    const v1, 0x1080495

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x1002

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    iput-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.allowDuringSetup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    const-string v1, "sys"

    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    sget-object v1, Lcom/ime/framework/util/IndicatorManager;->mContext:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, "summary"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    const v1, -0x7f7f7f80

    iput v1, v0, Landroid/app/Notification;->commonValue:I

    return-void
.end method

.method private getIconDrawable(Ljava/lang/String;)I
    .locals 3

    const v0, 0x7f0202ff

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0202ff

    :goto_1
    return v0

    :sswitch_0
    const-string v2, "af"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "ar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "az"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "ca"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "cs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "da"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "de"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "en"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "es"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "et"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v2, "eu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string v2, "fi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "fr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "ga"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "gl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "ha"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "hr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "hu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "ig"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "is"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "it"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "jv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "ka"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "ko"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "lv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "lt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "ms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "nb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "nl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "pl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "pt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "ro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v2, "ru"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v2, "sk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v2, "sl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v2, "sq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v2, "sr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "st"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v2, "su"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v2, "sw"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v2, "sv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v2, "sz"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v2, "tk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v2, "tl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v2, "tr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v2, "uz"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v2, "vi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v2, "xh"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v2, "yo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v2, "zh"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v2, "zu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x33

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x7f0202f6

    goto/16 :goto_1

    :pswitch_1
    const v0, 0x7f0202f9

    goto/16 :goto_1

    :pswitch_2
    const v0, 0x7f0202fa

    goto/16 :goto_1

    :pswitch_3
    const v0, 0x7f0202fb

    goto/16 :goto_1

    :pswitch_4
    const v0, 0x7f0202fc

    goto/16 :goto_1

    :pswitch_5
    const v0, 0x7f0202fd

    goto/16 :goto_1

    :pswitch_6
    const v0, 0x7f0202fe

    goto/16 :goto_1

    :pswitch_7
    const v0, 0x7f0202ff

    goto/16 :goto_1

    :pswitch_8
    const v0, 0x7f020300

    goto/16 :goto_1

    :pswitch_9
    const v0, 0x7f020301

    goto/16 :goto_1

    :pswitch_a
    const v0, 0x7f020302

    goto/16 :goto_1

    :pswitch_b
    const v0, 0x7f020303

    goto/16 :goto_1

    :pswitch_c
    const v0, 0x7f020304

    goto/16 :goto_1

    :pswitch_d
    const v0, 0x7f020305

    goto/16 :goto_1

    :pswitch_e
    const v0, 0x7f020306

    goto/16 :goto_1

    :pswitch_f
    const v0, 0x7f020307

    goto/16 :goto_1

    :pswitch_10
    const v0, 0x7f020308

    goto/16 :goto_1

    :pswitch_11
    const v0, 0x7f020309

    goto/16 :goto_1

    :pswitch_12
    const v0, 0x7f02030a

    goto/16 :goto_1

    :pswitch_13
    const v0, 0x7f02030b

    goto/16 :goto_1

    :pswitch_14
    const v0, 0x7f02030c

    goto/16 :goto_1

    :pswitch_15
    const v0, 0x7f02030d

    goto/16 :goto_1

    :pswitch_16
    const v0, 0x7f02030e

    goto/16 :goto_1

    :pswitch_17
    const v0, 0x7f02030f

    goto/16 :goto_1

    :pswitch_18
    const v0, 0x7f020310

    goto/16 :goto_1

    :pswitch_19
    const v0, 0x7f020312

    goto/16 :goto_1

    :pswitch_1a
    const v0, 0x7f020311

    goto/16 :goto_1

    :pswitch_1b
    const v0, 0x7f020313

    goto/16 :goto_1

    :pswitch_1c
    const v0, 0x7f020314

    goto/16 :goto_1

    :pswitch_1d
    const v0, 0x7f020315

    goto/16 :goto_1

    :pswitch_1e
    const v0, 0x7f020317

    goto/16 :goto_1

    :pswitch_1f
    const v0, 0x7f020318

    goto/16 :goto_1

    :pswitch_20
    const v0, 0x7f020319

    goto/16 :goto_1

    :pswitch_21
    const v0, 0x7f02031a

    goto/16 :goto_1

    :pswitch_22
    const v0, 0x7f02031d

    goto/16 :goto_1

    :pswitch_23
    const v0, 0x7f02031e

    goto/16 :goto_1

    :pswitch_24
    const v0, 0x7f02031f

    goto/16 :goto_1

    :pswitch_25
    const v0, 0x7f020320

    goto/16 :goto_1

    :pswitch_26
    const v0, 0x7f020321

    goto/16 :goto_1

    :pswitch_27
    const v0, 0x7f020322

    goto/16 :goto_1

    :pswitch_28
    const v0, 0x7f020324

    goto/16 :goto_1

    :pswitch_29
    const v0, 0x7f020323

    goto/16 :goto_1

    :pswitch_2a
    const v0, 0x7f020325

    goto/16 :goto_1

    :pswitch_2b
    const v0, 0x7f020326

    goto/16 :goto_1

    :pswitch_2c
    const v0, 0x7f020327

    goto/16 :goto_1

    :pswitch_2d
    const v0, 0x7f020328

    goto/16 :goto_1

    :pswitch_2e
    const v0, 0x7f020329

    goto/16 :goto_1

    :pswitch_2f
    const v0, 0x7f02032a

    goto/16 :goto_1

    :pswitch_30
    const v0, 0x7f02032b

    goto/16 :goto_1

    :pswitch_31
    const v0, 0x7f02032c

    goto/16 :goto_1

    :pswitch_32
    const v0, 0x7f02032e

    goto/16 :goto_1

    :pswitch_33
    const v0, 0x7f02032f

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc25 -> :sswitch_0
        0xc31 -> :sswitch_1
        0xc39 -> :sswitch_2
        0xc5e -> :sswitch_3
        0xc70 -> :sswitch_4
        0xc7d -> :sswitch_5
        0xc81 -> :sswitch_6
        0xca9 -> :sswitch_7
        0xcae -> :sswitch_8
        0xcaf -> :sswitch_9
        0xcb0 -> :sswitch_a
        0xcc3 -> :sswitch_b
        0xccc -> :sswitch_c
        0xcda -> :sswitch_d
        0xce5 -> :sswitch_e
        0xcf9 -> :sswitch_f
        0xd0a -> :sswitch_10
        0xd0d -> :sswitch_11
        0xd1b -> :sswitch_12
        0xd1e -> :sswitch_13
        0xd2a -> :sswitch_14
        0xd2b -> :sswitch_15
        0xd4c -> :sswitch_16
        0xd56 -> :sswitch_17
        0xd64 -> :sswitch_18
        0xd88 -> :sswitch_1a
        0xd8a -> :sswitch_19
        0xda6 -> :sswitch_1b
        0xdb4 -> :sswitch_1c
        0xdbe -> :sswitch_1d
        0xdfc -> :sswitch_1e
        0xe04 -> :sswitch_1f
        0xe3d -> :sswitch_20
        0xe43 -> :sswitch_21
        0xe58 -> :sswitch_22
        0xe59 -> :sswitch_23
        0xe5e -> :sswitch_24
        0xe5f -> :sswitch_25
        0xe61 -> :sswitch_26
        0xe62 -> :sswitch_27
        0xe63 -> :sswitch_29
        0xe64 -> :sswitch_28
        0xe67 -> :sswitch_2a
        0xe77 -> :sswitch_2b
        0xe78 -> :sswitch_2c
        0xe7e -> :sswitch_2d
        0xea5 -> :sswitch_2e
        0xeb3 -> :sswitch_2f
        0xef0 -> :sswitch_30
        0xf16 -> :sswitch_31
        0xf2e -> :sswitch_32
        0xf3b -> :sswitch_33
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ime/framework/util/IndicatorManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/util/IndicatorManager;->mInstance:Lcom/ime/framework/util/IndicatorManager;

    if-nez v0, :cond_0

    sput-object p0, Lcom/ime/framework/util/IndicatorManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/ime/framework/util/IndicatorManager;->newInstance(Landroid/content/Context;)Lcom/ime/framework/util/IndicatorManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/util/IndicatorManager;->mInstance:Lcom/ime/framework/util/IndicatorManager;

    return-object v0
.end method

.method private static newInstance(Landroid/content/Context;)Lcom/ime/framework/util/IndicatorManager;
    .locals 1

    new-instance v0, Lcom/ime/framework/util/IndicatorManager;

    invoke-direct {v0, p0}, Lcom/ime/framework/util/IndicatorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ime/framework/util/IndicatorManager;->mInstance:Lcom/ime/framework/util/IndicatorManager;

    sget-object v0, Lcom/ime/framework/util/IndicatorManager;->mInstance:Lcom/ime/framework/util/IndicatorManager;

    return-object v0
.end method


# virtual methods
.method public cancelNotiForMK()V
    .locals 4

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKeyGuardScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/util/IndicatorManager;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x7f0202ff

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public notifyForMobileKeyboard(I)V
    .locals 7

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/ime/framework/util/IndicatorManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isKeyGuardScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0202ff

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/ime/framework/util/IndicatorManager;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v3, 0x0

    const v4, 0x7f0202ff

    iget-object v5, p0, Lcom/ime/framework/util/IndicatorManager;->mNotification:Landroid/app/Notification;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_0
    const v0, 0x7f020316

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0202f8

    goto :goto_1

    :pswitch_2
    const v0, 0x7f02031c

    goto :goto_1

    :pswitch_3
    const v0, 0x7f02031b

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/ime/framework/util/IndicatorManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/ime/framework/util/IndicatorManager;->getIconDrawable(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
