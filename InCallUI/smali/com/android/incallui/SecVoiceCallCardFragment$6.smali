.class Lcom/android/incallui/SecVoiceCallCardFragment$6;
.super Ljava/lang/Object;
.source "SecVoiceCallCardFragment.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment;->inflateRecordInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$6;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v4

    sub-long v0, v2, v4

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment$6;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment$6;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setTTS(JLandroid/view/View;)V

    return-void
.end method
