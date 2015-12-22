.class Lcom/sec/android/app/launcher/activities/HomeRealPreview$1;
.super Landroid/os/Handler;
.source "HomeRealPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeRealPreview;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    new-instance v2, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;-><init>(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Z)V

    # setter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$002(Lcom/sec/android/app/launcher/activities/HomeRealPreview;Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;)Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeRealPreview$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeRealPreview;->mCaptureTask:Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->access$000(Lcom/sec/android/app/launcher/activities/HomeRealPreview;)Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview$CaptureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x93
        :pswitch_0
    .end packed-switch
.end method
