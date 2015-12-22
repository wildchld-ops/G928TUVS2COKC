.class public Lcom/sec/daliviews/animation/AnimationSet;
.super Lcom/sec/daliviews/animation/NativeAnimation;
.source "AnimationSet.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    return-void
.end method

.method private native addAnimation(JJ)Z
.end method

.method private native start(JJ)V
.end method

.method private native stop(J)V
.end method


# virtual methods
.method public addAnimation(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/AnimationSet;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/animation/AnimationSet;->addAnimation(JJ)Z

    return-void
.end method

.method protected native create()J
.end method

.method public start(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/AnimationSet;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/AnimationSet;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/animation/AnimationSet;->start(JJ)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/AnimationSet;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/animation/AnimationSet;->stop(J)V

    return-void
.end method
