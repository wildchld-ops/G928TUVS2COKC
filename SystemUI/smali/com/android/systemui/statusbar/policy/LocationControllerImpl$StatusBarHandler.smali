.class Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;
.super Landroid/os/Handler;
.source "LocationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$202(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method
