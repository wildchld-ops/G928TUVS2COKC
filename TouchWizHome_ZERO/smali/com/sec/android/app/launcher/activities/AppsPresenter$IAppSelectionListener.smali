.class public interface abstract Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;
.super Ljava/lang/Object;
.source "AppsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAppSelectionListener"
.end annotation


# virtual methods
.method public abstract onAppSelectionCancelled()V
.end method

.method public abstract onAppsSelected(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation
.end method
