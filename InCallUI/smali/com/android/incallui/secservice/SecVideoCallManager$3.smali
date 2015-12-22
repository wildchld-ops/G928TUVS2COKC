.class Lcom/android/incallui/secservice/SecVideoCallManager$3;
.super Ljava/lang/Object;
.source "SecVideoCallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secservice/SecVideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

.field final synthetic val$cameraSurface:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$3;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iput-object p2, p0, Lcom/android/incallui/secservice/SecVideoCallManager$3;->val$cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$3;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;
    invoke-static {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$700(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$3;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;
    invoke-static {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$700(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager$3;->val$cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method
