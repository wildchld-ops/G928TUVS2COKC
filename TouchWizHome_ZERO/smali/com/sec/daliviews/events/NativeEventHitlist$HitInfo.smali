.class public Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;
.super Ljava/lang/Object;
.source "NativeEventHitlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/events/NativeEventHitlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HitInfo"
.end annotation


# instance fields
.field public mHits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/daliviews/events/NativeEventHitlist;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/events/NativeEventHitlist;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->this$0:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    return-void
.end method
