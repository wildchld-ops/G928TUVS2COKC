.class public Lcom/sec/android/app/launcher/views/ItemViewRecycler;
.super Lcom/sec/daliviews/views/ViewRecycler;
.source "ItemViewRecycler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ViewRecycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItemView(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/Item;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->createItemView(Z)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p2

    goto :goto_0
.end method
