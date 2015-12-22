.class public Landroid/media/AudioParameter;
.super Ljava/lang/Object;
.source "AudioParameter.java"


# static fields
.field public static final AUDIO_PARAMETER_KEY_BT_AOBLE_MODE:Ljava/lang/String; = "bt_aoble_mode"

.field public static final AUDIO_PARAMETER_KEY_FINEVOLUME:Ljava/lang/String; = "fine_volume"

.field public static final AUDIO_PARAMETER_KEY_HMT_STATE:Ljava/lang/String; = "HMTstate"

.field public static final AUDIO_PARAMETER_KEY_IS_SAFE_MEDIA_VOLUME_DEVICE:Ljava/lang/String; = "SafeMediaVolumeDevice"

.field public static final AUDIO_PARAMETER_KEY_IS_USE_AUDIO:Ljava/lang/String; = "isUseAudio"

.field public static final AUDIO_PARAMETER_KEY_SET_FORCE_USE_FOR_MEDIA:Ljava/lang/String; = "setForceUseForMedia"

.field public static final AUDIO_PARAMETER_KEY_SPLITSOUND:Ljava/lang/String; = "SplitSound"

.field public static final AUDIO_PARAMETER_KEY_UHQ_BT:Ljava/lang/String; = "UHQ_BT"

.field public static final AUDIO_PARAMETER_VALUE_false:Ljava/lang/String; = "false"

.field public static final AUDIO_PARAMETER_VALUE_off:Ljava/lang/String; = "off"

.field public static final AUDIO_PARAMETER_VALUE_on:Ljava/lang/String; = "on"

.field public static final AUDIO_PARAMETER_VALUE_true:Ljava/lang/String; = "true"

.field public static final BAD_VALUE:I = -0x1

.field public static final NO_ERROR:I


# instance fields
.field private mAudioParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz p1, :cond_3

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v6, ";"

    invoke-direct {v1, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v6, "="

    invoke-direct {v2, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    iget-object v6, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v6, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v5

    goto :goto_1

    :cond_2
    move-object v4, v5

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v2, ""

    iget-object v3, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v2
.end method
