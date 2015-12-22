.class Lcom/sec/android/app/launcher/views/WidgetListItemView$3;
.super Ljava/lang/Object;
.source "WidgetListItemView.java"

# interfaces
.implements Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/WidgetListItemView;->setUninstallView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetListItemView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView$3;->this$0:Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView$3;->this$0:Lcom/sec/android/app/launcher/views/WidgetListItemView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->access$200(Lcom/sec/android/app/launcher/views/WidgetListItemView;)Lcom/sec/daliviews/views/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/sec/daliviews/views/ImageView;->setScale(FF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView$3;->this$0:Lcom/sec/android/app/launcher/views/WidgetListItemView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->access$200(Lcom/sec/android/app/launcher/views/WidgetListItemView;)Lcom/sec/daliviews/views/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/sec/daliviews/views/ImageView;->setPosition(FFFZ)V

    return-void
.end method
