.class public Lcom/android/systemui/recents/views/DualScreenViewControl$AnimationStartedListener;
.super Ljava/lang/Object;
.source "DualScreenViewControl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/DualScreenViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationStartedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/recents/views/DualScreenViewControl;->launchTask()V

    return-void
.end method
