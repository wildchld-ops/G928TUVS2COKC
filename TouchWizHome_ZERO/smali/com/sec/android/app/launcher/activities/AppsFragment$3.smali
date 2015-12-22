.class final Lcom/sec/android/app/launcher/activities/AppsFragment$3;
.super Ljava/util/LinkedHashMap;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "Inner Cube"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_INNERCUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Carousel"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CAROUSEL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Fold"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_FOLD:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
