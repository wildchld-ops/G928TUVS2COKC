.class Lcom/sec/android/app/launcher/activities/Accessibility$6;
.super Ljava/lang/Object;
.source "Accessibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/Accessibility;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/Accessibility;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$6;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$6;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$300(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$6;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$000(Lcom/sec/android/app/launcher/activities/Accessibility;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Content Description for SurafceWidgetView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility$6;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$300(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$6;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$300(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->requestContentDescription()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$6;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$6;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$300(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method
