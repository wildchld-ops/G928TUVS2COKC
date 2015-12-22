.class Lcom/sec/android/app/launcher/views/HomeItemView$1;
.super Ljava/lang/Object;
.source "HomeItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/HomeItemView;->showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$000(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$000(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/effects/GlowEffect;->apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeItemView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$000(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    # getter for: Lcom/sec/android/app/launcher/views/HomeItemView;->mOutlineDuration:F
    invoke-static {}, Lcom/sec/android/app/launcher/views/HomeItemView;->access$100()F

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/sec/daliviews/effects/GlowEffect;->setVisible(Lcom/sec/daliviews/views/NativeViewBase;ZFZ)V

    return-void
.end method
