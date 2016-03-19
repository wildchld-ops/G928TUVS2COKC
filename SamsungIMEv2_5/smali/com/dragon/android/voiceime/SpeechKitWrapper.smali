.class public Lcom/dragon/android/voiceime/SpeechKitWrapper;
.super Ljava/lang/Object;
.source "SpeechKitWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;
    }
.end annotation


# static fields
.field private static final APPLY_SSL:Z = true

.field private static final DEBUG:Z = true

.field private static final LANINVALIDATE:I = -0x1

.field private static final SpeechKitAppId:Ljava/lang/String; = "SAMSUNG_DictationS4_20130415"

.field private static final SpeechKitAppId_SSL:Ljava/lang/String; = "Samsung_Android_KeyboardSSLV2_20150421"

.field private static final SpeechKitApplicationKey:[B

.field private static final SpeechKitApplicationKey_SSL:[B

.field private static final SpeechKitPort:I = 0x1bb

.field private static final SpeechKitServer:Ljava/lang/String; = "216.191.247.75"

.field private static SpeechKitSsl:Z = false

.field private static final TAG:Ljava/lang/String; = "SpeechKit"

.field private static mSpeechKitListener:Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;

.field private static sCurrentLanguage:I

.field private static sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x40

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->SpeechKitSsl:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->SpeechKitApplicationKey:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->SpeechKitApplicationKey_SSL:[B

    const/4 v0, -0x1

    sput v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I

    return-void

    nop

    :array_0
    .array-data 1
        -0xat
        -0x3et
        -0x58t
        0x4ct
        -0x52t
        -0x6ft
        0x4bt
        -0x71t
        -0x50t
        -0x64t
        0x7et
        -0x52t
        -0x70t
        0x79t
        0x5dt
        -0xct
        0x7dt
        0x36t
        0x3t
        -0x22t
        -0x28t
        0x56t
        0x3ct
        -0x48t
        0xat
        0x19t
        0x7ft
        -0x79t
        -0x6et
        0x1t
        0x1bt
        0x29t
        0x5ct
        -0x70t
        -0x51t
        -0x46t
        0x59t
        0x55t
        -0x22t
        0x3at
        0x4bt
        0x29t
        0x43t
        0x6ct
        -0x20t
        -0x4at
        -0x5dt
        0x0t
        0x2t
        0x38t
        0x61t
        -0xct
        0x6dt
        -0x79t
        0x36t
        0x36t
        -0x7ft
        0x54t
        0x20t
        -0x73t
        0x59t
        -0x4et
        -0x65t
        -0x46t
    .end array-data

    :array_1
    .array-data 1
        -0x2at
        -0x9t
        0x5ct
        0x63t
        -0x4t
        0x76t
        -0x5et
        0x6et
        -0x3t
        0x74t
        0x2ft
        -0x61t
        -0x6dt
        -0x1ft
        0x39t
        0x78t
        0x2ft
        -0x30t
        0x4bt
        -0x25t
        -0x7at
        0x35t
        -0x16t
        0x34t
        0x7dt
        0x74t
        -0x3et
        0x78t
        0x6et
        -0x2dt
        0x4dt
        0x56t
        0x67t
        -0x5at
        0x31t
        0x17t
        0x2et
        -0x5ft
        0x40t
        0x72t
        -0x16t
        -0x4bt
        0x20t
        -0x3bt
        0x36t
        0x6bt
        -0x34t
        -0x2at
        0x1dt
        -0x3et
        0x34t
        0x44t
        0x3bt
        -0x28t
        -0x31t
        0x11t
        0x56t
        -0x7dt
        -0x38t
        -0x75t
        -0x47t
        -0x3ct
        -0x66t
        0x7et
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;)Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 8

    const/4 v0, 0x0

    const-class v7, Lcom/dragon/android/voiceime/SpeechKitWrapper;

    monitor-enter v7

    :try_start_0
    sget-object v1, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    const-string v1, "SpeechKit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create() context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "216.191.247.75"

    const-string v0, "SpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sCurrentLanguage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "SpeechKit"

    const-string v1, "voice language not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "216.191.247.75"

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->SpeechKitSsl:Z

    const-string v0, "SpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Samsung_Android_KeyboardSSLV2_20150421"

    const/16 v3, 0x1bb

    sget-boolean v4, Lcom/dragon/android/voiceime/SpeechKitWrapper;->SpeechKitSsl:Z

    sget-object v5, Lcom/dragon/android/voiceime/SpeechKitWrapper;->SpeechKitApplicationKey_SSL:[B

    invoke-static/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ[B)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    sput-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->mSpeechKitListener:Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;

    invoke-interface {v0}, Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;->onSpeechKitCreate()V

    const-string v0, "SpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize sSpeechKit= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V

    const-string v0, "SpeechKit"

    const-string v1, "connect sSpeechKit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKit;->defineAudioPrompt(I)Lcom/nuance/nmdp/speechkit/Prompt;

    move-result-object v6

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v6, v3, v4}, Lcom/nuance/nmdp/speechkit/SpeechKit;->setDefaultRecognizerPrompts(Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V

    :cond_1
    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "216.191.247.75"

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "ss3-ncs-engusa-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "ss3-ncs-enggbr-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "ss3-ncs-korkor-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "ss3-ncs-cmnchn-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "ss3-ncs-yuechn-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "ss3-ncs-cmntwn-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "ss3-ncs-deudeu-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "ss3-ncs-frafra-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "ss3-ncs-itaita-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "ss3-ncs-jpnjpn-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "ss3-ncs-porbra-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "ss3-ncs-porprt-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "ss3-ncs-rusrus-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "ss3-ncs-spaesp-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "ss3-ncs-dandnk-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "ss3-ncs-finfin-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "ss3-ncs-nldnld-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "ss3-ncs-hebisr-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "ss3-ncs-thatha-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "ss3-ncs-indidn-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "ss3-ncs-vievnm-ssl.nuancemobility.net"

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "ss3-ncs-araxww-ssl.nuancemobility.net"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x61720000 -> :sswitch_16
        0x64610000 -> :sswitch_f
        0x64650000 -> :sswitch_7
        0x64654445 -> :sswitch_7
        0x656e4742 -> :sswitch_2
        0x656e5553 -> :sswitch_1
        0x65730000 -> :sswitch_e
        0x65734553 -> :sswitch_e
        0x65735553 -> :sswitch_e
        0x66690000 -> :sswitch_10
        0x66720000 -> :sswitch_8
        0x66724341 -> :sswitch_8
        0x66724652 -> :sswitch_8
        0x69640000 -> :sswitch_14
        0x69740000 -> :sswitch_9
        0x69770000 -> :sswitch_12
        0x6a610000 -> :sswitch_a
        0x6b6f0000 -> :sswitch_3
        0x6e6c0000 -> :sswitch_11
        0x70740000 -> :sswitch_b
        0x70744252 -> :sswitch_b
        0x70745054 -> :sswitch_c
        0x72750000 -> :sswitch_d
        0x74680000 -> :sswitch_13
        0x76690000 -> :sswitch_15
        0x7a68434e -> :sswitch_4
        0x7a68484b -> :sswitch_5
        0x7a685457 -> :sswitch_6
    .end sparse-switch
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v1, Lcom/dragon/android/voiceime/SpeechKitWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->release()V

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->mSpeechKitListener:Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;

    invoke-interface {v0}, Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;->onSpeechKitRelease()V

    const/4 v0, 0x0

    sput-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const/4 v0, -0x1

    sput v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCurrentLanguge()I
    .locals 1

    sget v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I

    return v0
.end method

.method public static getInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 2

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SpeechKitWrapper.create shoul be called."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    return-object v0
.end method

.method public static declared-synchronized setCurrentLanguage(I)V
    .locals 3

    const-class v1, Lcom/dragon/android/voiceime/SpeechKitWrapper;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I

    if-eq v0, p0, :cond_2

    :cond_0
    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->release()V

    sget-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->mSpeechKitListener:Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;

    invoke-interface {v0}, Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;->onSpeechKitRelease()V

    const/4 v0, 0x0

    sput-object v0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sSpeechKit:Lcom/nuance/nmdp/speechkit/SpeechKit;

    :cond_1
    sput p0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->sCurrentLanguage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setSpeechKitListener(Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;)V
    .locals 0

    sput-object p0, Lcom/dragon/android/voiceime/SpeechKitWrapper;->mSpeechKitListener:Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;

    return-void
.end method
