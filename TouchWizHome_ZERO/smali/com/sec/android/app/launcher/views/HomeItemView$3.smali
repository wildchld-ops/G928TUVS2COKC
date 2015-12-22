.class Lcom/sec/android/app/launcher/views/HomeItemView$3;
.super Ljava/lang/Object;
.source "HomeItemView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/HomeItemView;->inflateUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

.field final synthetic val$item:Lcom/sec/android/app/launcher/data/HomeItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/HomeItemView;Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$3;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/HomeItemView$3;->val$item:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView$3;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$3;->val$item:Lcom/sec/android/app/launcher/data/HomeItem;

    # invokes: Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsItemView(Lcom/sec/android/app/launcher/data/HomeItem;)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$400(Lcom/sec/android/app/launcher/views/HomeItemView;Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView$3;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$3;->val$item:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsEditMode(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_1
    return-void
.end method
