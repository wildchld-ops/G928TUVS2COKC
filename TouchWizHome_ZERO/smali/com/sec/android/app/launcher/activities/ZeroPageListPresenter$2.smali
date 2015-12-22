.class Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$2;
.super Ljava/lang/Object;
.source "ZeroPageListPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOvershootNotification(F)V
    .locals 0

    return-void
.end method

.method public onPageChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->updateFromPageChange(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->access$300(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;I)V

    # setter for: Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSavedCurrentPage:I
    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->access$402(I)I

    return-void
.end method

.method public onPageVisibilityChanged(II)V
    .locals 0

    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    return-void
.end method

.method public onScrollPreStart()V
    .locals 0

    return-void
.end method

.method public onScrollStart()V
    .locals 0

    return-void
.end method

.method public onUpdatePageIndication(I)V
    .locals 0

    # setter for: Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSavedCurrentPage:I
    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->access$402(I)I

    return-void
.end method
