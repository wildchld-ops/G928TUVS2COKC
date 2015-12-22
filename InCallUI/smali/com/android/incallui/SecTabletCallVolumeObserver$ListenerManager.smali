.class Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;
.super Ljava/lang/Object;
.source "SecTabletCallVolumeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletCallVolumeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerManager"
.end annotation


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method addListener(Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method onChanged(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;->onChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeListener(Lcom/android/incallui/SecTabletCallVolumeObserver$VolumeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallVolumeObserver$ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
