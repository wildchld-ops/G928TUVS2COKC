.class Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;
.super Landroid/os/AsyncTask;
.source "SecTabletVideoCallButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletVideoCallButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCameraTask"
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
.field final synthetic this$0:Lcom/android/incallui/SecTabletVideoCallButtonView;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SecTabletVideoCallButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;->this$0:Lcom/android/incallui/SecTabletVideoCallButtonView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SecTabletVideoCallButtonView;Lcom/android/incallui/SecTabletVideoCallButtonView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;-><init>(Lcom/android/incallui/SecTabletVideoCallButtonView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;->this$0:Lcom/android/incallui/SecTabletVideoCallButtonView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;->this$0:Lcom/android/incallui/SecTabletVideoCallButtonView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->switchCamera()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView$SwitchCameraTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
