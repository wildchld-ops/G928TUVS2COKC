.class Lcom/sec/daliviews/utils/LayerManager$1;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/utils/LayerManager;->sortLayers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/daliviews/views/ClippedContainerView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/utils/LayerManager;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/utils/LayerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/utils/LayerManager$1;->this$0:Lcom/sec/daliviews/utils/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/daliviews/views/ClippedContainerView;Lcom/sec/daliviews/views/ClippedContainerView;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ClippedContainerView;->getLayerLocation()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/ClippedContainerView;->getLayerLocation()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/daliviews/views/ClippedContainerView;

    check-cast p2, Lcom/sec/daliviews/views/ClippedContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/daliviews/utils/LayerManager$1;->compare(Lcom/sec/daliviews/views/ClippedContainerView;Lcom/sec/daliviews/views/ClippedContainerView;)I

    move-result v0

    return v0
.end method
