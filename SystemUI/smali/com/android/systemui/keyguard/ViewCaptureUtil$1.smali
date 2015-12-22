.class Lcom/android/systemui/keyguard/ViewCaptureUtil$1;
.super Landroid/os/AsyncTask;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/ViewCaptureUtil;->screenCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

.field final synthetic val$lockscreenCapture:Landroid/graphics/Bitmap;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->val$lockscreenCapture:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->val$lockscreenCapture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->val$lockscreenCapture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->val$savePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$100(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;->val$lockscreenCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
