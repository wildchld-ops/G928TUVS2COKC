.class Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;
.super Landroid/os/AsyncTask;
.source "SecVideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secservice/SecVideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualCameraTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secservice/SecVideoCallManager;


# direct methods
.method private constructor <init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/secservice/SecVideoCallManager;Lcom/android/incallui/secservice/SecVideoCallManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;-><init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$600(Lcom/android/incallui/secservice/SecVideoCallManager;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setDualCameraEnable(Z)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    # getter for: Lcom/android/incallui/secservice/SecVideoCallManager;->mCSVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$600(Lcom/android/incallui/secservice/SecVideoCallManager;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsiso/vt/VTManager;->enableDualCamera(Z)V

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager$DualCameraTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
