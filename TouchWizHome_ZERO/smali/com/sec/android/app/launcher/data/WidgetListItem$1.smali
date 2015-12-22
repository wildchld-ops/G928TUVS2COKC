.class Lcom/sec/android/app/launcher/data/WidgetListItem$1;
.super Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;
.source "WidgetListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/WidgetListItem;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;-><init>(Lcom/sec/android/app/launcher/data/DataItemBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method


# virtual methods
.method public onLoad()Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    # getter for: Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->access$000(Lcom/sec/android/app/launcher/data/WidgetListItem;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    # getter for: Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->access$000(Lcom/sec/android/app/launcher/data/WidgetListItem;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/WidgetListItem;->loadPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/data/WidgetListItem;->loadPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public onPostLoad(Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->onPostLoad(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->access$102(Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    # getter for: Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->access$000(Lcom/sec/android/app/launcher/data/WidgetListItem;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setPreviewImages(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v1, v1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$1;->mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
