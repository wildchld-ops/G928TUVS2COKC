.class Lcom/sec/android/app/launcher/views/HomeItemView$5;
.super Ljava/lang/Object;
.source "HomeItemView.java"

# interfaces
.implements Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/HomeItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$5;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView$5;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$700(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/FixedContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    return-void
.end method
