.class public Lcom/sec/android/app/launcher/views/HomeZeroPageView;
.super Lcom/sec/android/app/launcher/views/HomePageView;
.source "HomeZeroPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field mOnAttachedToStageListener:Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomePageView;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mOnAttachedToStageListener:Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mAttached:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/HomePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mOnAttachedToStageListener:Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mAttached:Z

    return-void
.end method


# virtual methods
.method public getOnAttachedToStageListener()Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mOnAttachedToStageListener:Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;

    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mAttached:Z

    return v0
.end method

.method protected onAttachedToStage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mOnAttachedToStageListener:Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mOnAttachedToStageListener:Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;->onAttachedToStageEvent()V

    :cond_0
    return-void
.end method

.method protected onViewAttached()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/views/HomePageView;->onViewAttached()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mAttached:Z

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/views/HomePageView;->onViewDetached()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mAttached:Z

    return-void
.end method

.method public setOnAttachedToStageListener(Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->mOnAttachedToStageListener:Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;

    return-void
.end method
