.class final Lcom/sec/android/app/launcher/activities/HomeFragment$4;
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
        "Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "None"

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_NONE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Spotlight-Ripple"

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_LIGHTANDRIPPLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MotionBlur"

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_MOTIONBLUR:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Particle"

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_PARTICLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
