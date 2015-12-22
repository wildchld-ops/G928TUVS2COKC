.class public Lcom/android/server/accessibility/SamsungScreenReader;
.super Ljava/lang/Object;
.source "SamsungScreenReader.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungScreenReader"

.field private static final STATE_DELEGATING:I = 0x2

.field private static final STATE_DETECTING:I = 0x1


# instance fields
.field private isLongPressPerformed:Z

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    new-instance v0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/SamsungScreenReader;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    const-string v0, "SamsungScreenReader"

    const-string v1, "SamsungScreenReader Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/SamsungScreenReader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    return-object v0
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    invoke-direct {p0, p1, v3, v1, p3}, Lcom/android/server/accessibility/SamsungScreenReader;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungScreenReader;->clear()V

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleMotionEventStateDetecting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->cancel()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungScreenReader;->clear()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    move-object v0, p1

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    iget v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungScreenReader;->handleMotionEventStateDetecting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungScreenReader;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
