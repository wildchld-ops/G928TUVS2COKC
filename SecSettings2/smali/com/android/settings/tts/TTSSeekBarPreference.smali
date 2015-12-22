.class public Lcom/android/settings/tts/TTSSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "TTSSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TTSSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

.field private mContext:Landroid/content/Context;

.field private mFromTouch:Z

.field private mProgress:I

.field public mTTSRateSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0401d8

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0401d8

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0401d8

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0401d8

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    const-string v1, "TTSSeekBarPreference"

    const-string v2, "onBindView called "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x1020403

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mTTSRateSeekBar:Landroid/widget/SeekBar;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mTTSRateSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mTTSRateSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    invoke-interface {v2}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->getSpeechRate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string v0, "TTSSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar changed fromTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "TTSSeekBarPreference"

    const-string v1, "mCallback is not null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->setSpeechRateNPlay(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const-string v0, "TTSSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch : mFromTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->setSpeechRateNPlay(I)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/settings/tts/TTSSeekBarPreference$Callback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    const-string v0, "TTSSeekBarPreference"

    const-string v1, "setCallback called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
