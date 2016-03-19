.class public final Lcom/nuance/nmsp/client/sdk/oem/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/samsung/voiceshell/VoiceEngine;


# instance fields
.field private b:J

.field private c:Z

.field private d:J

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/f;->a:Lcom/samsung/voiceshell/VoiceEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->b:J

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->c:Z

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->d:J

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->e:J

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->f:Z

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->g:Z

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->h:Z

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->i:Z

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->j:Z

    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/f;->a:Lcom/samsung/voiceshell/VoiceEngine;

    return-void
.end method

.method private static b([SI)I
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/f;->a:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/voiceshell/VoiceEngine;->processNSFrame([SI)I

    move-result v0

    return v0
.end method

.method private static c([SI)V
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/f;->a:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/voiceshell/VoiceEngine;->processDRC([SI)I

    return-void
.end method


# virtual methods
.method public final a([SI)V
    .locals 9

    const-wide/16 v2, 0x7fff

    const-wide/16 v4, -0x7fff

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/f;->b([SI)I

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/f;->c([SI)V

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->i:Z

    if-eqz v0, :cond_4

    move v7, v6

    :goto_0
    if-ge v7, p2, :cond_4

    aget-short v0, p1, v7

    int-to-long v0, v0

    const/4 v8, 0x1

    shl-long/2addr v0, v8

    cmp-long v8, v0, v2

    if-ltz v8, :cond_3

    move-wide v0, v2

    :cond_2
    :goto_1
    long-to-int v0, v0

    int-to-short v0, v0

    aput-short v0, p1, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    cmp-long v8, v0, v4

    if-gtz v8, :cond_2

    move-wide v0, v4

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->j:Z

    if-eqz v0, :cond_6

    array-length v0, p1

    shl-int/lit8 v1, v0, 0x1

    new-array v2, v1, [B

    move v0, v6

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_5

    aget-short v3, p1, v0

    shl-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, v2, v4

    shl-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->k:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->k:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string v0, "NMSP"

    const-string v1, "PCMDUMP : IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public final a(Ljava/util/Vector;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung.custom.EnableEpd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->f:Z

    :cond_0
    const-string v0, "NMSP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Samsung Custom Enable EPD : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung.ep.StartSilenceTimeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v4, v0, 0x3e80

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->e:J

    const-string v4, "NMSP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SamsungEPD startSilenceTimeout : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung.ep.InterSilenceTimeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v4, v0, 0x3e80

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->d:J

    const-string v4, "NMSP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SamsungEPD interSilenceTimeout : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung.custom.EnableNs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->g:Z

    :cond_5
    const-string v0, "NMSP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Samsung Custom Enable NS : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung.custom.EnableDrc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->h:Z

    :cond_7
    const-string v0, "NMSP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Samsung Custom Enable DRC : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung.custom.EnableAmplify"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->i:Z

    :cond_9
    const-string v0, "NMSP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Samsung Custom Enable Amplify : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung.custom.EnableDumpAudio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->j:Z

    :cond_b
    const-string v0, "NMSP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Samsung Custom Enable Dump Audio : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->f:Z

    if-eqz v0, :cond_d

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->g:Z

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->h:Z

    :cond_d
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->g:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/f;->a:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/VoiceEngine;->initializeNS()I

    move-result v0

    if-eqz v0, :cond_e

    const-string v1, "NMSP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SamsungEPD voiceEngine.initializeNS returned "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    :cond_e
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->h:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/f;->a:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/VoiceEngine;->initializeDRC()I

    move-result v0

    if-eqz v0, :cond_f

    const-string v1, "NMSP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SamsungEPD voiceEngine.initializeDRC returned "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_f
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->j:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NMSP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PCMDUMP : path : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->k:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    :goto_3
    move v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "NMSP"

    const-string v1, "PCMDUMP : FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public final a([SII)Z
    .locals 8

    const-wide/16 v6, 0x640

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, p2, [S

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-short v4, p1, v2

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne p3, v2, :cond_3

    invoke-static {p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/f;->b([SI)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->c:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->b:J

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/f;->c([SI)V

    :cond_2
    return v0

    :cond_3
    invoke-static {v3, p2}, Lcom/nuance/nmsp/client/sdk/oem/f;->b([SI)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->b:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->b:J

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->d:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    iput-wide v6, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->d:J

    :cond_5
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->c:Z

    if-eqz v2, :cond_6

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->b:J

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    :cond_6
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->c:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->b:J

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/oem/f;->e:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_7
    const-string v0, "NMSP EPD"

    const-string v2, "SamsungEPD is detected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2
.end method
