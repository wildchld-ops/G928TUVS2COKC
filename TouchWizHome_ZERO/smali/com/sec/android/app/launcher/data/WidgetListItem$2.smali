.class Lcom/sec/android/app/launcher/data/WidgetListItem$2;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$2;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;-><init>(Lcom/sec/android/app/launcher/data/DataItemBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method


# virtual methods
.method public onLoad()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$2;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->loadPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onPostLoad(Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->onPostLoad(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$2;->this$0:Lcom/sec/android/app/launcher/data/WidgetListItem;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->access$102(Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem$2;->mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
