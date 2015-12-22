.class Lcom/android/incallui/secservice/SecVideoCallManager$2;
.super Ljava/lang/Object;
.source "SecVideoCallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secservice/SecVideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

.field final synthetic val$nearSurface:Landroid/view/Surface;

.field final synthetic val$varHeight:I

.field final synthetic val$varWidth:I


# direct methods
.method constructor <init>(Lcom/android/incallui/secservice/SecVideoCallManager;Landroid/view/Surface;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iput-object p2, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->val$nearSurface:Landroid/view/Surface;

    iput p3, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->val$varWidth:I

    iput p4, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->val$varHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x12c

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;
    invoke-static {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$500(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$600(Lcom/android/incallui/secservice/SecVideoCallManager;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$600(Lcom/android/incallui/secservice/SecVideoCallManager;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->val$nearSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->val$varWidth:I

    iget v3, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->val$varHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mSecVideoCall:Lcom/android/incallui/secservice/SecVideoCall;
    invoke-static {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$500(Lcom/android/incallui/secservice/SecVideoCallManager;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secservice/SecVideoCallManager$2;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v0, v0, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
