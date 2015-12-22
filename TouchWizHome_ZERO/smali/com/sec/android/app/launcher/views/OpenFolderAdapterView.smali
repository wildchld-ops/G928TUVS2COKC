.class public Lcom/sec/android/app/launcher/views/OpenFolderAdapterView;
.super Lcom/sec/daliviews/views/AdapterView;
.source "OpenFolderAdapterView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/AdapterView;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/OpenFolderAdapterView;->canAddViewType(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    return v0
.end method

.method public changeAdapterItemMode()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/OpenFolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/OpenFolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v2

    instance-of v4, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_2

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/OpenFolderAdapterView;->getDefaultMode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDefaultMode()I
    .locals 1

    const v0, 0x7f0b00e1

    return v0
.end method
