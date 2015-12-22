.class Lcom/android/settings/location/LocationMode$1;
.super Landroid/os/Handler;
.source "LocationMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;
    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    # getter for: Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;
    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
