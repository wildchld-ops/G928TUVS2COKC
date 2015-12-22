.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;
.super Ljava/lang/Thread;
.source "KeyguardEffectViewMassRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolThread"
.end annotation


# instance fields
.field private streamID:I

.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->streamID:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I

    move-result v4

    if-ge v1, v4, :cond_0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->streamID:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundTime:I
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-float/2addr v2, v0

    sub-float/2addr v3, v0

    goto :goto_1
.end method
