.class Lcom/sec/android/app/launcher/views/HomeItemView$2;
.super Ljava/lang/Object;
.source "HomeItemView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/HomeItemView;->getBadgeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/HomeItemView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/HomeItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->getItemId()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v0, :cond_0

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item id is invalid. getItem from tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # invokes: Lcom/sec/android/app/launcher/views/HomeItemView;->isInClosedFolder(Lcom/sec/android/app/launcher/data/HomeItem;)Z
    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$300(Lcom/sec/android/app/launcher/views/HomeItemView;Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # invokes: Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsItemView(Lcom/sec/android/app/launcher/data/HomeItem;)Z
    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$400(Lcom/sec/android/app/launcher/views/HomeItemView;Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsEditMode(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$500(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$500(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$2;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$500(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_2
    return-void
.end method
