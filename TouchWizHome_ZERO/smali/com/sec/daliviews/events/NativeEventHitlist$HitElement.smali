.class public Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;
.super Ljava/lang/Object;
.source "NativeEventHitlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/events/NativeEventHitlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HitElement"
.end annotation


# instance fields
.field public mFlags:I

.field public mView:Lcom/sec/daliviews/views/NativeViewBase;

.field public mX:F

.field public mY:F

.field final synthetic this$0:Lcom/sec/daliviews/events/NativeEventHitlist;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/events/NativeEventHitlist;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->this$0:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iput v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mX:F

    iput v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/daliviews/events/NativeEventHitlist;Lcom/sec/daliviews/views/NativeViewBase;FFI)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->this$0:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iput p3, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mX:F

    iput p4, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mY:F

    iput p5, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;
    .locals 6

    new-instance v0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    iget-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->this$0:Lcom/sec/daliviews/events/NativeEventHitlist;

    iget-object v2, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v3, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mX:F

    iget v4, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mY:F

    iget v5, p0, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;-><init>(Lcom/sec/daliviews/events/NativeEventHitlist;Lcom/sec/daliviews/views/NativeViewBase;FFI)V

    return-object v0
.end method
