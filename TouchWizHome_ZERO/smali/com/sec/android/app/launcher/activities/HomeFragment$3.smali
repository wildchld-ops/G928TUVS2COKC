.class final Lcom/sec/android/app/launcher/activities/HomeFragment$3;
.super Ljava/util/LinkedHashMap;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomeFragment;
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

    const-string v0, "Cascade"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CASCADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cube"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Inner Cube"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_INNERCUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Carousel"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CAROUSEL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Plain - No wrap"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL_NOWRAP:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Conveyor"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CONVEYOR:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Card Stack"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CARDSTACK:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Shadow"

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_SHADOW:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
